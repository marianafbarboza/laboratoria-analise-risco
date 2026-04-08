-- Padronização de loan_type
SELECT
  user_id,
  CASE
    WHEN LOWER(loan_type) LIKE '%real%' THEN 'real_estate'
    ELSE 'other'
  END AS loan_type_padronizado
FROM `risco-relativo-460118.dadosbancocaja.loans_outstanding`

  
-- Agregação de empréstimos por cliente
SELECT
  user_id,
  COUNTIF(loan_type = 'real_estate') AS qtde_real_estate,
  COUNTIF(loan_type != 'real_estate') AS qtde_other,
  COUNT(*) AS total_emprestimos
FROM `risco-relativo-460118.dadosbancocaja.loans_outstanding`
GROUP BY user_id
