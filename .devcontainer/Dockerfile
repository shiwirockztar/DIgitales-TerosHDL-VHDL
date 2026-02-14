FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

# Instalar herramientas VHDL
RUN apt-get update && apt-get install -y \
    ghdl \
    gtkwave \
    build-essential \
    git \
    git-lfs \
    && rm -rf /var/lib/apt/lists/*

# Configurar el entorno
ENV PATH="/usr/local/bin:${PATH}"
