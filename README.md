# 📊 Análise de Risco e Segmentação de Clientes
Este projeto tem como objetivo analisar o risco de inadimplência de clientes a partir de dados financeiros, utilizando técnicas de análise exploratória, estatística e modelagem de risco.

A análise foi desenvolvida no contexto do Bootcamp do Laboratória, com foco em apoiar a tomada de decisão em concessão de crédito.

---

## 📌 Resumo

Este projeto desenvolve um modelo de análise de risco de inadimplência utilizando dados financeiros de clientes.

Principais resultados:
- Identificação de variáveis com maior impacto no risco (ex: atraso e limite de crédito);
- Criação de um score de risco interpretável;
- Modelo final com:
  - Acurácia: 99%
  - Recall: 99%
  - Precisão: 99% (Random Forest)

O modelo permite segmentar clientes em baixo, médio e alto risco, apoiando decisões de crédito.

---

## 📁 Estrutura do Projeto

- `/sql` → queries utilizadas;
- `/docs` → documentação da base;
- `/insights` → principais conclusões;
- `/assets` → imagens e gráficos;

---

##  Base de dados
A base de dados utilizada está disponível no arquivo [banco_caja.zip](data/banco_caja.zip) deste projeto.

A descrição da estrutura das tabelas e das variáveis pode ser consultada [aqui](docs/Dataset.md).

---

##  Ferramentas e habilidades
- SQL;
- BigQuery;
- Google Colab;
- Google Looker;
- Python;
- Pensamento analítico;

Para detalhes técnicos, consulte a pasta /sql.

---

##  Avaliação do Modelo
O modelo foi avaliado com base em:

- Acurácia;
- Precisão;
- Recall;
- Matriz de confusão;


Resultados (exemplo com limiar 22):
Acurácia: 88,89%
Precisão: 64,15%
Recall: 9,7%

O modelo apresentou perfil conservador, com baixa taxa de falsos negativos.


##  Modelo Avançado (Random Forest)
Foi testado um modelo de Machine Learning:
- Comparação com regressão logística;
- Melhor adaptação a dados com outliers;
- Capacidade de capturar relações não lineares;

---

##  Resultados
Acurácia: ~99%
Alta precisão e recall para inadimplentes
📊 Resultados e Insights
Clientes mais jovens apresentam maior risco relativo
Alto número de empréstimos está associado à inadimplência
Uso elevado de crédito e atrasos são fortes indicadores de risco
Variáveis isoladas têm baixo poder explicativo → necessidade de combinação (score)

---

##  Principais Aprendizados
- Importância do tratamento de dados antes da análise;
- Limitações de correlação linear em dados reais;
- Aplicação de técnicas estatísticas em problemas de negócio;
- Construção de modelos interpretáveis (score de risco);
- Comparação entre abordagens estatísticas e ML;

---

## Recomendações
- Criar políticas diferenciadas para clientes de alto risco  
- Monitorar variáveis críticas ao longo do tempo  
- Utilizar segmentação para tomada de decisão mais assertiva  
- Considerar modelos preditivos como próximo passo
  
