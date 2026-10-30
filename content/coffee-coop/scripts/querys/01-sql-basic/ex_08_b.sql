-- ejercicio 08 - b
-- Rejected deliveries received on September 30, 2026, including the calculated average weight per bag

SELECT
    T1.delivery_id AS delivery,
    T1.farm_id AS "farm id",
    T1.collection_point_id AS "collection point id",
    T1.delivered_at AS "received at",
    T1.coffee_type AS "coffee type",
    T1.gross_weight_kg AS "gross weight kg",
    T1.bag_count AS "bag count",
    ROUND(T1.gross_weight_kg / T1.bag_count, 2) AS "avg kg per bag"
FROM buy.deliveries AS T1
WHERE T1.delivery_id LIKE 'DLV-20260930-%'
  AND T1.status = 'rejected'
ORDER BY T1.delivered_at ASC;

/*
      delivery       | farm id | collection point id |     received at     |  coffee type  | gross weight kg | bag count | avg kg per bag
---------------------+---------+---------------------+---------------------+---------------+-----------------+-----------+----------------
 DLV-20260930-000006 |   58408 |                 170 | 2026-09-30 06:11:03 | dry_parchment |          139.81 |         3 |          46.60
 DLV-20260930-000070 |   69157 |                   3 | 2026-09-30 08:19:57 | dry_parchment |          147.13 |         3 |          49.04
 DLV-20260930-000083 |   66435 |                   2 | 2026-09-30 09:20:30 | dry_parchment |           89.95 |         2 |          44.98
 DLV-20260930-000109 |  216626 |                   6 | 2026-09-30 10:04:15 | dry_parchment |          311.88 |         5 |          62.38
 DLV-20260930-000147 |   77310 |                 103 | 2026-09-30 11:17:45 | wet_parchment |           66.42 |         1 |          66.42
 DLV-20260930-000165 |  107038 |                 162 | 2026-09-30 12:15:01 | dry_parchment |          348.59 |         6 |          58.10
 DLV-20260930-000214 |  223116 |                  44 | 2026-09-30 13:53:56 | dry_parchment |          177.63 |         3 |          59.21
 DLV-20260930-000223 |  216415 |                  45 | 2026-09-30 14:19:21 | dry_parchment |          338.32 |         7 |          48.33
 DLV-20260930-000253 |  143807 |                 102 | 2026-09-30 15:05:34 | dry_parchment |          253.15 |         5 |          50.63
*/