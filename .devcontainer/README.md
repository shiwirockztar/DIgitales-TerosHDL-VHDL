# Devcontainer

Este contenedor instala herramientas basicas para trabajar con VHDL y proyectos de hardware.

## Herramientas instaladas

- ghdl: simulador/compilador VHDL para analizar y correr testbenches.
- gtkwave: visor de formas de onda (archivos .vcd/.ghw) para depurar simulaciones.
- build-essential: compiladores y utilidades de build (gcc/make) usados por varias dependencias.
- git: control de versiones para clonar y manejar el repo dentro del contenedor.
- git-lfs: soporte de Large File Storage si el repo usa archivos binarios grandes.

Si no necesitas simulacion ni visualizacion de ondas, y el repo no usa LFS, se pueden quitar ghdl/gtkwave/git-lfs.
