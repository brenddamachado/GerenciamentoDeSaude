CREATE TABLE `Paciente` (
  `Cpf` VARCHAR(11) PRIMARY KEY,
  `Nome` VARCHAR(100),
  `Endereco` VARCHAR(200),
  `Data_nascimento` DATE,
  `Celular` VARCHAR(15),
  `Email` VARCHAR(100)
);

CREATE TABLE `Medico` (
  `Crm` VARCHAR(100) PRIMARY KEY,
  `Nome` VARCHAR(100),
  `Especialidade` VARCHAR(50),
  `Telefone` VARCHAR(15),
  `Email` VARCHAR(100),
  `Data_nascimento` DATE
);

CREATE TABLE `Consulta` (
  `Id_consulta` INT PRIMARY KEY,
  `Data_Consulta` DATE,
  `Hora` TIME,
  `Especialidade` VARCHAR(100),
  `Cpf_paciente` VARCHAR(11),
  `Crm_medico` VARCHAR(100)
);

CREATE TABLE `Prontuario` (
  `Id_Prontuario` INT PRIMARY KEY,
  `Cpf_paciente` VARCHAR(11),
  `Id_consulta` INT,
  `Data_registro` DATE,
  `Anotacoes_medicas` TEXT,
  `Diagnostico` VARCHAR(255),
  `Tratamento` TEXT,
  `Medicamentos_prescritos` TEXT,
  `Observacoes` TEXT,
  `Crm_medico` VARCHAR(100)
);

CREATE TABLE `Exames` (
  `id_exame` INT PRIMARY KEY,
  `cpf_paciente` VARCHAR(11),
  `id_consulta` INT,
  `tipo_exame` VARCHAR(100),
  `data_exame` DATE,
  `resultado` TEXT,
  `observacoes` TEXT,
  `crm_medico` VARCHAR(100)
);

CREATE TABLE `Medicamentos` (
  `ID_medicamento` INT PRIMARY KEY,
  `Nome` VARCHAR(100),
  `Dosagem` VARCHAR(100),
  `Frequencia` VARCHAR(100),
  `Prescricoes` VARCHAR(100)
);

ALTER TABLE `Consulta` ADD FOREIGN KEY (`Cpf_paciente`) REFERENCES `Paciente` (`Cpf`);

ALTER TABLE `Consulta` ADD FOREIGN KEY (`Crm_medico`) REFERENCES `Medico` (`Crm`);

ALTER TABLE `Prontuario` ADD FOREIGN KEY (`Cpf_paciente`) REFERENCES `Paciente` (`Cpf`);

ALTER TABLE `Prontuario` ADD FOREIGN KEY (`Id_consulta`) REFERENCES `Consulta` (`Id_consulta`);

ALTER TABLE `Prontuario` ADD FOREIGN KEY (`Crm_medico`) REFERENCES `Medico` (`Crm`);

ALTER TABLE `Exames` ADD FOREIGN KEY (`cpf_paciente`) REFERENCES `Paciente` (`Cpf`);

ALTER TABLE `Exames` ADD FOREIGN KEY (`id_consulta`) REFERENCES `Consulta` (`Id_consulta`);

ALTER TABLE `Exames` ADD FOREIGN KEY (`crm_medico`) REFERENCES `Medico` (`Crm`);
