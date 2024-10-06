

## Medicamento

| Atributo           | Descrição                                                          | Tipo de Dado   | Restrição do Atributo                  |
| ------------------ | ------------------------------------------------------------------ | -------------- | -------------------------------------- |
| Id_Medicamento     | Identificador único do medicamento                                 | INT            | PRIMARY KEY, AUTOINCREMENT, NOT NULL   |
| Nome               | Nome do medicamento                                                | VARCHAR(100)   | NOT NULL                              |
| Descrição          | Descrição do medicamento (informações sobre o uso, dosagem, etc.)  | VARCHAR(500)   | NOT NULL                              |
| Preço              | Preço unitário do medicamento                                      | DECIMAL(10, 2) | NOT NULL                              |
| Quantidade_Estoque | Quantidade disponível no estoque                                   | INT            | NOT NULL                              |
| Validade           | Data de validade do medicamento                                    | DATE           | NOT NULL                              |
| Código_Barras      | Código de barras do medicamento (para controle de inventário)       | VARCHAR(100)   | NOT NULL, UNIQUE                      |
| Id_Fabricante      | Identificador do fabricante do medicamento                         | INT            | FOREIGN KEY (Fabricante do Medicamento), NOT NULL |
| Id_Categoria       | Identificador da categoria do medicamento                          | INT            | FOREIGN KEY (Categoria do Medicamento), NOT NULL |
| Receita_Necessária | Indica se o medicamento requer receita médica (Sim/Não)            | BOOLEAN        | NOT NULL                              |
| Id_Fornecedor      | Identificador do fornecedor do medicamento                         | INT            | FOREIGN KEY (Fornecedores), NOT NULL |


## Fabricante do Medicamento

| Atributo         | Descrição                                    | Tipo de Dado  | Restrição do Atributo                  |
| ---------------- | -------------------------------------------- | ------------- | -------------------------------------- |
| Id_Fabricante    | Identificador único do fabricante            | INT           | PRIMARY KEY, AUTOINCREMENT, NOT NULL   |
| Nome_Fabricante  | Nome do fabricante                           | VARCHAR(100)  | NOT NULL                              |
| Endereço_Fabricante | Endereço do fabricante (rua, número, cidade, estado, CEP) | VARCHAR(255)  | NOT NULL                              |
| Telefone         | Telefone para contato com o fabricante        | VARCHAR(15)   | NOT NULL                              |
| Email            | E-mail para contato                          | VARCHAR(100)  | NOT NULL                              |
| CNPJ             | Cadastro Nacional de Pessoa Jurídica         | VARCHAR(14)   | NOT NULL, UNIQUE                      |
| Status           | Indica se o fabricante está ativo (ativo/inativo) | BOOLEAN    | NOT NULL                              |

## Categoria do Medicamento

| Atributo       | Descrição                                    | Tipo de Dado  | Restrição do Atributo                  |
| -------------- | -------------------------------------------- | ------------- | -------------------------------------- |
| Id_Categoria   | Identificador único da categoria             | INT           | PRIMARY KEY, AUTOINCREMENT, NOT NULL   |
| Nome_Categoria | Nome da categoria (ex.: analgésico, antibiótico) | VARCHAR(100)  | NOT NULL                              |
| Descrição      | Descrição detalhada da categoria             | VARCHAR(255)  | NOT NULL                              |



## Fornecedor


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



## Venda



| Atributo            | Descrição                                                                                 | Domínio      | Restrição do atributo   |
| ------------------- | ----------------------------------------------------------------------------------------- | ------------ | ----------------------- |
| id_Venda            | Identificador único da venda                                                              | MediumInt    | PK, AUTOINCREMENT, NOT NULL, UNIQUE |
| Data_Venda          | Data e hora da venda                                                                      | DATETIME     | NOT NULL                |
| id_Cliente          | Identificador do cliente                                                                  | Int          | FK, UNIQUE                    |
| id_Produto          | Identificador do produto vendido (medicamentos e Serviços)              | MediumInt    | FK, NOT NULL, UNIQUE            |
| Quantidade          | Quantidade de unidades vendidas                                                           | Int          | NOT NULL                |
| Valor_Total         | Valor total da venda                                                                      | Double       | NOT NULL                |
| Desconto            | Valor ou porcentagem de desconto aplicado                                                 | Double       |                         |
| Receita_Apresentada | Indica se a receita médica foi apresentada (Sim/Não) e Aplicável apenas para medicamentos | Boolean      |                         |
| id_Farmacêutico     | Identificador do farmacêutico responsável pela venda                                      | Int          | FK, NOT NULL, UNIQUE            |
| crm     | Identificador do medico                                      | Int          | FK            |
| id_filial     | FIlial realizada a venda                                      | Int          | FK            |


## Cliente


| Atributo            | Descrição                                       | Tipo de dado | Restrição do atributo            |
| ------------------- | ----------------------------------------------- | ------------ | -------------------------------- |
| id_cliente        | Identificador único do cliente (chave primária) | INT          | PRIMARY KEY, INCREMENT, NOT NULL |
| nome              | Nome completo do cliente                        | VARCHAR(100) | NOT NULL                         |
| cpf               | Cadastro de Pessoa Física (CPF)                 | VARCHAR(11)  | NOT NULL                         |
| telefone          | Telefone de contato                             | VARCHAR(15)  | NOT NULL                         |
| email             | E-mail do cliente                               | VARCHAR(100) | NOT NULL                         |
| data_nascimento   | Data de nascimento                              | DATE         | NOT NULL                         |
| Id_Historico  | Identificador único do registro de histórico de compras                 | TEXT         |                                  |


## Historio de compras do Cliente
| Atributo        | Descrição                                                                 | Tipo de Dado   | Restrição do Atributo                          |
| --------------- | ------------------------------------------------------------------------- | -------------- | --------------------------------------------- |
| Id_Historico    | Identificador único do registro de histórico de compras                   | INT            | PRIMARY KEY, AUTOINCREMENT, NOT NULL           |
| Id_Cliente      | Identificador do cliente que realizou a compra                           | INT            | FOREIGN KEY (Cliente), NOT NULL |
| Id_Venda        | Identificador da venda associada ao histórico                            | INT            | FOREIGN KEY (Venda), NOT NULL   |
| Data_Compra     | Data e hora em que a compra foi realizada                                | DATETIME       | NOT NULL                                      |
| Valor_Total     | Valor total da compra realizada                                           | DECIMAL(10, 2) | NOT NULL                                      |
| Forma_Pagamento | Método de pagamento utilizado na compra (Ex.: cartão, dinheiro)          | VARCHAR(50)    | NOT NULL                                      |
| Desconto        | Valor ou porcentagem de desconto aplicado na compra, se houver           | DECIMAL(10, 2) |                                               |



## Funcionario

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


## Cargo


| Atributo        | Descrição                                                                 | Tipo de Dado   | Restrição do Atributo                          |
| --------------- | ------------------------------------------------------------------------- | -------------- | --------------------------------------------- |
| Id_Cargo        | Identificador único do cargo                                              | INT            | PRIMARY KEY, AUTOINCREMENT, NOT NULL           |
| Nome_Cargo      | Nome do cargo ocupado pelo funcionário (ex.: farmacêutico, caixa)         | VARCHAR(100)   | NOT NULL                                      |
| Descrição_Cargo | Descrição detalhada das responsabilidades e atribuições do cargo          | VARCHAR(255)   | NOT NULL                                      |
| Salário_Base    | Salário base atribuído ao cargo                                            | DECIMAL(10, 2) | NOT NULL                                      |
| Jornada_Semanal | Jornada de trabalho semanal em horas                                       | INT            | NOT NULL                                      |



## Prescrição Medica

| Atributo       | Descrição                                                                                   | Tipo de Dado | Restrição do Atributo            |
| -------------- | ------------------------------------------------------------------------------------------- | ------------ | -------------------------------- |
| id_prescricao  | Identificador único da prescrição médica                                                    | INT          | PRIMARY KEY, AUTOINCREMENT, NOT NULL |
| cod_receita    | Código único que identifica o tipo de receita vinculada à prescrição médica.                | INT          | NOT NULL, FK                     |
| crm            | Código de Registro Médico (CRM) que identifica unicamente o médico que solicitou a receita. | CHAR(7)      | NOT NULL, PK                     |
| paciente       | Nome completo do paciente ao qual a prescrição médica se destina.                           | VARCHAR(100) | NOT NULL                         |
| prescricao     | Lista de medicamentos e suas respectivas doses prescritas pelo médico.                      | VARCHAR(500) | NOT NULL                         |
| id_funcionario | Identificador único do funcionário responsável por registrar a prescrição no sistema.       | INT          | NOT NULL, FK                     |
| descricao      | Descrição da situação do paciente                                                           | VARCHAR(500) | NOT NULL                         |



## Medicamentos_Prescritos


| Atributo         | Descrição                                                                                  | Tipo de Dado   | Restrição do Atributo                                  |
| ---------------- | ------------------------------------------------------------------------------------------ | -------------- | ----------------------------------------------------- |
| Id_Prescricao    | Identificador único da prescrição médica                                                    | INT            | FOREIGN KEY (Prescrição_Medica), NOT NULL |
| Id_Medicamento   | Identificador único do medicamento prescrito                                                | INT            | FOREIGN KEY (Medicamentos), NOT NULL      |
| Dosagem          | Quantidade ou frequência do medicamento prescrito                                           | VARCHAR(50)    | NOT NULL                                              |
| Quantidade       | Quantidade total do medicamento prescrito                                                   | INT            | NOT NULL                                              |
| Instruções_Uso   | Instruções adicionais sobre o uso do medicamento, se aplicável                              | VARCHAR(255)   |                                                      |





## Tipo de Receita

| Atributo    | Descrição                                                                      | Domínio      | Restrição do Atributo |
| ----------- | ------------------------------------------------------------------------------ | ------------ | --------------------- |
| receita     | Tipo de receita emitida, como "controlada" ou "simples".                       | varchar(50)  | Not null              |
| cod_receita | Código único que identifica o tipo de receita, utilizado como chave primária.  | int          | not null, pk          |
| descricao   | Recomendações e observações específicas associadas ao tipo de receita emitida. | varchar(500) | not null              |



## Serviço

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


## hospital

| Atributo      | Descrição                 | Dominio      | Restrição de atributo                |
| ------------- | ------------------------- | ------------ | ------------------------------------ |
| ID_Hospital   | identificador do hospital | Mediumlnt    | PK, Autoincremenrt, NOT NULL, Unique |
| Nome_Hospital | nome do hospital          | Varchar(100) | NOT NULL                             |
| Endereço      | endereço do hospital      | Varchar(200) | NOT NULL                             |


## Filial

| Atributo      | Descrição                                                          | Domínio      | Restrição do atributo               |
| ------------- | ------------------------------------------------------------------ | ------------ | ----------------------------------- |
| id_filial     | Identificador único da filial                                      | Int          | PK, AUTOINCREMENT, NOT NULL, UNIQUE |
| Nome          | Nome da filial                                                     | Varchar(100) | NOT NULL                            |
| Endereço      | Endereço completo do fornecedor (rua, número, cidade, estado, CEP) | varchar(255) | NOT NULL                            |
| data_abertura | horario e dias de funcionamento                                    | date         | NOT NULLA                           |
| Status        | Status da filial(ativo/não ativo)                                  | Boolean      | NOT NULL                            |



