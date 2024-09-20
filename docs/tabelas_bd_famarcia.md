

## Medicamentos

| Atributo           |                             Descrição                             | Domínio      | Restrição do atributo   |
| ------------------ | :---------------------------------------------------------------: | ------------ | ----------------------- |
| Id_medicamento     |                Identificador único do medicamento                 | MediumInt    | PK, AUTOINCREMENT, NOT NULL, UNIQUE |
| Nome               |                        Nome do medicamento                        | Varchar(100) | NOT NULL                |
| Descrição          | Descrição do medicamento (informações sobre o uso, dosagem, etc.) | Varchar(500) | NOT NULL                |
| Preço              |                   Preço unitário do medicamento                   | Double       | NOT NULL                |
| Quantidade_Estoque |                 Quantidade disponível no estoque                  | Int          |                         |
| Validade           |                  Data de validade do medicamento                  | Date         | NOT NULL                |
| Código_Barras      |  Código de barras do medicamento (para controle de inventário).   | Varchar(100) | NOT NULL, UNIQUE                |
| Fabricante         |                     Fabricante do medicamento                     | Varchar(100) | NOT NULL                |
| Categoria          |         Categoria ou tipo (ex.: analgésico, antibiótico)          | Varchar(100) | NOT NULL                |
| Receita_Necessária |      Indica se o medicamento requer receita médica (Sim/Não)      | Boolean      | NOT NULL                |
| id_fornecedor |      Identificador do fornecedor      | MediumInt      | NOT NULL                |



## Fornecedores


| Atributo      | Descrição                                                          | Domínio      | Restrição do atributo   |
| ------------- | ------------------------------------------------------------------ | ------------ | ----------------------- |
| id_Fornecedor | Identificador único do fornecedor                                  | Int          | PK, AUTOINCREMENT, NOT NULL, UNIQUE |
| Nome          | Nome do fornecedor                                                 | Varchar(100) | NOT NULL                |
| CNPJ          | Cadastro Nacional da Pessoa Jurídica                               | Varchar(14)  | PK, NOT NULL, UNIQUE          |
| Telefone      | Número de telefone do fornecedor                                   | Varchar(15)  | NOT NULL                |
| Email         | E-mail para contato                                                | Varchar(150) | NOT NULL                |
| Endereço      | Endereço completo do fornecedor (rua, número, cidade, estado, CEP) | Varchar(255) | NOT NULL                |
| Data_Contrato | Data de início do contrato com o fornecedor                        | Date         | NOT NULL                |
| Status        | Status do fornecedor (ativo/inativo)                               | Boolean      | NOT NULL                |



## Vendas



| Atributo            | Descrição                                                                                 | Domínio      | Restrição do atributo   |
| ------------------- | ----------------------------------------------------------------------------------------- | ------------ | ----------------------- |
| id_Venda            | Identificador único da venda                                                              | MediumInt    | PK, AUTOINCREMENT, NOT NULL, UNIQUE |
| Data_Venda          | Data e hora da venda                                                                      | DATETIME     | NOT NULL                |
| id_Cliente          | Identificador do cliente                                                                  | Int          | FK, UNIQUE                    |
| id_Produto          | Identificador do produto vendido (medicamentos, cosméticos, alimentos, etc.)              | MediumInt    | FK, NOT NULL, UNIQUE            |
| Quantidade          | Quantidade de unidades vendidas                                                           | Int          | NOT NULL                |
| Valor_Total         | Valor total da venda                                                                      | Double       | NOT NULL                |
| Desconto            | Valor ou porcentagem de desconto aplicado                                                 | Double       |                         |
| Receita_Apresentada | Indica se a receita médica foi apresentada (Sim/Não) e Aplicável apenas para medicamentos | Boolean      |                         |
| id_Farmacêutico     | Identificador do farmacêutico responsável pela venda                                      | Int          | FK, NOT NULL, UNIQUE            |
| crm     | Identificador do medico                                      | Int          | FK            |
| id_filial     | FIlial realizada a venda                                      | Int          | FK            |


## Clientes


| Atributo            | Descrição                                       | Tipo de dado | Restrição do atributo            |
| ------------------- | ----------------------------------------------- | ------------ | -------------------------------- |
| id_cliente        | Identificador único do cliente (chave primária) | INT          | PRIMARY KEY, INCREMENT, NOT NULL |
| nome              | Nome completo do cliente                        | VARCHAR(100) | NOT NULL                         |
| cpf               | Cadastro de Pessoa Física (CPF)                 | VARCHAR(11)  | NOT NULL                         |
| telefone          | Telefone de contato                             | VARCHAR(15)  | NOT NULL                         |
| email             | E-mail do cliente                               | VARCHAR(100) | NOT NULL                         |
| data_nascimento   | Data de nascimento                              | DATE         | NOT NULL                         |
| historico_compras | Histórico de compras realizadas                 | TEXT         |                                  |



## Funcionarios

| Atributo         | Descrição                                           | Domínio       | Restrição do atributo            |
| ---------------- | --------------------------------------------------- | ------------- | -------------------------------- |
| id_funcionario | Identificador único do funcionário (chave primária) | INT           | PRIMARY KEY, INCREMENT, NOT NULL |
| nome           | Nome completo do funcionário                        | VARCHAR(100)  | NOT NULL                         |
| cpf            | Cadastro de Pessoa Física (CPF)                     | VARCHAR(11)   | NOT NULL                         |
| endereco       | Endereço residencial do funcionário                 | VARCHAR(255)  | NOT NULL                         |
| telefone       | Telefone de contato                                 | VARCHAR(15)   | NOT NULL                         |
| email          | E-mail do funcionário                               | VARCHAR(100)  | NOT NULL                         |
| cargo          | Cargo que o funcionário ocupa                       | VARCHAR(50)   | NOT NULL                         |
| data_admissao  | Data de admissão na farmácia                        | DATE          | NOT NULL                         |
| salario        | Salário do funcionário                              | DECIMAL(10,2) | NOT NULL                         |
| turno          | Turno de trabalho (ex: manhã, tarde, noite)         | VARCHAR(10)   | NOY NULL                         |



## Prescrição Medica

| Atributo       | Descrição                                                                                   | Domínio      | Restrição do Atributo |
| -------------- | ------------------------------------------------------------------------------------------- | ------------ | --------------------- |
| cod_receita    | Código único que identifica o tipo de receita vinculada à prescrição médica.                | int          | not null, fk          |
| crm            | Código de Registro Médico (CRM) que identifica unicamente o médico que solicitou a receita. | char(7)      | not null, pk          |
| paciente       | Nome completo do paciente ao qual a prescrição médica se destina.                           | varchar(100) | not null              |
| prescricao     | Lista de medicamentos e suas respectivas doses prescritas pelo médico.                      | varchar(500) | not null              |
| id_funcionario | Identificador único do funcionário responsável por registrar a prescrição no sistema.       | int          | not null, FK          |
| descrição    | Descriçao da situaçao do paciente                | varchar(500)          | not null          |



### Tipo de Receita

| Atributo    | Descrição                                                                      | Domínio      | Restrição do Atributo |
| ----------- | ------------------------------------------------------------------------------ | ------------ | --------------------- |
| receita     | Tipo de receita emitida, como "controlada" ou "simples".                       | varchar(50)  | Not null              |
| cod_receita | Código único que identifica o tipo de receita, utilizado como chave primária.  | int          | not null, pk          |
| descricao   | Recomendações e observações específicas associadas ao tipo de receita emitida. | varchar(500) | not null              |



## Serviços

| Atributo        | Descrição                                                                | Domínio | Restrição do Atributo |
| --------------- | ------------------------------------------------------------------------ | ------- | --------------------- |
| cod_servico     | Código único que identifica o serviço prestado.                          | int     | fk, not null          |
| id_funcionario  | Identificador único do funcionário responsável pela prestação do serviço | int     | fk, not null          |
| data_realizacao | Data exata em que o serviço foi realizado.                               | date    | not null              |
| id_cliente      | Identificador único do cliente para quem o serviço foi prestado.         | int     | fk, not null          |



## Tipo de Serviço

| Atributo    | Descrição                                                                                    | Domínio      | Restrição do Atributo |
| ----------- | -------------------------------------------------------------------------------------------- | ------------ | --------------------- |
| servico     | Nome do serviço oferecido, como "consulta médica" ou "exame laboratorial".                   | varchar(50)  | not null              |
| cod_servico | Código único de identificação do serviço, utilizado como chave primária.                     | int          | not null, pk          |
| preco       | Valor monetário cobrado pela execução do serviço.                                            | float        | not null              |
| descricao   | Detalhamento do serviço oferecido, incluindo o que está incluso e as condições de prestação. | varchar(500) | not null              |


## hospitais

| Atributo      | Descrição                 | Dominio      | Restrição de atributo                |
| ------------- | ------------------------- | ------------ | ------------------------------------ |
| ID_Hospital   | identificador do hospital | Mediumlnt    | PK, Autoincremenrt, NOT NULL, Unique |
| Nome_Hospital | nome do hospital          | Varchar(100) | NOT NULL                             |
| Endereço      | endereço do hospital      | Varchar(200) | NOT NULL                             |


## Filiais

| Atributo      | Descrição                                                          | Domínio      | Restrição do atributo               |
| ------------- | ------------------------------------------------------------------ | ------------ | ----------------------------------- |
| id_filial     | Identificador único da filial                                      | Int          | PK, AUTOINCREMENT, NOT NULL, UNIQUE |
| Nome          | Nome da filial                                                     | Varchar(100) | NOT NULL                            |
| Endereço      | Endereço completo do fornecedor (rua, número, cidade, estado, CEP) | varchar(255) | NOT NULL                            |
| data_abertura | horario e dias de funcionamento                                    | date         | NOT NULLA                           |
| Status        | Status da filial(ativo/não ativo)                                  | Boolean      | NOT NULL                            |



