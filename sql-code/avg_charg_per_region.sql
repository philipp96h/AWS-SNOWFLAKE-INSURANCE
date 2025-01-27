

SELECT
  region,
  AVG(charges) AS avg_charge_per_region
FROM
  insurance_data
GROUP BY
  region
ORDER BY
  avg_charge_per_region DESC;
