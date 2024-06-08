
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
);

CREATE TABLE Medicamentos (
    ID_Medicamento INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Dosagem VARCHAR(100),
    Frequencia VARCHAR(100),
    Prescricoes VARCHAR(100)
);


CREATE TABLE Exame (
    id_exame INT PRIMARY KEY AUTO_INCREMENT,
    cpf_paciente VARCHAR(11) NOT NULL,
    id_consulta INT,
    tipo_exame VARCHAR(100) NOT NULL,
    data_exame DATE NOT NULL,
    resultado TEXT,
    observacoes TEXT,
    crm_medico VARCHAR(100),
    FOREIGN KEY (cpf_paciente) REFERENCES Paciente(Cpf),
    FOREIGN KEY (id_consulta) REFERENCES Consulta(Id_Consulta),
    FOREIGN KEY (crm_medico) REFERENCES Medico(Crm)
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

INSERT INTO Paciente (Cpf, Nome, Endereco, Data_Nascimento, Celular, Email) VALUES 
('22222222222', 'Fernanda Souza', 'Rua das Flores, 20', '1992-08-14', '21666666666', 'fernanda.souza@gmail.com');

INSERT INTO Paciente (Cpf, Nome, Endereco, Data_Nascimento, Celular, Email) VALUES 
('33333333333', 'Marcos Pereira', 'Av. Paulista, 1000', '1985-11-30', '21777777777', 'marcos.pereira@gmail.com');

INSERT INTO Paciente (Cpf, Nome, Endereco, Data_Nascimento, Celular, Email) VALUES 
('44444444444', 'Julia Mendes', 'Rua das Flores, 20', '1978-05-22', '21888888888', 'julia.mendes@gmail.com');

INSERT INTO Paciente (Cpf, Nome, Endereco, Data_Nascimento, Celular, Email) VALUES 
('77777777777', 'Roberto Santos', 'Rua das Palmeiras, 150', '1969-02-17', '21999999999', 'roberto.santos@gmail.com');

INSERT INTO Paciente (Cpf, Nome, Endereco, Data_Nascimento, Celular, Email) VALUES 
('99999999999', 'Claudia Ramos', 'Av. Rio Branco, 400', '1995-07-29', '21010101010', 'claudia.ramos@gmail.com');

INSERT INTO Paciente (Cpf, Nome, Endereco, Data_Nascimento, Celular, Email) VALUES 
('10101010101', 'Lucas Ferreira', 'Rua das Flores, 20', '2000-12-31', '21111111111', 'lucas.ferreira@gmail.com');

INSERT INTO Paciente (Cpf, Nome, Endereco, Data_Nascimento, Celular, Email) VALUES 
('20202020202', 'Ana Martins', 'Av. Paulista, 1000', '1993-04-23', '21212121212', 'ana.martins@gmail.com');

INSERT INTO Paciente (Cpf, Nome, Endereco, Data_Nascimento, Celular, Email) VALUES 
('30303030303', 'Ricardo Alves', 'Rua das Flores, 20', '1988-03-11', '21313131313', 'ricardo.alves@gmail.com');

INSERT INTO Paciente (Cpf, Nome, Endereco, Data_Nascimento, Celular, Email) VALUES 
('40404040404', 'Patricia Lima', 'Rua das Palmeiras, 150', '1977-09-07', '21414141414', 'patricia.lima@gmail.com');

INSERT INTO Paciente (Cpf, Nome, Endereco, Data_Nascimento, Celular, Email) VALUES 
('50505050505', 'Gustavo Souza', 'Av. Rio Branco, 400', '1990-05-18', '21515151515', 'gustavo.souza@gmail.com');

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

INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('22334-SP1', 'Dr. Marcos Lima', 'Cardiologia', '123123123', 'marcos.lima@example.com', '1978-01-15');

INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('33456-RJ1', 'Dra. Juliana Carvalho', 'Cardiologia', '234234234', 'juliana.carvalho@example.com', '1982-02-20');

INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('44567-MG1', 'Dr. Felipe Andrade', 'Cardiologia', '345345345', 'felipe.andrade@example.com', '1984-08-25');

INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('55678-BA1', 'Dra. Paula Costa', 'Cardiologia', '456456456', 'paula.costa@example.com', '1976-12-30');

INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('66789-PR1', 'Dr. André Santos', 'Pediatria', '567567567', 'andre.santos@example.com', '1980-05-14');

INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('77890-SP1', 'Dra. Renata Martins', 'Pediatria', '678678678', 'renata.martins@example.com', '1977-09-10');

INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('88901-RJ1', 'Dr. Lucas Almeida', 'Pediatria', '789789789', 'lucas.almeida@example.com', '1985-11-11');

INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('99012-MG1', 'Dra. Fernanda Barros', 'Pediatria', '890890890', 'fernanda.barros@example.com', '1979-07-07');

INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('11123-BA1', 'Dr. Bruno Silva', 'Pediatria', '901901901', 'bruno.silva@example.com', '1981-03-03');

INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('12234-PR1', 'Dra. Amanda Souza', 'Pediatria', '012012012', 'amanda.souza@example.com', '1983-06-06');

INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('23345-SP1', 'Dr. Ricardo Pereira', 'Dermatologia', '213213213', 'ricardo.pereira@example.com', '1987-04-18');

INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('34456-RJ1', 'Dra. Tatiana Gomes', 'Dermatologia', '324324324', 'tatiana.gomes@example.com', '1980-10-22');

INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('45567-MG1', 'Dr. Eduardo Fernandes', 'Dermatologia', '435435435', 'eduardo.fernandes@example.com', '1982-12-15');

INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('56678-BA1', 'Dra. Carolina Mendes', 'Neurologia', '546546546', 'carolina.mendes@example.com', '1978-09-19');

INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('67789-PR1', 'Dr. Rafael Oliveira', 'Neurologia', '657657657', 'rafael.oliveira@example.com', '1984-05-25');

INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('78890-SP1', 'Dra. Patrícia Araújo', 'Neurologia', '768768768', 'patricia.araujo@example.com', '1979-11-30');

INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('89901-RJ1', 'Dr. Gustavo Rocha', 'Ortopedia', '879879879', 'gustavo.rocha@example.com', '1986-01-21');

INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('90012-MG1', 'Dra. Beatriz Moreira', 'Ortopedia', '980980980', 'beatriz.moreira@example.com', '1981-04-12');

INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('10123-BA1', 'Dr. Tiago Correia', 'Ortopedia', '091091091', 'tiago.correia@example.com', '1977-02-17');

INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('11234-PR1', 'Dra. Larissa Almeida', 'Ortopedia', '102102102', 'larissa.almeida@example.com', '1985-08-29');

INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('12345-SP1', 'Dr. Marcelo Ribeiro', 'Ortopedia', '113113113', 'marcelo.ribeiro@example.com', '1978-06-01');

INSERT INTO Medico (Crm, Nome, Especialidade, Telefone, Email, Data_nascimento) VALUES
('13456-RJ1', 'Dra. Marina Lopes', 'Ortopedia', '124124124', 'marina.lopes@example.com', '1980-09-09');

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

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2023-06-18', '10:15:00', 'Cardiologia', '55555555555', '22334-SP1');

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2023-11-10', '14:45:00', 'Cardiologia', '66666666666', '33456-RJ1');

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2022-12-25', '16:30:00', 'Cardiologia', '00000000000', '44567-MG1');

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2023-07-05', '09:00:00', 'Cardiologia', '11111111111', '55678-BA1');

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2022-09-09', '11:30:00', 'Pediatria', '88888888888', '66789-PR1');

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2023-03-19', '13:00:00', 'Pediatria', '55555555555', '77890-SP1');

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2024-02-02', '08:45:00', 'Pediatria', '66666666666', '88901-RJ1');

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2023-08-13', '10:00:00', 'Pediatria', '00000000000', '99012-MG1');

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2022-11-11', '14:15:00', 'Pediatria', '11111111111', '11123-BA1');

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2023-04-20', '15:30:00', 'Pediatria', '88888888888', '12234-PR1');

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2023-01-18', '09:45:00', 'Dermatologia', '55555555555', '23345-SP1');

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2023-07-14', '11:15:00', 'Dermatologia', '66666666666', '34456-RJ1');

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2022-10-23', '13:45:00', 'Dermatologia', '00000000000', '45567-MG1');

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2023-05-27', '08:30:00', 'Neurologia', '11111111111', '56678-BA1');

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2023-12-10', '10:45:00', 'Neurologia', '88888888888', '67789-PR1');

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2022-04-09', '15:00:00', 'Neurologia', '55555555555', '78890-SP1');

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2023-03-30', '09:15:00', 'Ortopedia', '66666666666', '89901-RJ1');

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2022-06-19', '11:30:00', 'Ortopedia', '00000000000', '90012-MG1');

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2023-09-04', '14:00:00', 'Ortopedia', '11111111111', '10123-BA1');

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2023-11-11', '16:15:00', 'Ortopedia', '88888888888', '11234-PR1');

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2022-02-08', '10:30:00', 'Ortopedia', '55555555555', '12345-SP1');

INSERT INTO Consulta (Data_Consulta, Hora, Especialidade, Cpf_Paciente, Crm_Medico) VALUES
('2024-01-29', '13:00:00', 'Ortopedia', '66666666666', '13456-RJ1');

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

--Insets medicamentos
INSERT INTO Medicamentos (Nome, Dosagem, Frequencia, Prescricoes) VALUES
('Paracetamol', '500mg', '1 vez ao dia', 'Tomar após as refeições');

INSERT INTO Medicamentos (Nome, Dosagem, Frequencia, Prescricoes) VALUES
('Ibuprofeno', '600mg', '2 vezes ao dia', 'Tomar com bastante água');

INSERT INTO Medicamentos (Nome, Dosagem, Frequencia, Prescricoes) VALUES
('Amoxicilina', '500mg', '3 vezes ao dia', 'Tomar de 8 em 8 horas'); 

INSERT INTO Medicamentos (Nome, Dosagem, Frequencia, Prescricoes) VALUES
('Atenolol', '50mg', '1 vez ao dia', 'Tomar pela manhã');

INSERT INTO Medicamentos (Nome, Dosagem, Frequencia, Prescricoes) VALUES
('Vitamina D', '2000 UI', '1 vez ao dia', 'Tomar junto com a refeição');

--os insert exames
INSERT INTO Exame (cpf_paciente, id_consulta, tipo_exame, data_exame, resultado, observacoes, crm_medico) VALUES
('55555555555', 4, 'Ressonância magnética', '2022-06-16', 'Enxaqueca detectada', 'Recomendar neurologista', '33445-BA');

INSERT INTO Exame (cpf_paciente, id_consulta, tipo_exame, data_exame, resultado, observacoes, crm_medico) VALUES
('66666666666', 5, 'Raio-X do joelho', '2023-01-23', 'Artrose confirmada', 'Iniciar fisioterapia', '55667-PR');

INSERT INTO Exame (cpf_paciente, id_consulta, tipo_exame, data_exame, resultado, observacoes, crm_medico) VALUES
('00000000000', 1, 'Teste de esforço', '2023-04-22', 'Resultados normais', 'Paciente sem restrições', '12345-SP');

INSERT INTO Exame (cpf_paciente, id_consulta, tipo_exame, data_exame, resultado, observacoes, crm_medico) VALUES
('11111111111', 2, 'Exame de pele', '2021-10-06', 'Resultados positivos para dermatite', 'Continuar com o tratamento prescrito', '11223-MG');

INSERT INTO Exame (cpf_paciente, id_consulta, tipo_exame, data_exame, resultado, observacoes, crm_medico) VALUES
('88888888888', 3, 'Teste de visão', '2019-02-12', 'Visão dentro dos parâmetros normais', 'Nenhuma intervenção necessária', '67890-RJ');

INSERT INTO Exame (cpf_paciente, id_consulta, tipo_exame, data_exame, resultado, observacoes, crm_medico) VALUES
('00000000000', 1, 'Eletrocardiograma', '2023-04-25', 'Normal', 'Nenhuma observação adicional', '12345-SP');

INSERT INTO Exame (cpf_paciente, id_consulta, tipo_exame, data_exame, resultado, observacoes, crm_medico) VALUES
('11111111111', 2, 'Biopsia de Pele', '2021-10-08', 'Lesão benigna', 'Monitorar periodicamente', '11223-MG');

INSERT INTO Exame (cpf_paciente, id_consulta, tipo_exame, data_exame, resultado, observacoes, crm_medico) VALUES
('88888888888', 3, 'Exame de Sangue', '2019-02-15', 'Todos os níveis normais', 'Nenhuma intervenção necessária', '67890-RJ');

INSERT INTO Exame (cpf_paciente, id_consulta, tipo_exame, data_exame, resultado, observacoes, crm_medico) VALUES
('55555555555', 4, 'Tomografia Computadorizada', '2022-06-20', 'Enxaqueca detectada', 'Recomendar neurologista', '33445-BA');

INSERT INTO Exame (cpf_paciente, id_consulta, tipo_exame, data_exame, resultado, observacoes, crm_medico) VALUES
('66666666666', 5, 'Ultrassom do Joelho', '2023-01-25', 'Artrose confirmada', 'Iniciar fisioterapia', '55667-PR');

INSERT INTO Exame (cpf_paciente, id_consulta, tipo_exame, data_exame, resultado, observacoes, crm_medico) VALUES
('00000000000', 1, 'Ecocardiograma', '2023-04-30', 'Normal', 'Nenhuma observação adicional', '12345-SP');

INSERT INTO Exame (cpf_paciente, id_consulta, tipo_exame, data_exame, resultado, observacoes, crm_medico) VALUES
('11111111111', 2, 'Exame de Alergia', '2021-10-10', 'Alergia detectada', 'Evitar alérgenos identificados', '11223-MG');

INSERT INTO Exame (cpf_paciente, id_consulta, tipo_exame, data_exame, resultado, observacoes, crm_medico) VALUES
('88888888888', 3, 'Teste de Audição', '2019-02-18', 'Audição dentro dos parâmetros normais', 'Nenhuma intervenção necessária', '67890-RJ');

INSERT INTO Exame (cpf_paciente, id_consulta, tipo_exame, data_exame, resultado, observacoes, crm_medico) VALUES
('55555555555', 4, 'Angiografia', '2022-06-25', 'Vasos sanguíneos normais', 'Nenhuma intervenção necessária', '33445-BA');

INSERT INTO Exame (cpf_paciente, id_consulta, tipo_exame, data_exame, resultado, observacoes, crm_medico) VALUES
('66666666666', 5, 'Ressonância Magnética do Joelho', '2023-01-28', 'Artrose confirmada', 'Iniciar fisioterapia', '55667-PR');

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

SELECT * FROM Medicamentos
WHERE Dosagem LIKE '%mg%';


-- Listar médicos com telefone não informado:
SELECT * FROM Medico
WHERE Telefone IS NULL OR Telefone = '';
-- Buscar médicos com nome começando com 'Dr.':

SELECT * FROM Medico
WHERE Nome LIKE 'Dr.%';
-- Contar o número de médicos por estado (considerando que o CRM possui o estado):

SELECT SUBSTRING_INDEX(Crm, '-', -1) AS Estado, COUNT(*) AS Numero_de_Medicos
FROM Medico
GROUP BY Estado;

--Contar o número de prontuários registrados por médico:
SELECT crm_medico, COUNT(*) AS Total_Prontuarios
FROM Prontuario
GROUP BY crm_medico;

--Buscar exames realizados em um intervalo de datas específico:

SELECT * FROM Exame
WHERE data_exame BETWEEN '2023-01-01' AND '2023-12-31';

--Listar medicamentos com frequência de uso maior que uma vez ao dia:

SELECT * FROM Medicamentos
WHERE Frequencia LIKE '%vezes%';

-- Contar o número de medicamentos por dosagem:
SELECT Dosagem, COUNT(*) AS Numero_de_Medicamentos
FROM Medicamentos
GROUP BY Dosagem;

--Número de Pacientes por Ano de Nascimento
SELECT YEAR(Data_Nascimento) AS Ano, COUNT(*) AS Numero_de_Pacientes
FROM Paciente
GROUP BY Ano
ORDER BY Ano;

--Consultas por Médico
SELECT Crm_Medico, COUNT(*) AS Numero_de_Consultas
FROM Consulta
GROUP BY Crm_Medico;

--Número de Prontuários por Data de Registro
SELECT data_registro, COUNT(*) AS Numero_de_Prontuarios
FROM Prontuario
GROUP BY data_registro
ORDER BY data_registro;

--Exames por Ano e Tipo
SELECT YEAR(data_exame) AS Ano, tipo_exame, COUNT(id_exame) AS Numero_de_Exames
FROM Exame
GROUP BY Ano, tipo_exame;

--Frequência de Uso dos Medicamentos
SELECT Frequencia, COUNT(*) AS Numero_de_Medicamentos
FROM Medicamentos
GROUP BY Frequencia;

--Número de Exames por Médico (incluindo médicos sem exames)
SELECT m.Nome AS Nome_Medico, COUNT(e.id_exame) AS Numero_de_Exames
FROM Medico m
RIGHT JOIN Exame e ON m.Crm = e.crm_medico
GROUP BY m.Nome;

--Distribuição de Pacientes por Faixa Etária
SELECT  
    CASE 
        WHEN TIMESTAMPDIFF(YEAR, Data_Nascimento, CURDATE()) < 18 THEN '0-17' 
        WHEN TIMESTAMPDIFF(YEAR, Data_Nascimento, CURDATE()) BETWEEN 18 AND 35 THEN '18-35' 
        WHEN TIMESTAMPDIFF(YEAR, Data_Nascimento, CURDATE()) BETWEEN 36 AND 50 THEN '36-50' 
        ELSE '51+' 
    END AS Faixa_Etaria, 
    COUNT(*) AS Numero_de_Pacientes 
FROM Paciente 
GROUP BY Faixa_Etaria;

--Consultas por Dia da Semana
SELECT DAYNAME(Data_Consulta) AS Dia, COUNT(*) AS Numero_de_Consultas
FROM Consulta
GROUP BY Dia
ORDER BY FIELD(Dia, 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday');


