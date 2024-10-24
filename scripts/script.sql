CREATE DATABASE Farmacia;

USE Farmacia;

-- Tabela Categoria do Medicamento
CREATE TABLE Categoria_Medicamento (
    IdCategoria INT AUTO_INCREMENT PRIMARY KEY,
    NomeCategoria VARCHAR(100) NOT NULL,
    Descricao VARCHAR(255) NOT NULL
);

-- Tabela Fabricante do Medicamento
CREATE TABLE Fabricante_Medicamento (
    IdFabricante INT AUTO_INCREMENT PRIMARY KEY,
    NomeFabricante VARCHAR(100) NOT NULL,
    EnderecoFabricante VARCHAR(255) NOT NULL,
    Telefone VARCHAR(15) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Cnpj VARCHAR(14) NOT NULL UNIQUE,
    DataContrato DATE NOT NULL,
    Status TINYINT(1) NOT NULL
);

-- Tabela Fornecedor
CREATE TABLE Fornecedor (
    IdFornecedor INT AUTO_INCREMENT PRIMARY KEY,
    NomeFornecedor VARCHAR(100) NOT NULL,
    Cnpj VARCHAR(14) NOT NULL UNIQUE,
    Telefone VARCHAR(15) NOT NULL,
    Email VARCHAR(150) NOT NULL UNIQUE,
    EnderecoFornecedor VARCHAR(255) NOT NULL,
    DataContrato DATE NOT NULL,
    Status TINYINT(1) NOT NULL
);

-- Tabela Medicamento
CREATE TABLE Medicamento (
    IdMedicamento MEDIUMINT(10) AUTO_INCREMENT PRIMARY KEY,
    NomeMedicamento VARCHAR(100) NOT NULL,
    Descricao VARCHAR(500) NOT NULL,
    Preco DECIMAL(10, 2) NOT NULL,
    QntEstoque INT NOT NULL,
    Validade DATE NOT NULL,
    Cod_Barras VARCHAR(14) NOT NULL UNIQUE,
    ReceitaNecessária TINYINT(1) NOT NULL,
    IdFabricante INT NOT NULL,
    IdCategoria INT NOT NULL,
    IdFornecedor INT NOT NULL,
    FOREIGN KEY (IdFabricante) REFERENCES Fabricante_Medicamento(IdFabricante),
    FOREIGN KEY (IdCategoria) REFERENCES Categoria_Medicamento(IdCategoria),
    FOREIGN KEY (IdFornecedor) REFERENCES Fornecedor(IdFornecedor)
);

-- Tabela Cliente
CREATE TABLE Cliente (
    IdCliente MEDIUMINT(10) AUTO_INCREMENT PRIMARY KEY,
    NomeCliente VARCHAR(100) NOT NULL,
    Cpf VARCHAR(11) NOT NULL UNIQUE,
    Telefone VARCHAR(15) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    DataNascimento DATE NOT NULL
);

-- Tabela Funcionario
CREATE TABLE Funcionario (
    IdFuncionario MEDIUMINT(10) AUTO_INCREMENT PRIMARY KEY,
    NomeFuncionario VARCHAR(100) NOT NULL,
    Cpf VARCHAR(11) NOT NULL UNIQUE,
    Endereco VARCHAR(255) NOT NULL,
    Telefone VARCHAR(15) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    DataAdmissao DATE NOT NULL,
    Turno VARCHAR(10) NOT NULL,
    IdCargo INT NOT NULL,
    FOREIGN KEY (IdCargo) REFERENCES Cargo(IdCargo)
);

-- Tabela Cargo
CREATE TABLE Cargo (
    IdCargo INT AUTO_INCREMENT PRIMARY KEY,
    NomeCargo VARCHAR(100) NOT NULL,
    Descricao VARCHAR(255) NOT NULL,
    SalarioBase DECIMAL(10, 2) NOT NULL,
    JornadaSemanal INT NOT NULL
);

-- Tabela Venda
CREATE TABLE Venda (
    IdVenda MEDIUMINT(10) AUTO_INCREMENT PRIMARY KEY,
    DataVenda DATETIME NOT NULL,
    ValorTotal DECIMAL(10, 2) NOT NULL,
    DescontoTotal DECIMAL(10, 2) DEFAULT 0,
    IdFuncionario MEDIUMINT(10) NOT NULL,
    IdFilial MEDIUMINT(10) NOT NULL,
    IdCliente MEDIUMINT(10) NOT NULL,
    FOREIGN KEY (IdFuncionario) REFERENCES Funcionario(IdFuncionario),
    FOREIGN KEY (IdFilial) REFERENCES Filial(IdFilial),
    FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente)
);

-- Tabela Vendas_Medicamento
CREATE TABLE Vendas_Medicamento (
    IdVendas_Medicamento MEDIUMINT(10) AUTO_INCREMENT PRIMARY KEY,
    ValorMedicamento DECIMAL(10, 2) NOT NULL,
    DescontoItem DECIMAL(10, 2) DEFAULT 0,
    QuantidadeItem INT NOT NULL,
    ReceitaApresentada TINYINT(1) NOT NULL,
    IdVenda MEDIUMINT(10) NOT NULL,
    IdMedicamento MEDIUMINT(10) NOT NULL,
    IdPrescricao MEDIUMINT(10),
    FOREIGN KEY (IdVenda) REFERENCES Venda(IdVenda),
    FOREIGN KEY (IdMedicamento) REFERENCES Medicamento(IdMedicamento),
    FOREIGN KEY (IdPrescricao) REFERENCES Prescricao_Medica(IdPrescricao)
);

-- Tabela Vendas_Serviço
CREATE TABLE Vendas_Servico (
    IdVendas_Serviço MEDIUMINT(10) AUTO_INCREMENT PRIMARY KEY,
    ValorServico DECIMAL(10, 2) NOT NULL,
    DescontoItem DECIMAL(10, 2) DEFAULT 0,
    QuantidadeItem INT NOT NULL,
    IdVenda MEDIUMINT(10) NOT NULL,
    IdServico MEDIUMINT(10) NOT NULL,
    FOREIGN KEY (IdVenda) REFERENCES Venda(IdVenda),
    FOREIGN KEY (IdServico) REFERENCES Servico(IdServico)
);

-- Tabela Serviço
CREATE TABLE Servico (
    IdServico MEDIUMINT(10) AUTO_INCREMENT PRIMARY KEY,
    NomeServico VARCHAR(50) NOT NULL,
    IdTipoServico INT NOT NULL,
    FOREIGN KEY (IdTipoServico) REFERENCES Tipo_Servico(IdTipoServico)
);

-- Tabela Tipo de Serviço
CREATE TABLE Tipo_Servico (
    IdTipoServico INT AUTO_INCREMENT PRIMARY KEY,
    Preco DECIMAL(10, 2) NOT NULL,
    Descricao VARCHAR(500) NOT NULL
);

-- Tabela Prescrição Medica
CREATE TABLE Prescricao_Medica (
    IdPrescricao MEDIUMINT(10) AUTO_INCREMENT PRIMARY KEY,
    NomePaciente VARCHAR(100) NOT NULL,
    Crm CHAR(7) NOT NULL UNIQUE,
    Prescricao VARCHAR(500) NOT NULL,
    DataPrescricao DATE NOT NULL,
    IdTipoReceita INT NOT NULL,
    FOREIGN KEY (IdTipoReceita) REFERENCES Tipo_Receita(IdTipoReceita)
);

-- Tabela Tipo de Receita
CREATE TABLE Tipo_Receita (
    IdTipoReceita INT AUTO_INCREMENT PRIMARY KEY,
    TipoReceita VARCHAR(50) NOT NULL,
    Descricao VARCHAR(500) NOT NULL
);

-- Tabela Medicamentos_Prescritos
CREATE TABLE Medicamentos_Prescritos (
    IdMedicamentoPrescrito MEDIUMINT(10) AUTO_INCREMENT PRIMARY KEY,
    Dosagem VARCHAR(50) NOT NULL,
    Quantidade INT NOT NULL,
    InstrucoesUso VARCHAR(255),
    IdPrescricao MEDIUMINT(10) NOT NULL,
    IdMedicamento MEDIUMINT(10) NOT NULL,
    FOREIGN KEY (IdPrescricao) REFERENCES Prescricao_Medica(IdPrescricao),
    FOREIGN KEY (IdMedicamento) REFERENCES Medicamento(IdMedicamento)
);

-- Tabela Filial
CREATE TABLE Filial (
    IdFilial MEDIUMINT(10) AUTO_INCREMENT PRIMARY KEY,
    NomeFilial VARCHAR(100) NOT NULL,
    Endereco VARCHAR(255) NOT NULL,
    DataAbertura DATE NOT NULL,
    Status TINYINT(1) NOT NULL,
    HorarioFuncionamento TIME NOT NULL
);
