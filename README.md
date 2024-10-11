<h1 align="center">Banco de Dados de uma Farmácia</h1>

<div align="center" >

![dbeaver](https://img.shields.io/badge/dbeaver-382923?style=for-the-badge&logo=dbeaver&logoColor=whit)
![Mysql](https://img.shields.io/badge/MySQL-018bff?style=for-the-badge&logo=mysql&logoColor=white)
![Overleaf](https://img.shields.io/badge/Overleaf-47A141?style=for-the-badge&logo=Overleaf&logoColor=white)
![GitHub Org's stars](https://img.shields.io/github/stars/and3510?style=social)

</div>

<h2> Integrantes </h2>

- Anderson do Vale - [and3510](https://github.com/and3510) 
- Beatriz Barreto - [whosbea](https://github.com/whosbea) 
- Cristovam Paulo - [cristovam10000](https://github.com/cristovam10000) 
- Gustavo do Vale - [gustavodovale](https://github.com/gustavodovale)


<h2>Requisitos de Entrega </h2>

- [ ] Capa
- [ ] Contracapa
- [ ] Sumário
- [ ] Introdução
- [ ] Ferramentas
- [ ] Modelo conceitual
  - [ ] Definição do Mini mundo
  - [x] Definição do Dicionário de Dados-DD
  - [x] Criação do Artefato – Modelo de Entidade Relacionamento-MER
- [ ] Modelo Lógico
  - [ ] Definir normatização do banco
  - [ ] Criação do Artefato – Diagrama de Entidade Relacional-DER
  - [ ] Criação das tabelas
- [ ] Modelo Físico
  - [ ] Povoamento (Inserção de registros)
  - [ ] Notação de Álgebra Relacional de Banco de dados
  - [ ] Consulta SQL
- [ ] Considerações finais
- [ ] Referências bibliográficas



<h2> Introdução </h2>
Trabalho da Faculdade de Banco de Dados para uma Farmácia


<h2> Entidades </h2>

Nesta seção, precisamos criar entidades para o sistema da farmácia.

**Medicamentos**:

Armazena informações detalhadas sobre os medicamentos, essenciais para controle de estoque, vendas, validade e requisitos de receita médica.

**Fornecedores**:

Garante o registro de fornecedores responsáveis pelo abastecimento de medicamentos e outros produtos, facilitando a gestão de contratos e informações de contato.

**Vendas**:

Controla as transações de vendas realizadas, permitindo rastreamento de produtos vendidos, clientes, farmacêuticos responsáveis, descontos aplicados e se houve a apresentação de receita médica.

**Clientes**:

Mantém um cadastro de clientes, necessário para o controle de compras, contatos e histórico de vendas, além de facilitar o relacionamento com o cliente.

**Funcionários**:

Registra os dados dos funcionários, importante para a administração de pessoal, controle de funções, turnos de trabalho e pagamentos.

**Prescrição Médica**:

Armazena as prescrições médicas, essenciais para a venda de medicamentos controlados e acompanhamento de tratamentos médicos.

**Tipo de Receita**:

Define os tipos de receitas médicas, importante para classificar medicamentos controlados ou simples e aplicar corretamente as restrições de venda.

**Serviços**:

Controla os serviços prestados pela farmácia, como consultas ou exames, assegurando o rastreamento das atividades realizadas por funcionários.

**Tipo de Serviço**:

Classifica os diferentes serviços prestados, garantindo a definição clara de preços e detalhes dos serviços ofertados.

**Hospitais**:

Registra hospitais associados, facilitando parcerias, vendas de medicamentos para hospitais e acompanhamento de convênios.

**Filiais**:

Controla as filiais da farmácia, incluindo informações de localização, status de operação e datas de abertura, facilitando a gestão descentralizada.
