SELECT Distinct name
FROM members NATURAL JOIN memberInKnesset
WHERE occupation <> 'politician' and gender = 'female' and number = 23
INTERSECT
SELECT Distinct name
FROM members NATURAL JOIN memberInKnesset
WHERE occupation <> 'politician' and gender = 'female' and number = 24
ORDER BY name;