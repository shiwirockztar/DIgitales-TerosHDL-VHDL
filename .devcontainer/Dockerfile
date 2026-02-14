FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

# Instalar herramientas VHDL
RUN apt-get update && apt-get install -y \
    gtkwave \
    yosys \
    yosys-dev \
    build-essential \
    gnat \
    pkg-config \
    bison \
    flex \
    libreadline-dev \
    zlib1g-dev \
    python3-pip \
    git \
    git-lfs \
    && rm -rf /var/lib/apt/lists/*

# Construir GHDL desde fuente (sintesis habilitada por defecto)
RUN git clone --depth 1 https://github.com/ghdl/ghdl.git /tmp/ghdl \
    && cd /tmp/ghdl \
    && ./configure --prefix=/usr/local \
    && make -j"$(nproc)" \
    && make install \
    && rm -rf /tmp/ghdl

# Construir e instalar ghdl-yosys-plugin (habilita VHDL en yosys)
RUN git clone --depth 1 https://github.com/ghdl/ghdl-yosys-plugin.git /tmp/ghdl-yosys-plugin \
    && cd /tmp/ghdl-yosys-plugin \
    && make \
    && make install \
    && rm -rf /tmp/ghdl-yosys-plugin

# Dependencia para el grafo de dependencias de TerosHDL
RUN python3 -m pip install --no-cache-dir --break-system-packages vunit_hdl

# TerosHDL busca el binario yowasp-yosys; cargamos el plugin ghdl en yosys
RUN printf '%s\n' '#!/usr/bin/env sh' 'exec yosys -m ghdl "$@"' > /usr/local/bin/yowasp-yosys \
    && chmod +x /usr/local/bin/yowasp-yosys

# Asegurar que yosys encuentre el plugin en la ruta esperada
RUN mkdir -p /usr/lib/yosys/plugins \
    && ln -sf /usr/share/yosys/plugins/ghdl.so /usr/lib/yosys/plugins/ghdl.so

# Configurar el entorno
ENV PATH="/usr/local/bin:${PATH}"
