CREATE TABLE Contato (
    Id_contato INT PRIMARY KEY AUTO_INCREMENT,
    Email VARCHAR(255),
    Mensagem TEXT,
    Nome VARCHAR(255)
);

CREATE TABLE Usuario (
    Id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    Id_contato INT,
    Nome VARCHAR(255),
    Email VARCHAR(255),
    Senha VARCHAR(255),
    Celular VARCHAR(20),
    FOREIGN KEY (Id_contato) REFERENCES Contato(Id_contato)
);

CREATE TABLE Pacote (
    Id_pacote INT PRIMARY KEY AUTO_INCREMENT,
    Nome_destino VARCHAR(255),
    Descricao TEXT,
    Preco DECIMAL(10,2)
);

CREATE TABLE Reserva (
    Id_reserva INT PRIMARY KEY AUTO_INCREMENT,
    Pagamento DECIMAL(10,2),
    Num_pessoas INT,
    Data_da_reserva DATE,
    Id_cliente INT,
    Id_pacote INT,
    FOREIGN KEY (Id_cliente) REFERENCES Usuario(Id_cliente),
    FOREIGN KEY (Id_pacote) REFERENCES Pacote(Id_pacote));
