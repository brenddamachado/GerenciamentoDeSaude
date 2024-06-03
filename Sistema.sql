
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

CREATE TABLE Consulta (
    Id_Consulta INT PRIMARY KEY AUTO_INCREMENT,
    Data_Consulta DATE,
    Hora TIME,
    Especialidade VARCHAR(100),
    Cpf_Paciente VARCHAR(11) NOT NULL,
    Crm_Medico VARCHAR(100) NOT NULL,
    FOREIGN KEY (Cpf_Paciente) REFERENCES Paciente(Cpf),
    FOREIGN KEY (Crm_Medico) REFERENCES Medico(Crm)
);

CREATE TABLE Prontuario (
    id_prontuario INT PRIMARY KEY AUTO_INCREMENT,
    cpf_paciente VARCHAR(11) NOT NULL,
    id_consulta INT,
    data_registro DATE NOT NULL,
    anotacoes_medicas TEXT,
    diagnostico VARCHAR(255),
    tratamento TEXT,
    medicamentos_prescritos TEXT,
    observacoes TEXT,
    crm_medico VARCHAR(100),
    FOREIGN KEY (cpf_paciente) REFERENCES Paciente(Cpf),
    FOREIGN KEY (id_consulta) REFERENCES Consulta(Id_Consulta),
    FOREIGN KEY (crm_medico) REFERENCES Medico(Crm)
)

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

INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('11223-MG', 'Dr. Carlos Pereira', 'Dermatologia', '456789123', 'carlos.pereira@example.com', '1983-07-10');

INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('33445-BA', 'Dra. Ana Souza', 'Neurologia', '321654987', 'ana.souza@example.com', '1979-11-30');

INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('55667-PR', 'Dr. Pedro Lima', 'Ortopedia', '654123789', 'pedro.lima@example.com', '1985-03-05');

--Inserts consulta

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2023-04-20', '15:00:23', 'Cardiologia', '00000000000', '12345-SP');

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2021-10-04', '08:16:19', 'Dermatologia', '11111111111', '11223-MG');

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2019-02-10', '11:33:45', 'Pediatria', '88888888888', '67890-RJ');

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2022-06-15', '09:00:00', 'Neurologia', '55555555555', '33445-BA');

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2023-01-22', '14:30:00', 'Ortopedia', '66666666666', '55667-PR');

--insert prontuario 
INSERT INTO Prontuario (cpf_paciente, id_consulta, data_registro, anotacoes_medicas, diagnostico, tratamento, medicamentos_prescritos, observacoes, crm_medico) VALUES
('00000000000', 1, '2023-04-20', 'Paciente apresenta bom estado geral.', 'Hipertensão controlada', 'Manter medicação', 'Atenolol 50mg', 'Nenhuma', '12345-SP');

INSERT INTO Prontuario (cpf_paciente, id_consulta, data_registro, anotacoes_medicas, diagnostico, tratamento, medicamentos_prescritos, observacoes, crm_medico) VALUES
('11111111111', 2, '2021-10-04', 'Paciente com lesões na pele.', 'Dermatite atópica', 'Uso de pomada específica', 'Hidrocortisona', 'Revisão em 30 dias', '11223-MG');

INSERT INTO Prontuario (cpf_paciente, id_consulta, data_registro, anotacoes_medicas, diagnostico, tratamento, medicamentos_prescritos, observacoes, crm_medico) VALUES
('88888888888', 3, '2019-02-10', 'Consulta pediátrica de rotina.', 'Saudável', 'Manter alimentação balanceada', 'Vitamina D', 'Retorno anual', '67890-RJ');

INSERT INTO Prontuario (cpf_paciente, id_consulta, data_registro, anotacoes_medicas, diagnostico, tratamento, medicamentos_prescritos, observacoes, crm_medico) VALUES
('55555555555', 4, '2022-06-15', 'Paciente com enxaqueca frequente.', 'Enxaqueca crônica', 'Uso de analgésicos', 'Sumatriptano', 'Monitorar sintomas', '33445-BA');

INSERT INTO Prontuario (cpf_paciente, id_consulta, data_registro, anotacoes_medicas, diagnostico, tratamento, medicamentos_prescritos, observacoes, crm_medico) VALUES
('66666666666', 5, '2023-01-22', 'Dor no joelho esquerdo.', 'Artrose', 'Fisioterapia e medicação', 'Ibuprofeno', 'Retorno em 3 meses', '55667-PR');



--CONSULTAS E FILTRAGENS NO BD

-- contagem de médicos por especialidade 
SELECT especialidade, COUNT(*) AS Numero_de_Medicos
FROM Medico
GROUP BY especialidade;

--os registros pela coluna Endereco e conta o número de pacientes no endereco 
SELECT Endereco, COUNT(*) AS Numero_de_Pacientes
FROM Paciente
GROUP BY Endereco;

--Listar todos os pacientes ordenados por nome
SELECT * FROM Paciente
ORDER BY Nome;

--Buscar pacientes com data de nascimento após 1990
SELECT * FROM Paciente
WHERE Data_Nascimento > '1990-01-01';

--contar o número de pacientes cadastrados
SELECT COUNT() AS Total_Pacientes FROM Paciente;

--ordenar os medicos pela especialidade
SELECT FROM Medico
ORDER BY Especialidade;

--Buscar medico pela especialidade 
SELECT * FROM Medico
WHERE Especialidade = 'Cardiologia';

--Contar o número de médicos por especialidade
SELECT Especialidade, COUNT() AS Total_Medicos
FROM Medico
GROUP BY Especialidade;

--medicamentos com uma dosagem específica
SELECT FROM Medicamentos
WHERE Dosagem = '500mg';

--Listar especialidades com 2 ou mais consultas
SELECT Especialidade, COUNT() AS Total_Consultas
FROM Consulta
GROUP BY Especialidade
HAVING COUNT() >= 2;

--Listar exames realizados por um médico específico:
SELECT * FROM Exame
WHERE crm_medico = '12345-SP';

--Contar exames realizados por tipo de exame:
SELECT tipo_exame, COUNT(*) AS Numero_de_Exames
FROM Exame
GROUP BY tipo_exame;
