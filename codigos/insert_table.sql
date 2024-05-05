INSERT INTO TB_UNIDADE (id_unidade, nome_unidade, tipo, endereco)
VALUES (1, 'Hospital Central', 'Hospital', 'Rua Principal, 123'),
       (2, 'Clínica ABC', 'Clínica', 'Avenida das Flores, 456'),
       (3, 'Centro de Saúde XYZ', 'Centro de Saúde', 'Rua da Saúde, 789'),
       (4, 'Laboratório de Análises', 'Laboratório', 'Avenida dos Testes, 321'),
       (5, 'Posto de Atendimento Delta', 'Posto de Atendimento', 'Rua da Emergência, 654');

INSERT INTO TB_PACIENTE (id_paciente, nome_paciente, data_nascimento, genero, rg, cpf, endereco, telefone, laudo, id_unidade)
VALUES (1, 'João Silva', '1990-05-15', 'Masculino', '1234567', '98765432100', 'Rua A, 1', '999999999', 'Laudo de exemplo', 1),
       (2, 'Maria Santos', '1985-08-20', 'Feminino', '7654321', '12345678900', 'Avenida B, 2', '888888888', 'Outro laudo', 2),
       (3, 'Carolina Almeida', '1999-11-20', 'Feminino', '1357913', '12345678929', 'Avenida BB, 30', '000000000', 'Laudo 30', 3),
       (4, 'José Oliveira', '1988-06-10', 'Masculino', '9876543', '98765432103', 'Rua F, 6', '111222333', 'Laudo 31', 4),
       (5, 'Rafaela Alves', '1996-03-28', 'Feminino', '1357246', '12345678960', 'Avenida CC, 60', '444555666', 'Laudo 60', 5);

INSERT INTO TB_VEICULO (id_veiculo, nome_veiculo, tipo)
VALUES (1, 'Ambulância 1', 'Ambulância'),
       (2, 'Carro 1', 'Carro'),
       (3, 'Moto 10', 'Moto'),
       (4, 'Van 15', 'Van');

INSERT INTO TB_SERVICO (id_servico, nome_servico, tipo, quantidade, id_unidade)
VALUES (1, 'Consulta Médica', 'Consulta', 10, 1),
       (2, 'Exame de Sangue', 'Exame', 5, 2),
       (3, 'Vacinação', 'Vacinação', 20, 4),
       (4, 'Análise Clínica', 'Análise', 15, 5),
       (5, 'Exame de Sangue', 'Exame', 6, 2);

INSERT INTO TB_VEICULO_PACIENTE (id_veiculo, id_paciente, data_ocorrido, status)
VALUES (1, 1, '2024-05-01', 'Em andamento'),
       (2, 2, '2024-05-02', 'Concluído'),
       (3, 3, '2024-06-10', 'Em andamento'),
       (4, 5, '2024-06-15', 'Concluído'),
       (3, 4, '2024-07-10', 'Em andamento');
      
INSERT INTO TB_VEICULO_SERVICO (id_veiculo, id_servico, data_ocorrido, status)
VALUES (1, 1, '2024-05-03', 'Agendado'),
       (2, 2, '2024-05-04', 'Em andamento'),
       (3, 3, '2024-06-12', 'Agendado'),
       (4, 4, '2024-06-15', 'Em andamento'),
       (3, 5, '2024-07-15', 'Em andamento');
      
INSERT INTO TB_ROTA (id_rota, id_veiculo, origem, destino)
VALUES (1, 1, 'Hospital Central', 'Ponto A'),
       (2, 2, 'Clínica ABC', 'Ponto B'),
       (3, 3, 'Centro de Saúde XYZ', 'Ponto C'),
       (4, 4, 'Posto de Atendimento Delta', 'Ponto D');


