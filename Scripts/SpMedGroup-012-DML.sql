-- DML do projeto Medgroup

-- Definindo a base de dados a ser utilizada
USE SpMedGroup_Manha;

-- Inserindo dados nas tabelas

INSERT INTO TiposUsuarios(TipoUsuario)
VALUES	('Administrador'),
		('Médico'),
		('Paciente');

INSERT INTO Generos(Genero)
VALUES	('Feminino'),
		('Masculino'),
		('Agênero'),
		('Não Binário'),
		('Andrógeno'),
		('Outros');

INSERT INTO StatusConsulta(Situacao)
VALUES	('Agendada'),
		('Realizada'),
		('Cancelada');

INSERT INTO Especialidades(Especialidade)
VALUES	('Acupuntura'),
		('Anestesiologia'),
		('Angiologia'),
		('Cardiologia'),
		('Cirurgia Cardiovascular'),
		('Cirurgia do Aparelho Digestivo'),
		('Cirurgia Geral'),
		('Cirurgia Pediátrica'),
		('Cirurgia Plástica'),
		('Cirurgia Torácica'),
		('Cirurgia Vascular'),
		('Dermatologia'),
		('Radioterapia'),
		('Urologia'),
		('Pediatria'),
		('Psiquiatria');

INSERT INTO Estados(Estado)
VALUES	('SP'),
		('CE'),
		('BA'),
		('ES'),
		('GO'),
		('MT'),
		('RJ'),
		('SC'),
		('RS'),
		('MG'),
		('TO');

INSERT INTO Cidades(Cidade)
VALUES	('São Paulo'),
		('Santos'),
		('São Bernado'),
		('Santo Andre'),
		('Joinville'),
		('Blumenau'),
		('Florianópolis'),
		('Tijucas'),
		('Niterói'),
		('Petrópolis'),
		('Duque de Caxias'),
		('Macaé'),
		('Belo Horizonte'),
		('Ouro Preto'),
		('Juiz de Fora'),
		('Salvador'),
		('Ilhéus'),
		('Porto Seguro'),
		('Petrolina'),
		('Recife');

INSERT INTO Enderecos(Logradouro, CEP, FK_Cidade, FK_Estado)
VALUES	('Rua Joao Mello 456','06857510', 1, 1),
		('Rua Hermes da Fonseca 325', '06857549', 2, 3),
		('Rua Floriano Peixoto 12', '06857420', 4, 2),
		('Av. Paulista 100', '08956350', 3, 7),
		('Av. Barao de Limeira 45', '06857520', 6 , 5),
		('Rua Maria de Jesus 54', '06758438', 1, 4),
		('Rua Tres Marias 62', '07856342', 3, 1),
		('Av. Brigadeiro Faria Lima 87', '06857520', 8, 8),
		('Av. das Margaridas 78', '06857550', 5, 4),
		('Rua Hermes da Fonseca', '06857469', 1, 1),
		('Rua São Miguel 55', '06587234', 1, 1),
		('Rua Brunélia 44', '06857520', 1, 1),
		('Rua das Perobeiras 34', '06857550', 1, 1),
		('Rua Deodoro da Fonseca', '06857510', 1, 1);

INSERT INTO Clinicas(NomeFantasia,CNPJ,RazaoSocial,Telefone, HorarioAbre, HorarioFecha, FK_Endereco)
VALUES	('SpMedGroup', '86754534653412', 'Clinica MedGroup Diagnósticos','46678976','06:00', '23:00', 1),
		('SpMedGroup', '86754534653412', 'Clinica MedGroup Diagnósticos','58763452', '07:00', '22:00', 2),
		('SpMedGroup', '86754534653412', 'Clinica MedGroup Diagnósticos','46677865', '07:00', '21:00', 3),
		('SpMedGroup', '86754534653412', 'Clinica MedGroup Diagnósticos','45659192', '08:00', '22:00', 4);

INSERT INTO Pacientes(NomePaciente,DataNascimento,RG,CPF,Telefone, FK_Genero, FK_Endereco)
VALUES	('Carla Teixeira Dias', '1997-05-22', '470397831', '46504386827','11963526018', 1, 5),
		('Rafaela Teixeira Dias', '1999-08-30', '470397965', '46804386855','11971206602', 1, 6),
		('Carlos Alberto', '1974-02-21', '470397867', '36504386828','11966552291', 2, 7),
		('Guilherme Ferraz', '1998-04-03', '570397831', '36504384325','15972884563', 4, 8);

INSERT INTO Medicos(NomeMedico,CRM,FK_Genero,FK_Enderecos,FK_Especialidade)
VALUES	('Altair Fernandes','253647695', 2, 9, 1),
		('Larissa Antunes', '886574321', 1, 10, 2),
		('Bruna Cristina', '128654324', 1, 11, 3),
		('Rafael Mello', '456234876', 2, 12, 4);

SELECT * FROM Medicos;
SELECT * FROM Pacientes;
SELECT * FROM Consultas;

INSERT INTO Consultas(DataConsulta, Descricao, FK_Paciente, FK_Medico, FK_StatusConsulta)
VALUES	('2020-02-13','-', 1, 2, 3),
		('2020-02-08', 'Paciente com sintomas de artrite', 2, 3, 2),
		('2020-02-10', 'Paciente queixa de dores no peito, foi encaminhado para exames', 3, 4, 2),
		('2020-02-7', 'Feito a retirada de nódulos na no intestino, paciente em observação', 4, 1, 2),
		('2020-02-15', '-', 1, 1, 1),
		('2020-02-11', 'Paciente com dores na coluna, radiografia em análise', 2, 3, 2);

INSERT INTO Usuarios(Email, Senha, FK_TipoUsuario)
VALUES	('larissa@gmail.com', 'larissa123', 2),
		('carla@gmail.com', 'carla123', 3),
		('bruna@gmail.com', 'bruna123', 2),
		('rafael@gmail.com', 'rafael123', 2),
		('carlos@gmail.com', 'carlos123', 3),
		('mariane@gmail.com', 'mariane123', 1);