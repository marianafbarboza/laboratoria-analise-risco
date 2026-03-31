# 📊 Análise de Risco e Segmentação de Clientes
Este projeto analisa o perfil de risco de clientes com o objetivo de identificar padrões e apoiar a tomada de decisão em cenários de crédito / negócio.

A análise busca entender quais características estão associadas a maior probabilidade de risco, permitindo segmentar clientes e reduzir perdas.

---

## 🎯 Problema de Negócio

Como identificar clientes com maior risco de inadimplência (ou comportamento de risco)?

A análise tem como objetivo apoiar decisões como:
- concessão de crédito;
- definição de limites;
- estratégias de mitigação de risco.

---

## 📁 Estrutura do Projeto

- `/sql` → queries utilizadas;
- `/docs` → documentação da base;
- `/insights` → principais conclusões;
- `/assets` → imagens e gráficos;

---

## Base de dados
A base de dados utilizada está disponível no arquivo [banco_caja.zip](data/banco_caja.zip) deste projeto.

A descrição da estrutura das tabelas e das variáveis pode ser consultada [aqui](docs/Dataset.md).

---

## Ferramentas e habilidades
- SQL;
- BigQuery;
- Google Colab;
- Google Looker;
- Python;
- Pensamento analítico;

Para detalhes técnicos, consulte a pasta /sql.

---

## Principais Insights

### ⚠️ Perfil de alto risco
- Clientes com determinadas características apresentam maior probabilidade de risco  
- Identificação de padrões consistentes entre esse grupo  

### 📉 Variáveis mais relevantes
- Algumas variáveis têm maior impacto no risco do que outras  
- Permite priorizar fatores na tomada de decisão  

### 👥 Segmentação de clientes
- É possível agrupar clientes por nível de risco  
- Facilita estratégias diferentes para cada perfil  

---

## Recomendações

- Criar políticas diferenciadas para clientes de alto risco  
- Monitorar variáveis críticas ao longo do tempo  
- Utilizar segmentação para tomada de decisão mais assertiva  
- Considerar modelos preditivos como próximo passo
