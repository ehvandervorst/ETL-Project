SELECT urbanization_rate.Country,
  urbanization_rate.urbanization_rate,
  suicide_rate.suicide_rate,
  meat_consumption.meat_consumption,
  gdp_per_capita.gdp_per_capita,
  fertility.fertility
FROM urbanization_rate
INNER JOIN suicide_rate ON
urbanization_rate.Country = suicide_rate.Country
INNER JOIN meat_consumption ON
urbanization_rate.Country = meat_consumption.Country
INNER JOIN gdp_per_capita ON
urbanization_rate.Country = gdp_per_capita.Country
INNER JOIN fertility ON
urbanization_rate.Country = fertility.Country;