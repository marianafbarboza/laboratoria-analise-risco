-- Score final por cliente

SELECT
  user_id,
  SUM(peso) AS score_risco
FROM quartis_empilhados q
JOIN pesos_risco p
  ON q.variavel = p.variavel AND q.faixa = p.faixa
GROUP BY user_id;



-- Score final por cliente

SELECT
  user_id,
  SUM(peso) AS score_risco
FROM quartis_empilhados q
JOIN pesos_risco p
  ON q.variavel = p.variavel AND q.faixa = p.faixa
GROUP BY user_id;



-- Classificação de risco

SELECT *,
  CASE
    WHEN score_risco > 22 THEN 'alto_risco'
    WHEN score_risco BETWEEN 18 AND 22 THEN 'medio_risco'
    ELSE 'baixo_risco'
  END AS faixa_risco
FROM pontuacao_risco;
