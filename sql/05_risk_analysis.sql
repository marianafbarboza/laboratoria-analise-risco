WITH idade_quartil AS (
  SELECT
    user_id,
    age,
    default_flag,
    NTILE(4) OVER (ORDER BY age) AS faixa_idade
  FROM `view-tab-unica`
),

inadimplencia AS (
  SELECT
    faixa_idade,
    COUNT(*) total,
    SUM(default_flag) inadimplentes,
    SAFE_DIVIDE(SUM(default_flag), COUNT(*)) taxa
  FROM idade_quartil
  GROUP BY faixa_idade
),

ref AS (
  SELECT MIN(taxa) AS taxa_ref FROM inadimplencia
)

SELECT
  i.*,
  ROUND(i.taxa / r.taxa_ref, 2) AS risco_relativo
FROM inadimplencia i
CROSS JOIN ref r
ORDER BY risco_relativo DESC;
