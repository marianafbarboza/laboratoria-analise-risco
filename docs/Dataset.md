## Dataset
O conjunto de dados está disponível no arquivo *banco_caja.zip* e é composto por quatro tabelas principais:


### user_info
Contém os dados relativos a informações dos usuários/clientes.

| Coluna | Descrição |
|--------|----------|
| user_id | Identificador único do cliente |
| age | Idade do cliente |
| sex | Gênero do cliente |
| last_month_salary |  último salário mensal que o cliente informou ao banco |
| number_dependents | Número de dependentes |

---

### loans_outstanding
Contém os dados do tipo de empréstimo realizado pelo cliente.

| Coluna | Descrição |
|--------|----------|
| loan_id | Número de identificação do empréstimo (único para cada empréstimo) |
| user_id | Número de identificação do cliente |
| loan_type | Tipo de empréstimo (real state = imóveis, others = outros) |

---

### loans_details
Contém os dados do comportamento de pagamento dos empréstimos.

| Coluna | Descrição |
|--------|----------|
| user_id | Número de identificação do cliente |
| more_90_days_overdue | Número de vezes que o cliente apresentou um atraso superior a 90 dias |
| using_lines_not_secured_personal_assets | Quanto o cliente está utilizando em relação ao seu limite de crédito, em linhas que não são garantidas por bens pessoais, como imóveis e automóveis |
| number_times_delayed_payment_loan_30_59_days | Número de vezes que o cliente atrasou o pagamento de um empréstimo (entre 30 e 59 dias) |
| debt_ratio | Relação entre dívidas e ativos do cliente. Taxa de endividamento = dívidas / patrimônio |
| number_times_delayed_payment_loan_60_89_days | Número de vezes que o cliente atrasou o pagamento de um empréstimo (entre 60 e 89 dias) |
| user_id | Número de identificação do cliente |

---

### default
Informação dos clientes já identificados como inadimplentes.

| Coluna | Descrição |
|--------|----------|
| user_id | Número de identificação do cliente |
| default_flag | classificação dos clientes inadimplentes* |

*1 para clientes já registrados alguma vez como inadimplentes, 0 para clientes sem histórico de inadimplência.
