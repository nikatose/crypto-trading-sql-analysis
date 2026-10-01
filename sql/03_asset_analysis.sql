-- Trading activity by asset

SELECT
    asset,
    COUNT(*) AS trade_count,
    SUM(quantity) AS total_quantity,
    SUM(price * quantity) AS total_volume,
    SUM(fee) AS total_fees,
    AVG(price) AS average_price
FROM trades
GROUP BY asset
ORDER BY total_volume DESC;
