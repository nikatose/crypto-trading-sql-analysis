# Crypto Trading SQL Analysis

A small SQL analytics project for exploring cryptocurrency trading activity.

The repository contains a sample trading dataset and SQL queries for analyzing trade volume, assets, fees, and transaction activity.

## Dataset

The sample dataset contains simulated cryptocurrency trades for:

* BTC
* ETH
* SOL

Each record contains:

* trade ID
* date
* asset
* side
* execution price
* quantity
* trading fee

## SQL Analysis

The project includes several example queries.

### Basic Statistics

`01_basic_stats.sql`

Calculates:

* total number of trades
* number of unique assets
* total trading fees
* average execution price

### Trade Breakdown

`02_trade_breakdown.sql`

Groups trades by:

* BUY
* SELL

and calculates trade count, quantity, and total value.

### Asset Analysis

`03_asset_analysis.sql`

Analyzes trading activity for each cryptocurrency.

### Daily Volume

`04_daily_volume.sql`

Shows trading volume and fees for each trading day.

### Largest Trades

`05_largest_trades.sql`

Finds the five largest trades by transaction value.

## Project Structure

```text
crypto-trading-sql-analysis
│
├── data/
│   └── trades.csv
│
├── sql/
│   ├── 01_basic_stats.sql
│   ├── 02_trade_breakdown.sql
│   ├── 03_asset_analysis.sql
│   ├── 04_daily_volume.sql
│   └── 05_largest_trades.sql
│
├── README.md
└── LICENSE
```

## Example Query

```sql
SELECT
    asset,
    COUNT(*) AS trade_count,
    SUM(price * quantity) AS total_volume
FROM trades
GROUP BY asset
ORDER BY total_volume DESC;
```

## Purpose

This project demonstrates basic SQL data analysis techniques applied to cryptocurrency trading data.

It is intended as a small educational portfolio project and uses simulated data.

## Possible Improvements

Future versions could include:

* realized PnL calculations
* average entry price
* win/loss statistics
* monthly performance
* exchange comparison
* trading fee analysis
* SQLite database integration
* blockchain transaction data
* dashboard visualization

## Disclaimer

The dataset is simulated and does not represent real trading activity or investment performance.
