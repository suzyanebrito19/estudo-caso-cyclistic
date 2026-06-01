-- =========================================
-- Arquivo: 02_analise.sql
-- Descrição: Análise de comportamento de usuários
-- =========================================

--1.Uso por dia da semana

SELECT 
  member_casual,
  EXTRACT(DAYOFWEEK FROM started_at) AS dia_num,
  FORMAT_TIMESTAMP('%A', started_at) AS dia_semana,
  COUNT(*) AS total_viagens
FROM `cyclistic-analysis-495814.cyclistic_data.dados_limpos`
GROUP BY member_casual, dia_num, dia_semana
ORDER BY dia_num;

--  2.Duracao media das viagens
SELECT 
  member_casual,
  AVG(duracao_min) AS media_duracao_min
FROM `cyclistic-analysis-495814.cyclistic_data.dados_limpos`
GROUP BY member_casual;

--  3.Volume total de viagens
SELECT 
  member_casual,
  COUNT(*) AS total_viagens
FROM `cyclistic-analysis-495814.cyclistic_data.dados_limpos`
GROUP BY member_casual;

-- 4.Uso por horario
SELECT 
  member_casual,
  EXTRACT(HOUR FROM started_at) AS hora,
  COUNT(*) AS total_viagens
FROM `cyclistic-analysis-495814.cyclistic_data.dados_limpos`
GROUP BY member_casual, hora
ORDER BY hora;

-- 5.Preferencia por tipo de bicicleta
SELECT 
  member_casual,
  rideable_type,
  COUNT(*) AS total_viagens
FROM `cyclistic-analysis-495814.cyclistic_data.dados_limpos`
GROUP BY member_casual, rideable_type
ORDER BY total_viagens DESC;

-- 6.Tendencia mensal/sazonalidade

SELECT 
  member_casual,
  EXTRACT(YEAR FROM started_at) AS ano,
  EXTRACT(MONTH FROM started_at) AS mes_num,
  -- Cria a chave de ordenao (ex: 202505, 202506)
  (EXTRACT(YEAR FROM started_at) * 100) + EXTRACT(MONTH FROM started_at) AS ano_mes_ordem,
  -- Cria o rotulo do eixo X (ex: 2025-05)
  CONCAT(CAST(EXTRACT(YEAR FROM started_at) AS STRING), '-', LPAD(CAST(EXTRACT(MONTH FROM started_at) AS STRING), 2, '0')) AS ano_mes,
  CASE EXTRACT(MONTH FROM started_at)
    WHEN 1 THEN 'Jan' WHEN 2 THEN 'Fev' WHEN 3 THEN 'Mar'
    WHEN 4 THEN 'Abr' WHEN 5 THEN 'Mai' WHEN 6 THEN 'Jun'
    WHEN 7 THEN 'Jul' WHEN 8 THEN 'Ago' WHEN 9 THEN 'Set'
    WHEN 10 THEN 'Out' WHEN 11 THEN 'Nov' WHEN 12 THEN 'Dez'
  END AS mes_nome,
  COUNT(*) AS total_viagens
FROM `cyclistic-analysis-495814.cyclistic_data.dados_limpos`
GROUP BY member_casual, ano, mes_num, ano_mes_ordem, ano_mes, mes_nome
ORDER BY ano_mes_ordem;
