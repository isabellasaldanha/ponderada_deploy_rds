SELECT 
    id_veiculo, 
    EXTRACT(MONTH FROM data_ocorrido) AS mes, 
    COUNT(id_paciente) AS total_pacientes, 
    COUNT(id_paciente) / COUNT(DISTINCT id_veiculo) AS pacientes_veiculo
FROM 
    TB_VEICULO_PACIENTE
GROUP BY 
    id_veiculo, 
    EXTRACT(MONTH FROM data_ocorrido);
