-- Tratamento de valores nulos + base inicial

SELECT
  DISTINCT loan.user_id,
  u.age,
  COALESCE(u.last_month_salary, 0) AS salario_tratado,
  COALESCE(u.number_dependents, 0) AS dependentes_tratado

FROM `risco-relativo-460118.dadosbancocaja.user_info` AS u

-- Remove registros sem user_id
INNER JOIN `risco-relativo-460118.dadosbancocaja.loans_outstanding` AS loan
ON u.user_id = loan.user_id
