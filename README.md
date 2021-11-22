# Reporte - Grupo 3 - Desafío IV - Redes de Información
## GitHub Actions + Terraform Cloud + AWS

### Índice de contenido
1. [Setup del repositorio](#setup-del-repositorio)
2. [Configuración de Colaboradores y Secrets](#configuraci%C3%B3n-de-colaboradores-y-secrets)
3. [Creación de los archivos terraform necesarios](#creaci%C3%B3n-de-los-archivos-terraform-necesarios)
4. [Edición de los archivos terraform segun nuestros requerimientos](#comenzamos-a-editar-los-terraform-seg%C3%BAn-nuestros-requerimientos)
5. [Actualización con Git](#actualizamos-lo-modificado-con-git)
6. [Ejecución correcta de los Recursos](#ejecuci%C3%B3n-correcta-de-los-recursos)
7. [Diagrama de la Infraestructura](#diagrama-de-infraestructura)
8. [Conclusión](#conclusi%C3%B3n )

### Setup del repositorio

En primer lugar, hemos creado un repositorio en Github, cuyo commit inicial corresponde a la configuración del Github Actions que 
con tiene un workflow, configurado mediante el archivo terraform.yml, y relacionado a la ejecución de los comandos en Terraform Cloud.

Hacemos un Branch y creamos una rama nueva para poder hacer a futuro un pull request 

<img src="capturas/1.png" style="width: 30em; max-width: 100%; height: auto" title="setup_repo" />


#### Configuración del Github Actions para terraform

<img src="capturas/gh_actions_terraform.png" style="width: 30em; max-width: 100%; height: auto" title="capt_terraform.yml" />

#### Configuración de Colaboradores y Secrets 

##### Secrets 

<img src="capturas/2.png" style="width: 30em; max-width: 100%; height: auto" title="secrets" />

##### Colaboradores 

<img src="capturas/3.png" style="width: 30em; max-width: 100%; height: auto" title="colaboradores" />

#### Creación de los archivos terraform necesarios  
##### Utilizamos los archivos .tf dados

<img src="capturas/4.png" style="width: 30em; max-width: 100%; height: auto" title="archivos_terraform" />

#### Cargamos los códigos de terraform brindado por la cátedra 
##### instances.tf

<img src="capturas/5.png" style="width: 30em; max-width: 100%; height: auto" title="instances_tf" />

##### networking.tf

<img src="capturas/6.png" style="width: 30em; max-width: 100%; height: auto" title="networking_tf" />

##### output.tf

<img src="capturas/7.png" style="width: 30em; max-width: 100%; height: auto" title="output_tf" />

##### provider.tf

<img src="capturas/8.png" style="width: 30em; max-width: 100%; height: auto" title="provider_tf" />

##### security_groups.tf

<img src="capturas/9.png" style="width: 30em; max-width: 100%; height: auto" title="security_groups_tf" />

##### user-data.sh

<img src="capturas/10.png" style="width: 30em; max-width: 100%; height: auto" title="user-data_sh" />

##### variables.tf

<img src="capturas/11.png" style="width: 30em; max-width: 100%; height: auto" title="variables_tf" />

##### Creamos una variable para el Internet Gateway Id

<img src="capturas/12.png" style="width: 30em; max-width: 100%; height: auto" title="internet_gateway" />

##### Creamos una variable para el vpc1_id

<img src="capturas/13.png" style="width: 30em; max-width: 100%; height: auto" title="vpc1_id" />

#### Comenzamos a editar los terraform según nuestros requerimientos
##### VPC dada: 172.16.0.0/16
##### SubNet a crear: 172.16.3.0/28

##### networking.tf 

<img src="capturas/14.png" style="width: 30em; max-width: 100%; height: auto" title="networking_tf_2" />

##### security_groups.tf 

<img src="capturas/15.png" style="width: 30em; max-width: 100%; height: auto" title="security_groups_tf_2" />

##### variables.tf 

<img src="capturas/16.png" style="width: 30em; max-width: 100%; height: auto" title="variables_tf_2" />

##### instances.tf 

<img src="capturas/17.png" style="width: 30em; max-width: 100%; height: auto" title="instances_tf_2" />

##### output.tf 

<img src="capturas/18.png" style="width: 30em; max-width: 100%; height: auto" title="output_tf_2" />

#### Actualizamos lo modificado con Git

##### Agregamos cambios con Git add.

<img src="capturas/19.png" style="width: 30em; max-width: 100%; height: auto" title="img_git_add" />

##### Hacemos commit

<img src="capturas/20.png" style="width: 30em; max-width: 100%; height: auto" title="img_git_commit" />

##### Ejecutamos Push

<img src="capturas/21.png" style="width: 30em; max-width: 100%; height: auto" title="img_git_push" />

##### Creamos el pull request

<img src="capturas/22.png" style="width: 30em; max-width: 100%; height: auto" title="pull_request_1" />

<img src="capturas/23.png" style="width: 30em; max-width: 100%; height: auto" title="pull_request_2" />

#### Ejecución correcta de los recursos

<img src="capturas/24.png" style="width: 30em; max-width: 100%; height: auto" title="despliegue" />

### Diagrama de Infraestructura 

<img src="capturas/diagrama_de_infraestructura.png" style="width: 30em; max-width: 100%; height: auto" title="img_infra" />

### Conclusión

<p align="justify">
En este desafío hemos podido aprender de manera básica algunos elementos de la infraestructura en la nube de AWS que ha enriquecido nuestro conocimiento en cuanto a las posibilidades que nos brinda la IaaS (infrastructure as a Service). También las ventajas de gestionar la infraestructura como código (IaC). 
Al desarrollar los requerimientos afianzamos los conocimientos adquiridos a lo largo de la materia, específicamente en el área de subnetting. 
Para mejorar la disponibilidad, podemos configurar un ELB (Elastic Load Balancer) de tipo ALB(Application Load Balancer), que pueda balancear la carga entre dos o más zonas de disponibilidad, donde en cada zona podríamos tener una configuración similar en cuanto a VPC y Subred, a las cuales tendremos vinculadas instancias de EC2.
En cuanto a la seguridad, una mejora consiste en utilizar un host bastión, al que las personas se conectarían por medio de ssh,  exclusivamente mediante una VPN. De esta manera reducimos drásticamente la superficie de ataque.
Otra mejora puede basarse en limitar la cantidad de conexiones abiertas o generadas en un lapso de tiempo para un host. También limitar las IP que pueden abrir sesiones de SSH o hacer peticiones HTTP.
</p>







