SELECT * FROM asos_prop

SELECT * FROM myntra_prop

--- Joining both tables on colors.
SELECT asos_prop.colors, asos_prop.asos_us, asos_prop.asos_fr, asos_prop.asos_es, asos_prop.asos_de, asos_prop.asos_it, asos_prop.asos_au, myntra_prop.myntra_in
FROM asos_prop
INNER JOIN myntra_prop on asos_prop.colors = myntra_prop.colors;