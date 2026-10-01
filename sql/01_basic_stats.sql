-- Basic trading statistics

SELECT
    COUNT(*) AS total_trades,
    COUNT(DISTINCT asset) AS unique_assets,
    SUM(fee) AS total_fees,
    AVG(price) AS average_execution_price
FROM trades;
