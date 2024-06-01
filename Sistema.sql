
CREATE DATABASE SaúdeCompleta;

-- Selecionando o Banco de Dados
USE SaúdeCompleta;


CREATE TABLE Paciente (
    Cpf VARCHAR(11) NOT NULL PRIMARY KEY,
    Nome VARCHAR(100),
    Endereco VARCHAR(200),
    Data_Nascimento DATE,
    Celular VARCHAR(15),
    Email VARCHAR(100)
);


--INSERTS PACIENTES 
INSERT INTO Paciente (Cpf, Nome, Endereco, Data_Nascimento, Celular, Email) VALUES 
('00000000000', 'Brenda Machado', 'Rua das Flores, 20', '2002-12-09', '21000000000', 'brenda1@gmail.com');

INSERT INTO Paciente (Cpf, Nome, Endereco, Data_Nascimento, Celular, Email) VALUES 
('11111111111', 'Carlos Silva', 'Av. Paulista, 1000', '1990-01-15', '21999999999', 'carlos.silva@gmail.com');

INSERT INTO Paciente (Cpf, Nome, Endereco, Data_Nascimento, Celular, Email) VALUES 
('88888888888', 'Rafael Lima', 'Rua das Flores, 20', '1988-12-05', '21222222222', 'rafael.lima@gmail.com');