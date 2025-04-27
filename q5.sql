SELECT DISTINCT m1.name
FROM members AS m1
WHERE (
    SELECT COUNT(DISTINCT mk1.number)
    FROM memberInKnesset AS mk1
    WHERE mk1.uid = m1.uid
) = 1
AND m1.birthPlace = 'Jerusalem'
ORDER BY m1.name;
