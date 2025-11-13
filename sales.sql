SELECT
    Date,
    SUM(Sales) / SUM(`Quantity Sold`) AS daily_sales_price_per_unit,
    SUM(Sales) / SUM(`Quantity Sold`) AS avg_unit_sales_price,
    ((SUM(Sales) - SUM(`Cost Of Sales`)) / SUM(Sales)) * 100 AS daily_gross_profit_pct,
    (
        (
            SUM(Sales) - SUM(`Cost Of Sales`)
        ) / SUM(`Quantity Sold`)
    ) / (
        SUM(Sales) / SUM(`Quantity Sold`)
    ) * 100 AS daily_gross_profit_pct_per_unit
FROM
    sales_case_study_5
GROUP BY
    Date
ORDER BY
    Date;
