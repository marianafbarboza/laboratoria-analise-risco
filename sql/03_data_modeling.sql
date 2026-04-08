-- View principal

SELECT
  loan.user_id,
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

FROM `view-user-info` u
INNER JOIN `view-novas-variaveis` loan
  ON u.user_id = loan.user_id
LEFT JOIN `view-loans_details` ld
  ON loan.user_id = ld.user_id
LEFT JOIN `default` d
  ON loan.user_id = d.user_id;
