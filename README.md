# 🚀 Infraestrutura como Código com Terraform (AWS)

Este projeto demonstra a criação de uma infraestrutura **reproduzível, versionada e destruível** utilizando Terraform na AWS, seguindo práticas reais de **Infraestrutura como Código (IaC)**.

O foco é mostrar um fluxo profissional: **plan → apply → destroy**, com uso de variáveis, outputs e organização modular.

---

# 🎯 Objetivo

* Provisionar recursos na AWS com Terraform
* Garantir reprodutibilidade e previsibilidade
* Utilizar variáveis para reutilização
* Expor informações relevantes via outputs
* Manter a infraestrutura facilmente destruível (controle de custos)

---

# 🧱 Arquitetura

Recursos provisionados:

* **EC2 (Free Tier)**: instância para testes
* **Security Group**: regras básicas de acesso

Fluxo:

```
Terraform → AWS Provider → EC2 + Security Group
```

---

# 🛠️ Stack Utilizada

* Terraform
* AWS (EC2)
* AWS CLI

---

# 📁 Estrutura do Projeto

```
project-03-terraform/
├── main.tf         # Definição dos recursos
├── variables.tf    # Variáveis reutilizáveis
├── outputs.tf      # Saídas da infraestrutura
└── README.md
```

---

# ⚙️ Pré-requisitos

* Terraform instalado
* Conta AWS (Free Tier)
* AWS CLI configurada

Configurar credenciais:

```bash
aws configure
```

---

# 🚀 Execução

## 1️⃣ Inicializar

```bash
terraform init
```

Função:

* Baixar providers
* Preparar diretório

---

## 2️⃣ Planejar

```bash
terraform plan
```

Função:

* Mostrar alterações
* Validar sintaxe

✔ Critério: execução sem erros

---

## 3️⃣ Aplicar

```bash
terraform apply
```

Função:

* Criar infraestrutura
* Exigir confirmação manual

---

# 🧨 Destruição (Controle de Custos)

```bash
terraform destroy
```

Função:

* Remover todos os recursos
* Evitar cobrança na AWS

---

# 📤 Outputs

Exemplo de uso:

```bash
terraform output
```

Permite obter:

* IP público da instância
* Informações relevantes da infra

---

# 🧠 Boas Práticas Aplicadas

* Infraestrutura declarativa
* Código versionado (Git)
* Separação de responsabilidades
* Uso de variáveis (evita hardcode)
* Infra destruível (idempotência)
* Compatível com CI/CD

---

# 🧪 Troubleshooting

### ❌ Erro de credenciais

* Verificar `aws configure`

### ❌ Provider não encontrado

* Rodar `terraform init`

### ❌ Plan falha

* Validar sintaxe (`terraform validate`)

---

# 📚 Aprendizados

* Provisionamento na AWS com Terraform
* Fluxo real de IaC
* Gerenciamento de estado
* Boas práticas para ambientes DevOps

---

# 👤 Autor

Daniel Viana
🔗 [https://github.com/danielviana2127](https://github.com/danielviana2127)

---

# ⭐ Destaque

Projeto desenvolvido com foco em práticas reais de mercado, simulando o uso de Terraform em ambientes profissionais de infraestrutura cloud.
