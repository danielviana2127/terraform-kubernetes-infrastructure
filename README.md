# Projeto 03 — Infraestrutura como Código com Terraform

## 🎯 Objetivo

Criar uma infraestrutura **declarativa, reproduzível e explicável** utilizando Terraform, seguindo boas práticas de Infraestrutura como Código (IaC).

Este projeto demonstra como provisionar e destruir recursos de forma controlada, versionada e previsível.

---

## 🧱 Infraestrutura criada

Neste projeto, o Terraform é responsável por criar:

* ✅ **1 instância EC2 simples (Free Tier)**
* ✅ **Security Group** permitindo acesso básico
* ✅ Uso de **variáveis** para reutilização
* ✅ **Outputs** para exibir informações importantes

> A infraestrutura foi pensada para funcionar dentro do **AWS Free Tier**, evitando custos.

---

## 🗂 Estrutura do projeto

```
project-03-terraform/
├── main.tf         # Recursos principais da infraestrutura
├── variables.tf    # Variáveis reutilizáveis
├── outputs.tf      # Saídas do Terraform
├── README.md       # Documentação do projeto
```

---

## 🔄 Fluxo Terraform: plan → apply

### 1️⃣ Inicializar o Terraform

```bash
terraform init
```

* Baixa os providers necessários
* Prepara o diretório de trabalho

### 2️⃣ Verificar o plano de execução

```bash
terraform plan
```

* Mostra **exatamente** o que será criado
* Nenhum recurso é alterado neste passo
* Critério do projeto: **plan limpo, sem erros**

### 3️⃣ Aplicar a infraestrutura

```bash
terraform apply
```

* Cria os recursos declarados
* Confirmação manual para segurança

---

## 🧨 Como destruir a infraestrutura

Para remover **todos os recursos criados**:

```bash
terraform destroy
```

* Elimina a infraestrutura com segurança
* Evita custos desnecessários
* Garante ambiente limpo após testes

---

## ✅ Boas práticas utilizadas

✔ Infraestrutura declarativa

✔ Código versionável (Git)

✔ Separação de responsabilidades:

* `main.tf` → recursos
* `variables.tf` → configuração
* `outputs.tf` → informações finais

✔ Uso de variáveis ao invés de valores fixos

✔ Infra destruível sem erros

✔ Compatível com CI/CD futuramente

---

## 📌 Requisitos

* Terraform instalado
* Conta AWS (Free Tier)
* AWS CLI configurada

---

## 🏁 Critérios de conclusão atendidos

✔ `terraform plan` sem erros

✔ `terraform apply` funcional

✔ Infra criada e destruída com sucesso

---

## 👤 Autor

**Daniel Viana**
GitHub: [https://github.com/danielviana2127](https://github.com/danielviana2127)

---

📚 Projeto educacional com foco em **DevOps e Infraestrutura como Código**
