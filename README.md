# Barbería Alura - Proyecto GCP con Terraform

Este proyecto despliega un sitio web estático en Google Cloud Storage usando Terraform.
El objetivo es ir actualizando el sitio ahora con su back end 

## 🛠️ Tecnologías usadas

- Terraform
- Google Cloud Platform (GCP)
- Google Cloud Storage
- HTML, CSS, JS (Front-End)

## 🚀 ¿Qué hace este proyecto?

1. Crea un bucket de Cloud Storage con hosting estático.
2. Sube automáticamente todos los archivos del sitio (`website/`).
3. Configura acceso público para visualización del sitio web.
4. Define página principal (`index.html`) y página de error (`404.html`).
5. deja espacio de mejora y expansion de los servicios y recursos a usar.

## 🔐 Seguridad

- Las credenciales de GCP se gestionan mediante la **variable de entorno** `GOOGLE_APPLICATION_CREDENTIALS`.
- El archivo `.json` de la cuenta de servicio **no se incluye en este repositorio**.
- `.gitignore` protege archivos sensibles como `*.json`, `.tfstate`, `.tfvars`.

## ✅ Cómo replicar esta infraestructura

### 1. Pre-requisitos

- Tener una cuenta en [Google Cloud Platform](https://cloud.google.com/)
- Instalar:
  - [Terraform](https://developer.hashicorp.com/terraform/downloads)
  - [Google Cloud CLI (gcloud)](https://cloud.google.com/sdk/docs/install)

### 2. Crear y descargar tus credenciales GCP

- Crea una cuenta de servicio con permisos de `Storage Admin`.
- Descarga el archivo `.json` de la clave.
- Establece la variable de entorno con la ruta del archivo:

#### En Windows (PowerShell):

```powershell
$env:GOOGLE_APPLICATION_CREDENTIALS="C:\ruta\a\tu-clave.json"

```Linux /MacOS
export GOOGLE_APPLICATION_CREDENTIALS="/ruta/a/tu-clave.json"

## ✅ Inicializar y Desplegar la arquitectura 

Desde la carpeta `infra/`:

```bash
# 1. Inicializar Terraform
terraform init

# 2. Verificar los recursos a crear
terraform plan

# 3. Aplicar la infraestructura
terraform apply

## ✅ verificacion de la infraestructura

- Una vez que la infraestructura de tu sitio web estático haya sido desplegada exitosamente utilizando Terraform, podrás acceder a él a través de la siguiente URL:

`https://storage.googleapis.com/NOMBRE_DEL_BUCKET/`

**¡Importante!**

-Asegúrate de reemplazar `NOMBRE_DEL_BUCKET` con el nombre exacto de tu bucket de Cloud Storage. Este es el nombre que definiste en tu archivo `terraform.tfvars` (por ejemplo, `barberia-sitio-web-unico-2025-06`).



