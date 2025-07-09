WITH dados_completos AS (
  SELECT
    DISTINCT loan.user_id,
    u.age,
    u.salario_tratado,
    u.dependentes_tratado,
    loan.qtde_real_estate,
    loan.qtde_other,
    loan.total_emprestimos,
    ld.using_lines_not_secured_personal_assets,
    ld.number_times_delayed_payment_loan_30_59_days,
    ld.debt_ratio,
    COALESCE(d.default_flag, 0) AS default_flag
  FROM
    `risco-relativo-460118.dadosbancocaja.view-user-info` AS u
  INNER JOIN
    `risco-relativo-460118.dadosbancocaja.view-novas-variaveis` AS loan
    ON u.user_id = loan.user_id
  LEFT JOIN
    `risco-relativo-460118.dadosbancocaja.view-loans_details` AS ld
    ON loan.user_id = ld.user_id
  LEFT JOIN
    `risco-relativo-460118.dadosbancocaja.default` AS d
    ON loan.user_id = d.user_id
),

-- Junta os dados completos com o score
dados_com_faixa AS (SELECT
  d.*,
  p.score_risco,
  CASE
    WHEN p.score_risco > 22 THEN 'alto_risco'
    WHEN p.score_risco BETWEEN 18 AND 22 THEN 'medio_risco'
    WHEN p.score_risco < 18 THEN 'baixo_risco'
    ELSE 'sem_dado'  -- tratamento de score nulo
  END AS faixa_risco
FROM dados_completos d
LEFT JOIN pontuacao_risco p
  ON d.user_id = p.user_id
)

-- Contagem por faixa de risco
SELECT
  faixa_risco,
  COUNT(*) AS total_clientes,
  SUM(default_flag) AS inadimplentes
FROM dados_com_faixa
GROUP BY faixa_risco
ORDER BY faixa_risco
