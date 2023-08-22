SELECT sales.transactions.*,sales.date.* FROM sales.transactions
INNER JOIN sales.date
ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = 2020


SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions
INNER JOIN sales.date
ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = 2020 AND sales.transactions.market_code = 'Mark001'

SELECT sales.date.year,SUM(sales.transactions.sales_amount) FROM sales.transactions 
INNER JOIN sales.date
ON sales.transactions.order_date = sales.date.date
GROUP BY sales.date.year

SELECT markets_name, SUM(sales_amount) FROM sales.transactions
INNER JOIN sales.markets
ON sales.transactions.market_code = sales.markets.markets_code
GROUP BY markets_name




