# 🚀 Terraform Docker Infrastructure

Projeto de Infraestrutura como Código (IaC) utilizando Terraform para provisionamento automatizado de recursos Docker.

O projeto demonstra práticas modernas de automação de infraestrutura utilizando Terraform Provider Docker, permitindo criar ambientes reproduzíveis, versionados e facilmente gerenciáveis.

---

# 🧪 Projeto 100% Funcional

Este projeto foi executado localmente e demonstra:

* Provisionamento automatizado com Terraform
* Criação de network Docker
* Download automático de imagens Docker
* Provisionamento de containers
* Uso de variáveis reutilizáveis
* Outputs automatizados
* Infraestrutura declarativa
* Idempotência

---

# 📌 Visão Geral

O objetivo deste projeto é demonstrar como utilizar Terraform para automatizar infraestrutura containerizada utilizando Docker Provider.

A infraestrutura provisiona automaticamente:

* Docker Network
* Imagem Nginx
* Container Nginx
* Exposição de portas
* Comunicação entre recursos

Tudo é gerenciado de forma declarativa através do Terraform.

---

# 🧱 Arquitetura

```text
Terraform
    ↓
Docker Provider
    ↓
Docker Network
    ↓
Nginx Container
```

---

# ⚙️ Tecnologias Utilizadas

* Terraform
* Docker
* Docker Provider (kreuzwerker/docker)
* Linux
* Infrastructure as Code (IaC)

---

# 📦 Estrutura do Projeto

```text
terraform-docker-infrastructure/
│
├── main.tf
├── variables.tf
├── outputs.tf
├── .terraform.lock.hcl
├── README.md
│
└── .terraform/
    └── providers/
```

---

# ⚙️ Recursos Provisionados

## Docker Network

Criação automática de uma network Docker dedicada para comunicação entre containers.

---

## Docker Image

Download automático da imagem oficial Nginx.

---

## Docker Container

Provisionamento automatizado de container Nginx utilizando:

* Port mapping
* Docker network
* Infraestrutura declarativa

---

# 🛠️ Variáveis Utilizadas

O projeto utiliza variáveis para maior reutilização e flexibilidade.

## Exemplos

```hcl
variable "network_name" {
  default = "app-network"
}

variable "image_name" {
  default = "nginx:latest"
}

variable "container_name" {
  default = "nginx-container"
}

variable "external_port" {
  default = 8080
}
```

---

# 📤 Outputs

O projeto expõe informações relevantes após o provisionamento.

## Exemplos

```bash
terraform output
```

Possíveis saídas:

* Nome do container
* IP do container
* Informações da infraestrutura

---

# ⚙️ Pré-requisitos

Antes de executar:

* Terraform instalado
* Docker instalado
* Docker daemon em execução

Verificar versões:

```bash
terraform version
docker --version
```

---

# 🚀 Execução do Projeto

## 1️⃣ Inicializar Terraform

```bash
terraform init
```

Função:

* Download dos providers
* Inicialização do ambiente Terraform
* Preparação do diretório local

---

## 2️⃣ Validar Configuração

```bash
terraform validate
```

Função:

* Validar sintaxe
* Garantir integridade da configuração

---

## 3️⃣ Planejar Infraestrutura

```bash
terraform plan
```

Função:

* Mostrar alterações antes da aplicação
* Simular provisionamento
* Validar recursos criados

---

## 4️⃣ Aplicar Infraestrutura

```bash
terraform apply
```

Função:

* Criar network Docker
* Baixar imagem Nginx
* Provisionar container

---

## 5️⃣ Destruir Infraestrutura

```bash
terraform destroy
```

Função:

* Remover todos os recursos provisionados
* Garantir limpeza completa do ambiente

---

# 🧠 Conceitos Demonstrados

Este projeto demonstra conhecimentos em:

* Infrastructure as Code (IaC)
* Terraform Providers
* Terraform Resources
* Terraform Variables
* Terraform Outputs
* Idempotência
* Docker Networking
* Provisionamento automatizado
* Containers
* Infraestrutura declarativa

---

# 🛠️ Troubleshooting

## ❌ Provider não encontrado

Executar:

```bash
terraform init
```

---

## ❌ Docker daemon não iniciado

Verificar status do Docker:

```bash
systemctl status docker
```

---

## ❌ Terraform validation falha

Executar:

```bash
terraform validate
```

---

## ❌ Container não inicia

Verificar containers Docker:

```bash
docker ps -a
```

---

# 📚 Lessons Learned

Principais conhecimentos adquiridos durante o projeto:

* Provisionamento declarativo com Terraform
* Uso de Docker Provider
* Automação de containers
* Gerenciamento de infraestrutura local
* Terraform state management
* Idempotência
* Reprodutibilidade de ambientes
* Provisionamento automatizado
* Networking Docker

---

# 🎯 Objetivo do Projeto

Demonstrar conhecimento prático em:

* Terraform
* Docker
* Infrastructure as Code
* Automação de infraestrutura
* Provisionamento declarativo
* Containers
* DevOps

---

# 📸 Evidências Recomendadas

Adicionar screenshots de:

* terraform init
* terraform plan
* terraform apply
* docker ps
* container Nginx funcionando
* terraform destroy

---

# 👨‍💻 Autor

Daniel Viana
