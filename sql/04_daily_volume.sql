-- Daily trading volume

SELECT
    date,
    COUNT(*) AS trades,
    SUM(price * quantity) AS daily_volume,
    SUM(fee) AS daily_fees
FROM trades
GROUP BY date
ORDER BY date;
