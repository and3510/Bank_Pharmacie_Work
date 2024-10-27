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


<h2>Requisitos de Entrega do Documento </h2>

- [x] Capa
- [x] Contracapa
- [x] Sumário
- [x] Introdução
- [x] Ferramentas
- [x] Modelo conceitual
  - [x] Definição do Mini mundo
  - [x] Definição do Dicionário de Dados-DD
  - [x] Criação do Artefato – Modelo de Entidade Relacionamento-MER
- [x] Modelo Lógico
  - [x] Definir normatização do banco
  - [x] Criação do Artefato – Diagrama de Entidade Relacional-DER
  - [x] Criação das tabelas
- [x] Modelo Físico
  - [x] Povoamento (Inserção de registros)
  - [x] Notação de Álgebra Relacional de Banco de dados
  - [x] Consulta SQL
- [x] Considerações finais
- [x] Referências bibliográficas



<h2> Introdução </h2>
Trabalho da Faculdade de Banco de Dados para uma Farmácia


<h2> Entidades </h2>

Nesta seção, precisamos criar entidades para o sistema da farmácia.

Medicamento

    Representa os medicamentos disponíveis para venda, incluindo informações como nome, descrição, preço, validade, etc.

Categoria do Medicamento

    Classifica os medicamentos em categorias (por exemplo, analgésicos, antibióticos), permitindo organização e pesquisa mais fácil.

Fabricante do Medicamento

    Armazena informações sobre os fabricantes dos medicamentos, incluindo nome, endereço, e dados de contato.

Fornecedor

    Representa os fornecedores que fornecem os medicamentos à farmácia, contendo detalhes de contato e status.

Venda

    Registra as vendas realizadas, incluindo data, valor total e informações do cliente e do funcionário responsável pela venda.

Vendas_Medicamento

    Associa os medicamentos vendidos a uma venda específica, permitindo rastreamento de cada item vendido e seu valor.

Vendas_Serviço

    Similar à tabela de vendas de medicamentos, mas para serviços prestados, permitindo o registro de cada serviço vendido em uma venda.

Serviço

    Contém informações sobre os serviços oferecidos pela farmácia, como consultas ou exames.

Tipo de Serviço

    Classifica os serviços prestados, com informações sobre o preço e descrição.

Cliente

    Registra informações sobre os clientes da farmácia, incluindo dados pessoais e de contato.

Funcionário

    Armazena informações sobre os funcionários da farmácia, como nome, CPF, e cargo.

Cargo

    Define os cargos ocupados pelos funcionários, com detalhes sobre responsabilidades e salário.

Prescrição Médica

    Armazena informações sobre prescrições médicas, incluindo dados do paciente, médico e medicamentos prescritos.

Tipo de Receita

    Classifica os tipos de receitas médicas, como controladas e simples, com observações específicas.

Medicamentos_Prescritos

    Associa medicamentos a uma prescrição médica específica, incluindo dosagem e instruções de uso.

Filial

    Representa as diferentes filiais da farmácia, contendo informações sobre cada unidade, como nome, endereço e horário de funcionamento.
