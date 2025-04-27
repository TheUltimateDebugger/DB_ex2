SELECT DISTINCT m1.name
FROM members AS m1
WHERE NOT EXISTS (
    SELECT *
    FROM memberInKnesset mk2
    NATURAL JOIN members m2
    NATURAL JOIN knessets k2
    WHERE m2.name = 'David Ben-Gurion'
      AND mk2.party = 'Mapai'
      AND k2.number NOT IN (
          SELECT number
          FROM memberInKnesset AS mk3
          WHERE mk3.uid = m1.uid
          AND party = 'Mapai'
      )
)
ORDER BY name;
