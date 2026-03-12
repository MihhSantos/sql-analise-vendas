# 📊 Análise de Vendas com SQL

Projeto de análise de dados utilizando SQL para responder perguntas de negócio sobre vendas.

## Tecnologias

- PostgreSQL
- DBeaver
- SQL

## Estrutura da Tabela

Tabela utilizada:

vendas

| coluna   | descrição |
|----------|-----------|
data       | data da venda |
regiao     | região da venda |
produto    | produto vendido |
categoria  | categoria do produto |
vendedor   | vendedor |
quantidade | quantidade vendida |
preco      | preço do produto |

## Perguntas respondidas

- Quais produtos são mais vendidos?
- Qual região gera mais receita?
- Qual vendedor vende mais?
- Qual o faturamento mensal?

## Exemplos de consultas

```sql
SELECT produto,
SUM(quantidade) AS total_vendido
FROM vendas
GROUP BY produto
ORDER BY total_vendido DESC;
