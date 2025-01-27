
SELECT
  BMI,
  AVG(charges) AS avg_charge_per_bmi
FROM
  insurance_data
GROUP BY
  BMI
ORDER BY
  avg_charge_per_bmi DESC;
