 helloworld-terraform

Pré-requisitos

- Ter o Terraform instalado;
- Ter o AWS CLI instalado;
 
 AWS

- region: Região onde os serviços serão provisionados (Obrigatório);
- provider: Provedor onde os serviços serão provisionados. (Obrigatório);
- key_name: Chave utilizada para acessar a instância via ssh e já deve estar provisionada (Obrigatório);
- vpc_security_group_ids: Associa a instância ao security group para acesso da máquina (Obrigatório);
- instance_type: Define o tipo da instância (Obrigatório);
- availability_zone: Define a Zona da Disponibilidade onde a instância será criada (Opcional);
- user_data: Script de instalação do HTTP para que o index seja carregado na página (Obrigatório);
 Procedimento de execução

- logar na aws-cli aws configure
- Entrar com sua access key (precisa ter permissão para criar os recursos)
 
 Clonar o repositório

- git clone https://github.com/valcann-onboarding/helloworld-terraform
 
 Executar os comandos do terraform

- terraform init (Inicializa e configura o terraform no diretório do projeto)
- terraform plan (Cria um plano de execução e permite visualizar as alterações que o terraform irá fazer em sua infraestrutura)
- terraform apply (Comando executa as ações propostas em um plano do Terraform)
