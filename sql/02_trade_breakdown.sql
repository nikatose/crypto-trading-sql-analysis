-- Number of BUY and SELL trades

SELECT
    side,
    COUNT(*) AS trade_count,
    SUM(quantity) AS total_quantity,
    SUM(price * quantity) AS total_value
FROM trades
GROUP BY side
ORDER BY total_value DESC;
