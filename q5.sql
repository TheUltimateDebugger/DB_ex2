SELECT DISTINCT name
FROM members AS m1
WHERE EXISTS (
    SELECT *
    FROM memberInKnesset AS mk1
    WHERE mk1.uid = m1.uid
    GROUP BY mk1.uid
    HAVING COUNT(DISTINCT mk1.number) = 1
)
AND birthPlace = 'Jerusalem'
ORDER BY name;
