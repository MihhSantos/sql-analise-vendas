-- Produtos mais vendidos
SELECT produto,
SUM(quantidade) AS total_vendido
FROM vendas
GROUP BY produto
ORDER BY total_vendido DESC;

-- Receita por região
SELECT regiao,
SUM(quantidade * preco) AS receita
FROM vendas
GROUP BY regiao;

-- Vendas por vendedor
SELECT vendedor,
SUM(quantidade * preco) AS receita
FROM vendas
GROUP BY vendedor
ORDER BY receita DESC;

-- Receita por mês
SELECT
DATE_TRUNC('month', data) AS mes,
SUM(quantidade * preco) AS receita
FROM vendas
GROUP BY mes
ORDER BY mes;