{{ config(materialized='table') }}

SELECT
provider_id as inpatient_provider_id,
provider_name as inpatient_provider_name,
provider_city as inpatient_provider_city
ROUND(SUM(total_discharges),2) as inpatient_sum_total_discharges,
FROM `bigquery-public-data.cms_medicare.inpatient_charges_2011`
GROUP BY
1,
2,
3