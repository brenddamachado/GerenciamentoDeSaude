
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