# TerosHDL config

Este directorio guarda configuraciones persistentes para TerosHDL en Codespaces.

## Archivos

- teroshdl.yaml: proyecto principal con fuentes VHDL y backend "yosys_ghdl".
- teroshdl2_prj.json: copia de la base de proyectos de TerosHDL.

## Codespaces

En la creacion del contenedor, se copia `teroshdl2_prj.json` a `/root/.teroshdl2_prj.json`
por medio de `postCreateCommand` en `.devcontainer/devcontainer.json`.
