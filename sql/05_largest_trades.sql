-- Largest trades by USD value

SELECT
    date,
    asset,
    side,
    price,
    quantity,
    price * quantity AS trade_value,
    fee
FROM trades
ORDER BY trade_value DESC
LIMIT 5;
