SELECT Distinct name, number
FROM members NATURAL JOIN memberInKnesset NATURAL JOIN knessets
WHERE startYear - birthYear > 70 and (party = 'Likud' or party = 'Meretz')
ORDER BY name, number;