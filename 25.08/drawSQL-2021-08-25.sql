CREATE TABLE `paciente`(
    `prontuario` INT UNSIGNED NOT NULL,
    `nome_paciente` TEXT NOT NULL,
    `cpf` INT NOT NULL,
    `convenio` VARCHAR(255) NOT NULL,
    `data_consulta` DATE NOT NULL,
    `especialidade` VARCHAR(255) NOT NULL,
    `column_7` INT NOT NULL
);
ALTER TABLE
    `paciente` ADD PRIMARY KEY `paciente_prontuario_primary`(`prontuario`);
CREATE TABLE `hospital`(
    `cnpj` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `nome_hospital` TEXT NOT NULL,
    `endereco_hospital` TEXT NOT NULL,
    `cod_paciente` INT NOT NULL
);
ALTER TABLE
    `hospital` ADD PRIMARY KEY `hospital_cnpj_primary`(`cnpj`);
ALTER TABLE
    `hospital` ADD CONSTRAINT `hospital_cod_paciente_foreign` FOREIGN KEY(`cod_paciente`) REFERENCES `paciente`(`prontuario`);