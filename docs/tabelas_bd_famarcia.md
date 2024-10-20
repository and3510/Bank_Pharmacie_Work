

## Medicamento

<h4 style="text-align: center; border: 1px solid #A9A9A9; padding: 10px; margin: 0px;">Entidade Medicamento</h4>

| Atributo           | Descrição                                                          | Tipo de Dado   | Restrição do Atributo                  |
| ------------------ | ------------------------------------------------------------------ | -------------- | -------------------------------------- |
| IdMedicamento     | Identificador único do medicamento                                 | MEDIUMINT(10)            | PRIMARY KEY, AUTO INCREMENT, NOT NULL, UNIQUE   |
| NomeMedicamento              | Nome do medicamento                                                | VARCHAR(100)   | NOT NULL                              |
| Descricao          | Descrição do medicamento (informações sobre o uso, dosagem, etc.)  | VARCHAR(500)   | NOT NULL                              |
| Preco              | Preço unitário do medicamento                                      | DECIMAL(10, 2) | NOT NULL                              |
| QntEstoque | Quantidade disponível no estoque                                   | INT            | NOT NULL                              |
| Validade           | Data de validade do medicamento                                    | DATE           | NOT NULL                              |
| Cod_Barras      | Código de barras do medicamento (para controle de inventário)       | VARCHAR(14)   | NOT NULL, UNIQUE                      |
| ReceitaNecessária | Indica se o medicamento requer receita médica (Sim/Não)            | TINYINT(1)        | NOT NULL                              |
| IdFabricante      | Identificador do fabricante do medicamento                         | INT            | FK, NOT NULL |
| IdCategoria       | Identificador da categoria do medicamento                          | INT            | FK, NOT NULL |
| IdFornecedor      | Identificador do fornecedor do medicamento                         | INT            | FK, NOT NULL |



## Categoria do Medicamento

| Atributo       | Descrição                                    | Tipo de Dado  | Restrição do Atributo                  |
| -------------- | -------------------------------------------- | ------------- | -------------------------------------- |
| IdCategoria   | Identificador único da categoria             | INT           | PRIMARY KEY, AUTO INCREMENT, NOT NULL   |
| NomeCategoria | Nome da categoria (ex.: analgésico, antibiótico) | VARCHAR(100)  | NOT NULL                              |
| Descricao      | Descrição detalhada da categoria             | VARCHAR(255)  | NOT NULL                              |




## Fabricante do Medicamento

| Atributo         | Descrição                                    | Tipo de Dado  | Restrição do Atributo                  |
| ---------------- | -------------------------------------------- | ------------- | -------------------------------------- |
| IdFabricante    | Identificador único do fabricante            | INT           | PRIMARY KEY, AUTO INCREMENT, NOT NULL, UNIQUE   |
| NomeFabricante  | Nome do fabricante                           | VARCHAR(100)  | NOT NULL                              |
| EnderecoFabricante | Endereço do fabricante (rua, número, cidade, estado, CEP) | VARCHAR(255) | NOT NULL                              |
| Telefone         | Telefone para contato com o fabricante        | VARCHAR(15)   | NOT NULL                              |
| Email            | E-mail para contato                          | VARCHAR(100)  | NOT NULL,  UNIQUE                            |
| Cnpj        | Cadastro Nacional de Pessoa Jurídica         | VARCHAR(14)   | NOT NULL, UNIQUE                      |
| DataContrato | Data de início do contrato com o Fabricante                        | DATE         | NOT NULL                |
| Status           | Indica se o fabricante está ativo (ativo/inativo) | TINYINT(1)    | NOT NULL                              |

## Fornecedor


| Atributo      | Descrição                                                          | Domínio      | Restrição do atributo   |
| ------------- | ------------------------------------------------------------------ | ------------ | ----------------------- |
| IdFornecedor | Identificador único do fornecedor                                  | INT          | PRIMARY KEY, AUTO INCREMENT, NOT NULL, UNIQUE |
| NomeFornecedor          | Nome do fornecedor                                                 | VARCHAR(100) | NOT NULL                |
| Cnpj         | Cadastro Nacional da Pessoa Jurídica                               | VARCHAR(14)  | NOT NULL, UNIQUE          |
| Telefone      | Número de telefone do fornecedor                                   | VARCHAR(15)  | NOT NULL                |
| Email         | E-mail para contato                                                | VARCHAR(150) | NOT NULL, UNIQUE               |
| EnderecoFornecedor      | Endereço completo do fornecedor (rua, número, cidade, estado, CEP) | VARCHAR(255) | NOT NULL                |
| DataContrato | Data de início do contrato com o fornecedor                        | DATE         | NOT NULL                |
| Status        | Status do fornecedor (ativo/inativo)                               | TINYINT(1)      | NOT NULL                |



## Venda

| Atributo            | Descrição                                                                                 | Domínio      | Restrição do atributo   |
| ------------------- | ----------------------------------------------------------------------------------------- | ------------ | ----------------------- |
| IdVenda            | Identificador único da venda                                                              | MEDIUMINT(10)    | PRIMARY KEY, AUTO INCREMENT, NOT NULL |
| DataVenda          | Data e hora da venda                                                                      | DATETIME     | NOT NULL                |
| ValorTotal         | Valor total da venda                                                                      | DECIMAL(10,2)       | NOT NULL                |
| DescontoTotal            | Valor ou porcentagem de desconto aplicado                                                 | DECIMAL(10,2)       |  DEFAULT 0               |
| IdFuncionario    | Identificador do farmacêutico responsável pela venda                                      | MEDIUMINT(10)          | FK, NOT NULL            |
| IdFilial     | FIlial realizada a venda                                      | MEDIUMINT(10)          | FK     NOT NULL       |
| IdCliente          | Identificador do cliente                                                                  | MEDIUMINT(10)          | FK, NOT NULL                    |

## Vendas_Medicamento

| Atributo            | Descrição                                                                                 | Domínio      | Restrição do atributo   |
| ------------------- | ----------------------------------------------------------------------------------------- | ------------ | ----------------------- |
| IdVendas_Medicamento            | Identificador único da venda dos Medicamentos                                                              | MEDIUMINT(10)    | PRIMARY KEY, AUTO INCREMENT, NOT NULL, UNIQUE |
| ValorMedicamento         | Valor do medicamento  individual                                                                   | DECIMAL(10,2)       | NOT NULL                |
| DescontoItem            | Valor ou porcentagem de desconto aplicado                                                 | DECIMAL(10,2)       |  DEFAULT 0               |
| QuantidadeItem          | Quantidade de unidades vendidas                                                           | INT          | NOT NULL                |
| ReceitaApresentada | Indica se a receita médica foi apresentada (Sim/Não) e Aplicável apenas para medicamentos | TINYINT(1)      |     NOT NULL                    |
| IdVenda          | Identificador único da venda            | MEDIUMINT(10)    | FK     NOT NULL      |
| IdMedicamento          | Identificador do medicamento vendido           | MEDIUMINT(10)    | FK    NOT NULL       |
| IdPrescricao     | Identificador da prescricao                                    | MEDIUMINT(10)          | FK            |



## Vendas_Serviço

| Atributo            | Descrição                                                                                 | Domínio      | Restrição do atributo   |
| ------------------- | ----------------------------------------------------------------------------------------- | ------------ | ----------------------- |
| IdVendas_Serviço            | Identificador único da venda  dos serviços                                                             | MEDIUMINT(10)    | PRIMARY KEY, AUTO INCREMENT, NOT NULL, UNIQUE|
| ValorServico        | Valor do servico  individual                                                                   | DECIMAL(10,2)       | NOT NULL                |
| DescontoItem            | Valor ou porcentagem de desconto aplicado                                                 | DECIMAL(10,2)       |  DEFAULT 0               |
| QuantidadeItem          | Quantidade de unidades vendidas                                                           | INT          | NOT NULL                |
| IdVenda          | Identificador único da venda            | MEDIUMINT(10)    | FK     NOT NULL      |
| IdServico          | Identificador do servico vendido             | MEDIUMINT(10)    | FK     NOT NULL      |


## Serviço

| Atributo        | Descrição                                                                | Domínio | Restrição do Atributo |
| --------------- | ------------------------------------------------------------------------ | ------- | --------------------- |
| IdServico     | Código único que identifica o serviço prestado.                          | MEDIUMINT(10)     | PRIMARY KEY, NOT NULL , AUTO INCREMENT, UNIQUE         |
| NomeServico     | Nome do serviço oferecido, como "consulta médica" ou "exame laboratorial".                   | VARCHAR(50)  | NOT NULL              |
| IdTipoServico  | Identificador de tipo de receita |  INT    | FK, NOT NULL |


## Tipo de Serviço

| Atributo    | Descrição                                                                                    | Domínio      | Restrição do Atributo |
| ----------- | -------------------------------------------------------------------------------------------- | ------------ | --------------------- |
| IdTipoServico | Código único de identificação do serviço, utilizado como chave primária.                     | INT          | NOT NULL, PRIMARY KEY, AUTO INCREMENT        |
| Preco       | Valor monetário cobrado pela execução do serviço.                                            | DECIMAL(10,2)        | NOT NULL              |
| Descricao   | Detalhamento do serviço oferecido, incluindo o que está incluso e as condições de prestação. | VARCHAR(500) | NOT NULL              |

## Cliente


| Atributo            | Descrição                                       | Tipo de dado | Restrição do atributo            |
| ------------------- | ----------------------------------------------- | ------------ | -------------------------------- |
| IdCliente        | Identificador único do cliente (chave primária) | MEDIUMINT(10)          | PRIMARY KEY, AUTO INCREMENT, NOT NULL, UNIQUE |
| NomeCliente            | Nome completo do cliente                        | VARCHAR(100) | NOT NULL                         |
| Cpf               | Cadastro de Pessoa Física (CPF)                 | VARCHAR(11)  | NOT NULL, UNIQUE                         |
| Telefone          | Telefone de contato                             | VARCHAR(15)  | NOT NULL                         |
| Email             | E-mail do cliente                               | VARCHAR(100) | NOT NULL, UNIQUE                         |
| DataNascimento   | Data de nascimento                              | DATE         | NOT NULL                         |


## Funcionario

| Atributo         | Descrição                                           | Domínio       | Restrição do atributo            |
| ---------------- | --------------------------------------------------- | ------------- | -------------------------------- |
| IdFuncionario | Identificador único do funcionário (chave primária) | MEDIUMINT(10)           | PRIMARY KEY, AUTO INCREMENT, NOT NULL, UNIQUE |
| NomeFuncionario          | Nome completo do funcionário                        | VARCHAR(100)  | NOT NULL                         |
| Cpf            | Cadastro de Pessoa Física (CPF)                     | VARCHAR(11)   | NOT NULL, UNIQUE                         |
| Endereco       | Endereço residencial do funcionário                 | VARCHAR(255)  | NOT NULL                         |
| Telefone       | Telefone de contato                                 | VARCHAR(15)   | NOT NULL                         |
| Email          | E-mail do funcionário                               | VARCHAR(100)  | NOT NULL, UNIQUE                         |
| DataAdmissao  | Data de admissão na farmácia                        | DATE          | NOT NULL                         |
| Turno          | Turno de trabalho (ex: manhã, tarde, noite)         | VARCHAR(10)   | NOT NULL                         |
| IdCargo          | Cargo que o funcionário ocupa                       | INT   |FK, NOT NULL                         |


## Cargo


| Atributo        | Descrição                                                                 | Tipo de Dado   | Restrição do Atributo                          |
| --------------- | ------------------------------------------------------------------------- | -------------- | --------------------------------------------- |
| IdCargo        | Identificador único do cargo                                              | INT            | PRIMARY KEY, AUTO INCREMENT, NOT NULL, UNIQUE           |
| NomeCargo      | Nome do cargo ocupado pelo funcionário (ex.: farmacêutico, caixa)         | VARCHAR(100)   | NOT NULL                                      |
| Descricao | Descrição detalhada das responsabilidades e atribuições do cargo          | VARCHAR(255)   | NOT NULL                                      |
| SalárioBase    | Salário base atribuído ao cargo                                            | DECIMAL(10, 2) | NOT NULL                                      |
| JornadaSemanal | Jornada de trabalho semanal em horas                                       | INT            | NOT NULL                                      |



## Prescrição Medica

| Atributo       | Descrição                                                                                   | Tipo de Dado | Restrição do Atributo            |
| -------------- | ------------------------------------------------------------------------------------------- | ------------ | -------------------------------- |
| IdPrescricao  | Identificador único da prescrição médica                                                    | MEDIUMINT(10)          | PRIMARY KEY, AUTO INCREMENT, NOT NULL |
| NomePaciente       | Nome completo do paciente ao qual a prescrição médica se destina.                           | VARCHAR(100) | NOT NULL                         |
| Crm            | Número de registro profissional do médico | CHAR(7)      | NOT NULL, UNIQUE                    |
| Prescricao     | Lista detalhada dos medicamentos e doses prescritas                     | VARCHAR(500) | NOT NULL                         |
| DataPrescricao   | Data de nascimento                              | DATE         | NOT NULL                         |
| IdTipoReceita    | Código único que identifica o tipo de receita vinculada à prescrição médica.                | INT          | NOT NULL, FK                     |


## Tipo de Receita

| Atributo    | Descrição                                                                      | Domínio      | Restrição do Atributo |
| ----------- | ------------------------------------------------------------------------------ | ------------ | --------------------- |
| IdTipoReceita | Código único que identifica o tipo de receita, utilizado como chave primária.  | INT          | NOT NULL, PRIMARY KEY, AUTO INCREMENT,          |
| TipoReceita     | Tipo de receita emitida, como "controlada" ou "simples".                       | VARCHAR(50)  | NOT NULL              |
| Descricao   | Recomendações e observações específicas associadas ao tipo de receita emitida. | VARCHAR(500) | NOT NULL              |



## Medicamentos_Prescritos


| Atributo         | Descrição                                                                                  | Tipo de Dado   | Restrição do Atributo                                  |
| ---------------- | ------------------------------------------------------------------------------------------ | -------------- | ----------------------------------------------------- |
| IdMedicamentoPrescrito   | Identificador único do medicamento prescrito                                                | MEDIUMINT(10)            | PRIMARY KEY, NOT NULL, AUTO INCREMENT, UNIQUE    |
| Dosagem          | Quantidade ou frequência do medicamento prescrito                                           | VARCHAR(50)    | NOT NULL                                              |
| Quantidade       | Quantidade total do medicamento prescrito                                                   | INT            | NOT NULL                                              |
| InstruçõesUso   | Instruções adicionais sobre o uso do medicamento, se aplicável                              | VARCHAR(255)   |                                                      |
| IdPrescricao    | Identificador único da prescrição médica                                                    | MEDIUMINT(10)            | FK, NOT NULL |
| IdMedicamento   | Identificador único do medicamento                                               | MEDIUMINT(10)            | FK, NOT NULL      |





## Filial

| Atributo      | Descrição                                                          | Domínio      | Restrição do atributo               |
| ------------- | ------------------------------------------------------------------ | ------------ | ----------------------------------- |
| IdFilial     | Identificador único da filial                                      | MEDIUMINT(10)          | PRIMARY KEY, AUTO INCREMENT, NOT NULL, UNIQUE |
| NomeFilial          | Nome da filial                                                     | VARCHAR(100) | NOT NULL                            |
| Endereço      | Endereço completo do fornecedor (rua, número, cidade, estado, CEP) | VARCHAR(255) | NOT NULL                            |
| DataAbertura | Dia de abertura                                    | DATE         | NOT NULL                         |
| Status        | Status da filial(ativo/não ativo)                                  | TINYINT(1)      | NOT NULL                            |
| HorarioFuncionamento | horario de funcionamento                                    | TIME         | NOT NULL                         |



