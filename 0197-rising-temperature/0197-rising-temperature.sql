SELECT Weather.id
FROM Weather
JOIN Weather AS PreviousDay
  ON DATEDIFF(Weather.recordDate, PreviousDay.recordDate) = 1
WHERE Weather.temperature > PreviousDay.temperature;