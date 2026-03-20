
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

