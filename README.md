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

## ✅ Cómo usar

Desde la carpeta `infra/`:

```bash
# 1. Inicializar Terraform
terraform init

# 2. Verificar los recursos a crear
terraform plan

# 3. Aplicar la infraestructura
terraform apply
