-- 1. Category demand index: 3-month moving enquiry volume vs same period last year (YoY), by category.
-- Product use: powers the monthly Category Demand Insights report and the Data API /demand-index endpoint.
WITH monthly AS (
  SELECT month, category, SUM(enquiries) AS enquiries
  FROM category_demand_trends
  GROUP BY month, category
),
rolling AS (
  SELECT month, category,
         SUM(enquiries) OVER (PARTITION BY category ORDER BY month ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS enq_3m
  FROM monthly
)
SELECT r.category, r.month, r.enq_3m,
       ROUND(100.0 * (r.enq_3m - p.enq_3m) / p.enq_3m, 1) AS yoy_pct,
       ROUND(100.0 * r.enq_3m / (SELECT AVG(enq_3m) FROM rolling x WHERE x.category = r.category), 1) AS index_vs_avg
FROM rolling r
JOIN rolling p ON p.category = r.category AND p.month = date(r.month, '-12 months')
WHERE r.month = (SELECT MAX(month) FROM monthly)
ORDER BY yoy_pct DESC;
