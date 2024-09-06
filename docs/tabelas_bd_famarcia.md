

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
| Tipo_Produto        | Tipo de produto vendido (ex.: medicamento, cosmético, alimento)                           | Varchar(100) | NOT NULL                |
| Quantidade          | Quantidade de unidades vendidas                                                           | Int          | NOT NULL                |
| Valor_Total         | Valor total da venda                                                                      | Double       | NOT NULL                |
| Desconto            | Valor ou porcentagem de desconto aplicado                                                 | Double       |                         |
| Receita_Apresentada | Indica se a receita médica foi apresentada (Sim/Não) e Aplicável apenas para medicamentos | Boolean      |                         |
| id_Farmacêutico     | Identificador do farmacêutico responsável pela venda                                      | Int          | FK, NOT NULL, UNIQUE            |


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

