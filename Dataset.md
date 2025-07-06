O conjunto de dados com informações sobre empréstimos concedidos a clientes do banco possui 4 tabelas: 

**Tabela user_info**
Apresenta dados dos usuários/clientes e contém as seguintes variáveis:
- user_id: número de identificação do cliente (único para cada um);
- age: idade do cliente;
- sex: gênero do cliente;
- last_month_salary: último salário mensal que o cliente informou ao banco;
- number_dependents: número de dependentes;

**Tabela loans_outstanding**
Apresenta os dados do tipo de empréstimo realizado pelo cliente, com:
- loan_id: número de identificação do empréstimo (único para cada empréstimo);
- user_id: número de identificação do cliente;
- loan_type: tipo de empréstimo (real state = imóveis, others = outros);

**Tabela loans_details**
Possui dados do comportamento de pagamento dos empréstimos, com as variáveis:
- user_id: número de identificação do cliente;
- more_90_days_overdue: número de vezes que o cliente apresentou um atraso superior a 90 dias;
- using_lines_not_secured_personal_assets: quanto o cliente está utilizando em relação ao seu limite de crédito, em linhas que não são garantidas por bens pessoais, como imóveis e automóveis;
- number_times_delayed_payment_loan_30_59_days: número de vezes que o cliente atrasou o pagamento de um empréstimo (entre 30 e 59 dias);
- debt_ratio: relação entre dívidas e ativos do cliente. Taxa de endividamento = dívidas / patrimônio;
- number_times_delayed_payment_loan_60_89_days: número de vezes que o cliente atrasou o pagamento de um empréstimo (entre 60 e 89 dias);

**Tabela default**
Com a informação dos clientes já identificados como inadimplentes;
- user_id: número de identificação do cliente;
- default_flag: classificação dos clientes inadimplentes (1 para clientes já registrados alguma vez como inadimplentes, 0 para clientes sem histórico de inadimplência);
