

 #Query1
USE tree;

    SELECT Neighbourhood, COUNT(ObservedDate) AS Number_of_Observations
    FROM Bird
    GROUP BY Neighbourhood
    ORDER BY COUNT(ObservedDate) DESC, Neighbourhood
    LIMIT 10;

 #Query2

USE tree;

    SELECT COUNT(SpeciesCommon) AS Number_of_Species_in_Neighbourhood, Neighbourhood
    FROM BirdSpecies, Bird
    WHERE SpeciesCommon IN (Neighbourhood)
    ORDER BY COUNT(SpeciesCommon) DESC;

# For a specified nest year, list each bird species and the number of different trees in which that species built nests.

SELECT BirdSpecies.SpeciesCommon, COUNT(DISTINCT NestsIn.TreeID) AS TreeCount
FROM NestsIn
JOIN Bird ON NestsIn.BirdID = Bird.BirdID
JOIN BirdSpecies ON Bird.BirdSpeciesID = BirdSpecies.BirdSpeciesID
WHERE NestsIn.NestYear = 2024
GROUP BY BirdSpecies.SpeciesCommon
ORDER BY TreeCount DESC;

# For a specified tree, list all birds that nested in and years it occurred 

SELECT BirdSpecies.SpeciesCommon, NestsIn.NestYear
FROM NestsIn
JOIN Bird ON NestsIn.BirdID = Bird.BirdID
JOIN BirdSpecies ON Bird.BirdSpeciesID = BirdSpecies.BirdSpeciesID
WHERE NestsIn.TreeID = 7
ORDER BY NestsIn.NestYear;

# Updates


