SELECT
  CORR(age, total_emprestimos) AS corr_idade_emprestimos,
  CORR(salario_tratado, total_emprestimos) AS corr_salario_emprestimos,
  CORR(debt_ratio, default_flag) AS corr_endividamento_default
FROM `view-tab-unica`;
