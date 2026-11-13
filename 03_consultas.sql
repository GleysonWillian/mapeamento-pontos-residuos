-- Consulta – Informações do bairro, ponto de coleta e resíduos
SELECT b.nome AS bairro, pc.nome AS ponto_coleta, tr.nome AS residuo, pc.status
FROM bairro b
INNER JOIN ponto_coleta pc ON b.id_bairro = pc.id_bairro
INNER JOIN ponto_residuo pr ON pc.id_ponto = pr.id_ponto
INNER JOIN tipo_residuo tr ON pr.id_residuo = tr.id_residuo
ORDER BY tr.nome;

Consulta – Resíduos e categorias aceitos pelo ponto selecionado
SELECT
    pc.nome AS ponto_coleta,
    tr.nome AS residuo,
    tr.categoria
FROM ponto_coleta pc
INNER JOIN ponto_residuo pr
    ON pc.id_ponto = pr.id_ponto
INNER JOIN tipo_residuo tr
    ON pr.id_residuo = tr.id_residuo
WHERE pc.id_ponto = 1
ORDER BY tr.nome;

-- Consulta – Quantidade de resíduos por categoria
SELECT tr.categoria, COUNT(tr.id_residuo) AS quantidade_residuos
FROM tipo_residuo tr
INNER JOIN ponto_residuo pr ON tr.id_residuo = pr.id_residuo
GROUP BY tr.categoria
ORDER BY quantidade_residuos DESC;

-- Consulta – Quantidade de pontos de coleta por bairro
SELECT
    b.nome AS bairro,
    COUNT(pc.id_ponto) AS quantidade_pontos
FROM bairro b
LEFT JOIN ponto_coleta pc
    ON b.id_bairro = pc.id_bairro
GROUP BY b.id_bairro, b.nome
ORDER BY quantidade_pontos DESC;

-- Consulta a média de resíduos por ponto
SELECT ROUND(AVG(resultado.quantidade_residuos), 2) AS media_residuos_por_ponto
FROM (SELECT pc.id_ponto, COUNT(pr.id_residuo) AS quantidade_residuos
	FROM ponto_coleta pc
    LEFT JOIN ponto_residuo pr ON pc.id_ponto = pr.id_ponto
    GROUP BY pc.id_ponto
) AS resultado;