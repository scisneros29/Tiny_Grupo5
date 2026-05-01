<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

### Documentos del proyecto

| Documento | Descripción | Uso Principal |
|-----------|-------------|---------------|
| **[ Banco de Memoria](src/mem_bank.sv)** | Módulo del banco de memoria | Almacenamiento de datos y lógica de lectura/escritura mediante enables |
| **[ TOP](src/project.v)** | Módulo top del banco de memoria | Interfaz que permite las conexiones con el simulador para realizar las pruebas de GDS |

El proyecto consiste de un banco de memoria nombrado "tt_um_BCR" que permite almacenar 8 datos de 8 bits cada uno, estos pueden ser accesados mediante las entradas (enables) "we" y "re", dando una mayor facilidad ya que la lectura y escritura son independientes.

# Uso de celdas por categoría

| Category | Cells | Count |
|---------------|----------|-------|
|Fill | [decap](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/decap/README.html) [fill](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/fill/README.html) | 3244|
|Tap | [tapvpwrvgnd](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/tapvpwrvgnd/README.html) | 225|
|Misc | [dlygate4sd3](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/dlygate4sd3/README.html) [conb](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/conb/README.html) | 80|
|Flip Flops | [dfrtp](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/dfrtp/README.html) | 72|
|Multiplexer | [mux2](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/mux2/README.html) | 64|
|Combo Logic | [and3b](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/and3b/README.html) [nor3b](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/nor3b/README.html) [a22o](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/a22o/README.html) [a221o](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/a221o/README.html) [o21a](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/o21a/README.html) [and4b](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/and4b/README.html) [or4b](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/or4b/README.html) [and4bb](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/and4bb/README.html) | 57|
|Clock | [clkdlybuf4s25](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/clkdlybuf4s25/README.html) | 31|
|Buffer | [clkbuf](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/clkbuf/README.html) [buf](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/buf/README.html) | 18|
|OR | [or3](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/or3/README.html) [or4](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/or4/README.html) | 9|
|AND | [and2](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/and2/README.html) [and3](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/and3/README.html) [and4](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/and4/README.html) | 5|
|NOR | [nor2](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/nor2/README.html) [nor3](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/nor3/README.html) | 2|
|Inverter | [inv](https://skywater-pdk.readthedocs.io/en/main/contents/libraries/sky130_fd_sc_hd/cells/inv/README.html) | 1|
## 339 total cells (excluding fill and tap cells)

# 2D Preview
![png](https://scisneros29.github.io/Tiny_Grupo5/gds_render.png)

## How to test

Explain how to use your project

## External hardware

List external hardware used in your project (e.g. PMOD, LED display, etc), if any
