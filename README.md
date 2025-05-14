# 🚀 Terraform EKS

Este projeto provisiona um cluster Kubernetes completo na AWS usando o EKS (Elastic Kubernetes Service), com suporte a grupos de nós gerenciados, rede dedicada e controlador de Load Balancer.

---

## 🧱 Estrutura do Projeto

O projeto utiliza módulos organizados da seguinte forma:

- **`eks_cluster`** – Cria o cluster EKS.
- **`eks_managed_node_group`** – Provisiona grupos de nós gerenciados.
- **`eks_network`** – Cria a VPC e subnets necessárias.
- **`eks_aws_load_balancer_controller`** – Instala o controlador de Load Balancer via Helm.

---

## 📦 Requisitos

| Nome       | Versão mínima |
|------------|----------------|
| AWS        | >= 5.0         |
| Helm       | >= 2.15.0      |
| Kubernetes | >= 2.3.2       |

Certifique-se de que seu ambiente possui o Terraform e os plugins compatíveis.

---

## ⚙️ Inputs

| Nome               | Descrição                                             | Tipo           | Default         | Obrigatório |
|--------------------|-------------------------------------------------------|----------------|------------------|-------------|
| `cidr_block`       | Bloco CIDR da VPC                                     | `string`       | n/a              | ✅           |
| `instance_types`   | Lista de tipos de instância EC2 para os nós          | `list(string)` | `["t3.large"]`   | ❌           |
| `kubernetes_version` | Versão do Kubernetes                                | `string`       | `"1.30"`         | ❌           |
| `project_name`     | Nome do projeto (usado como prefixo em recursos)     | `string`       | n/a              | ✅           |
| `region`           | Região AWS onde o cluster será criado                | `string`       | n/a              | ✅           |
| `tags`             | Mapa de tags aplicadas a todos os recursos           | `map(any)`     | n/a              | ✅           |

---

## 📤 Outputs

| Nome                  | Descrição                          |
|-----------------------|------------------------------------|
| `certificate_authority` | Autoridade do cluster             |
| `eks_vpc_config`        | Configurações da VPC do EKS       |
| `endpoint`              | Endpoint do cluster               |
| `oidc`                  | OIDC Provider URL do cluster      |
| `subnet_priv_1a`        | Subnet privada 1a                 |
| `subnet_priv_1b`        | Subnet privada 1b                 |
| `subnet_pub_1a`         | Subnet pública 1a                 |
| `subnet_pub_1b`         | Subnet pública 1b                 |

---

## ▶️ Como usar

1. Clone o repositório:
```bash
git clone https://github.com/seu-usuario/terraform_eks.git
cd terraform_eks
```

2. Inicialize o Terraform:
```bash
terraform init
```

3. Crie um arquivo `terraform.tfvars` com os valores desejados:
```hcl
project_name     = "meu-projeto"
region           = "us-east-1"
cidr_block       = "10.0.0.0/16"
tags             = {
  Owner = "Diego"
  Environment = "Dev"
}
```

4. Aplique o plano:
```bash
terraform apply
```

---

## 📝 Observações

- O cluster é provisionado com suporte a OIDC, facilitando a integração com IRSA.
- O ALB Controller é implantado via Helm, utilizando o `aws-load-balancer-controller`.

---

## 📚 Referências

- [Documentação Oficial do EKS](https://docs.aws.amazon.com/eks/latest/userguide/what-is-eks.html)
- [Terraform AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
