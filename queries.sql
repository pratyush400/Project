--Query1
USE tree;

    SELECT Neighbourhood, COUNT(ObservedDate) AS Number_of_Observations
    FROM Bird
    GROUP BY Neighbourhood
    ORDER BY COUNT(ObservedDate) DESC, Neighbourhood
    LIMIT 10;

--Query2

USE tree;

    SELECT COUNT(SpeciesCommon) AS Number_of_Species_in_Neighbourhood, Neighbourhood
    FROM BirdSpecies, Bird
    WHERE SpeciesCommon IN (Neighbourhood)
    ORDER BY COUNT(SpeciesCommon) DESC;

