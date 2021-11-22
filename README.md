# Reporte - Grupo 3 - Desafío IV - Redes de Información
## GitHub Actions + Terraform Cloud + AWS

### Índice de contenido
1. [Setup del repositorio](https://github.com/frankville/redes_grupo3_desaf4_2021/tree/readme#setup-del-repositorio)
2. [Configuración de Colaboradores y Secrets](https://github.com/frankville/redes_grupo3_desaf4_2021/blob/readme/README.md#configuraci%C3%B3n-de-colaboradores-y-secrets)
3. [Creación de los archivos terraform necesarios](https://github.com/frankville/redes_grupo3_desaf4_2021/blob/readme/README.md#creaci%C3%B3n-de-los-archivos-terraform-necesarios)
4. [Edición de los archivos terraform segun nuestros requerimientos](https://github.com/frankville/redes_grupo3_desaf4_2021/blob/readme/README.md#comenzamos-a-editar-los-terraform-seg%C3%BAn-nuestros-requerimientos)
5. [Actualización con Git](https://github.com/frankville/redes_grupo3_desaf4_2021/blob/readme/README.md#actualizamos-lo-modificado-con-git)
6. [Ejecución correcta de los Recursos](https://github.com/frankville/redes_grupo3_desaf4_2021/blob/readme/README.md#ejecuci%C3%B3n-correcta-de-los-recursos)
7. [Diagrama de la Infraestructura](https://github.com/frankville/redes_grupo3_desaf4_2021/blob/readme/README.md#diagrama-de-infraestructura)
8. [Conclusión](https://github.com/frankville/redes_grupo3_desaf4_2021/blob/readme/README.md#conclusi%C3%B3n )

### Setup del repositorio

En primer lugar, hemos creado un repositorio en Github, cuyo commit inicial corresponde a la configuración del Github Actions que 
con tiene un workflow, configurado mediante el archivo terraform.yml, y relacionado a la ejecución de los comandos en Terraform Cloud.

Hacemos un Branch y creamos una rama nueva para poder hacer a futuro un pull request 

<img src="https://drive.google.com/uc?export=view&id=1kK2lD7rfCZiVn3ORRssH_5vbOCniT1v8" style="width: 30em; max-width: 100%; height: auto" title="setup_repo" />


#### Configuración del Github Actions para terraform

<img src="https://drive.google.com/uc?export=view&id=16vrmjix50CPoyPL5aIUOaI-Cd8jdPYbt" style="width: 30em; max-width: 100%; height: auto" title="capt_terraform.yml" />

#### Configuración de Colaboradores y Secrets 

##### Secrets 

<img src="https://drive.google.com/uc?export=view&id=1dVI_n1daaxGx8EpSiSDKnMW2Hy7oiSnD" style="width: 30em; max-width: 100%; height: auto" title="secrets" />

##### Colaboradores 

<img src="https://drive.google.com/uc?export=view&id=1dCAJ7VjyFGn5otGuiE1NyzeZJhnNnuVV" style="width: 30em; max-width: 100%; height: auto" title="colaboradores" />

#### Creación de los archivos terraform necesarios  
##### Utilizamos los archivos .tf dados

<img src="https://drive.google.com/uc?export=view&id=1tIL04dcNhjp-3KVy0khPHOXIl8pNxZY_" style="width: 30em; max-width: 100%; height: auto" title="archivos_terraform" />

#### Cargamos los códigos de terraform brindado por la cátedra 
##### instances.tf

<img src="https://drive.google.com/uc?export=view&id=1gZcKHCJ6zsi6WN7pmi9VsZs_p1_K2QCH" style="width: 30em; max-width: 100%; height: auto" title="instances_tf" />

##### networking.tf

<img src="https://drive.google.com/uc?export=view&id=1uPFnlrevCisk7vrIQeBczISKV25CSqCi" style="width: 30em; max-width: 100%; height: auto" title="networking_tf" />

##### output.tf

<img src="https://drive.google.com/uc?export=view&id=1jTh2R8p3fJbaOSxD7F00SzQIB7pPA736" style="width: 30em; max-width: 100%; height: auto" title="output_tf" />

##### provider.tf

<img src="https://drive.google.com/uc?export=view&id=12xYJJUaYEAQdkFPgXRdugT6dqJ-Pb0jT" style="width: 30em; max-width: 100%; height: auto" title="provider_tf" />

##### security_groups.tf

<img src="https://drive.google.com/uc?export=view&id=11-KbEShZzAVdq-_xdpVtkDm3Himb-vl1" style="width: 30em; max-width: 100%; height: auto" title="security_groups_tf" />

##### user-data.sh

<img src="https://drive.google.com/uc?export=view&id=1UiCyYb4WMa4CvCU6AQRC4H0NoC_qVqv5" style="width: 30em; max-width: 100%; height: auto" title="user-data_sh" />

##### variables.tf

<img src="https://drive.google.com/uc?export=view&id=1ucQWutb3R9Axaz4rURRa_b-QzSUZDyZI" style="width: 30em; max-width: 100%; height: auto" title="variables_tf" />

##### Creamos una variable para el Internet Gateway Id

<img src="https://drive.google.com/uc?export=view&id=1DxINbRI45i_a0sPEGuAUmj0uyyeUyoXY" style="width: 30em; max-width: 100%; height: auto" title="internet_gateway" />

##### Creamos una variable para el vpc1_id

<img src="https://drive.google.com/uc?export=view&id=1utuajYyGBPUUE-NssssZWOtZHfxLPmY7" style="width: 30em; max-width: 100%; height: auto" title="vpc1_id" />

#### Comenzamos a editar los terraform según nuestros requerimientos
##### VPC dada: 172.16.0.0/16
##### SubNet a crear: 172.16.3.0/28

##### networking.tf 

<img src="https://drive.google.com/uc?export=view&id=1E8GpClfopNHVTOhMwhPl5cJ4pX8oEYGy" style="width: 30em; max-width: 100%; height: auto" title="networking_tf_2" />

##### security_groups.tf 

<img src="https://drive.google.com/uc?export=view&id=1cn9VXZ--4LO-EmJyikjTAf44ZbnF5U1N" style="width: 30em; max-width: 100%; height: auto" title="security_groups_tf_2" />

##### variables.tf 

<img src="https://drive.google.com/uc?export=view&id=1JUqzv6fTz594KbkVwwlbQmg4AZOa13A0" style="width: 30em; max-width: 100%; height: auto" title="variables_tf_2" />

##### instances.tf 

<img src="https://drive.google.com/uc?export=view&id=1WCn66wGE8D5teK6FmhlTwF42y5s0yDzA" style="width: 30em; max-width: 100%; height: auto" title="instances_tf_2" />

##### output.tf 

<img src="https://drive.google.com/uc?export=view&id=12HgL5uO2mpSdfbgbG4PCrbleVaOxhFHO" style="width: 30em; max-width: 100%; height: auto" title="output_tf_2" />

#### Actualizamos lo modificado con Git

##### Agregamos cambios con Git add.

<img src="https://drive.google.com/uc?export=view&id=1zbJElMpVJcnjlKScFlTlWkp9hIMPBKuc" style="width: 30em; max-width: 100%; height: auto" title="img_git_add" />

##### Hicimos un commit

<img src="https://drive.google.com/uc?export=view&id=1OUMQOgIt7sFN5LIRnfAkSsiGWwFYdGiE" style="width: 30em; max-width: 100%; height: auto" title="img_git_commit" />

##### Hicimos un Push

<img src="https://drive.google.com/uc?export=view&id=1d6THNzn_vISr00fKXFLLi5cDh6D8pgcQ" style="width: 30em; max-width: 100%; height: auto" title="img_git_push" />

##### Creamos el pull request

<img src="https://drive.google.com/uc?export=view&id=1J7cEsCsL2_oxq9UuNwAYmc_XMTrmIfXT" style="width: 30em; max-width: 100%; height: auto" title="pull_request_1" />

<img src="https://drive.google.com/uc?export=view&id=1Zw4awGLyH19vdKuacBXOH18qV3w4A5FP" style="width: 30em; max-width: 100%; height: auto" title="pull_request_2" />

#### Ejecución correcta de los recursos

<img src="https://drive.google.com/uc?export=view&id=1LnYj31bEVu4nFHA3rPns0yApODUksf3d" style="width: 30em; max-width: 100%; height: auto" title="despliegue" />

### Diagrama de Infraestructura 

<img src="https://drive.google.com/uc?export=view&id=12M-3xOGAxF7TW32oBQNBCvM3LuGHFuGA" style="width: 30em; max-width: 100%; height: auto" title="img_infra" />

### Conclusión

<p align="justify">
En este desafío hemos podido aprender de manera básica algunos elementos de la infraestructura en la nube de AWS que ha enriquecido nuestro conocimiento en cuanto a las posibilidades que nos brinda la IaaS (infrastructure as a Service). También las ventajas de gestionar la infraestructura como código (IaC). 
Al desarrollar los requerimientos afianzamos los conocimientos adquiridos a lo largo de la materia, específicamente en el área de subnetting. 
Para mejorar la disponibilidad, podemos configurar un ELB (Elastic Load Balancer) de tipo ALB(Application Load Balancer), que pueda balancear la carga entre dos o más zonas de disponibilidad, donde en cada zona podríamos tener una configuración similar en cuanto a VPC y Subred, a las cuales tendremos vinculadas instancias de EC2.
En cuanto a la seguridad, una mejora consiste en utilizar un host bastión, al que las personas se conectarían por medio de ssh,  exclusivamente mediante una VPN. De esta manera reducimos drásticamente la superficie de ataque.
Otra mejora puede basarse en limitar la cantidad de conexiones abiertas o generadas en un lapso de tiempo para un host. También limitar las IP que pueden abrir sesiones de SSH o hacer peticiones HTTP.
</p>







