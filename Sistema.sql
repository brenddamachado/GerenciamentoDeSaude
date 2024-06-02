
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

CREATE TABLE Medico (
    Crm VARCHAR(100) NOT NULL PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Especialidade VARCHAR(50) NOT NULL,
    Telefone VARCHAR(15),
    Email VARCHAR(100),
    Data_nascimento DATE
);

--INSERTS PACIENTES 
INSERT INTO Paciente (Cpf, Nome, Endereco, Data_Nascimento, Celular, Email) VALUES 
('00000000000', 'Brenda Machado', 'Rua das Flores, 20', '2002-12-09', '21000000000', 'brenda1@gmail.com');

INSERT INTO Paciente (Cpf, Nome, Endereco, Data_Nascimento, Celular, Email) VALUES 
('11111111111', 'Carlos Silva', 'Av. Paulista, 1000', '1990-01-15', '21999999999', 'carlos.silva@gmail.com');

INSERT INTO Paciente (Cpf, Nome, Endereco, Data_Nascimento, Celular, Email) VALUES 
('88888888888', 'Rafael Lima', 'Rua das Flores, 20', '1988-12-05', '21222222222', 'rafael.lima@gmail.com');

INSERT INTO Paciente (Cpf, Nome, Endereco, Data_Nascimento, Celular, Email) VALUES 
('55555555555', 'Aline Costa', 'Rua das Palmeiras, 150', '1980-09-25', '21555555555', 'aline.costa@outlook.com');


INSERT INTO Paciente (Cpf, Nome, Endereco, Data_Nascimento, Celular, Email) VALUES 
('66666666666', 'Pedro Alves', 'Av. Rio Branco, 400', '1975-06-10', '21444444444', 'pedro.alves@gmail.com');

--INSERTS MÉDICOS
INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('12345-SP', 'Dr. João Silva', 'Cardiologia', '123456789', 'joao.silva@example.com', '1980-05-10');

INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('67890-RJ', 'Dra. Maria Oliveira', 'Pediatria', '987654321', 'maria.oliveira@example.com', '1975-03-22');
