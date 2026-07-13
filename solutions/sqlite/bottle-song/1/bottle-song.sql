-- Schema:

-- Task: update bottle-song table and set the result based on the
-- start_bottles and take_down.

--Establishing that for the number bottle, what the corresponding lyric is to return.Acts as defining a function here.

WITH Verses(NumberofBottle,lyrics) AS (
    VALUES
    (1, 'One green bottle hanging on the wall,
One green bottle hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be no green bottles hanging on the wall.'), 
    (2, 'Two green bottles hanging on the wall,
Two green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be one green bottle hanging on the wall.'),
    (3, 'Three green bottles hanging on the wall,
Three green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be two green bottles hanging on the wall.'), 
     (4, 'Four green bottles hanging on the wall,
Four green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be three green bottles hanging on the wall.'),
    (5, 'Five green bottles hanging on the wall,
Five green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be four green bottles hanging on the wall.'),
    (6, 'Six green bottles hanging on the wall,
Six green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be five green bottles hanging on the wall.'),
    (7, 'Seven green bottles hanging on the wall,
Seven green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be six green bottles hanging on the wall.'),
    (8, 'Eight green bottles hanging on the wall,
Eight green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be seven green bottles hanging on the wall.'),
    (9, 'Nine green bottles hanging on the wall,
Nine green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be eight green bottles hanging on the wall.'),
    (10, 'Ten green bottles hanging on the wall,
Ten green bottles hanging on the wall,
And if one green bottle should accidentally fall,
There''ll be nine green bottles hanging on the wall.')    
)
-- Updating the table so that for each combination of Start_bottles and take_down bottles.It will return the corresponding conseutative lyricas. for that particular row.

   -- The first argument in the group_concat is which agrument from the function you are selecting (In this context it is the lyrics from the correspodning number), the second is what you are concatinating inbetween each value.
   -- Filter acts as an inclusive filter, in this context, the filter includes only specific rows of lyrics into the concatenated string (group_concat())based on the start_bottles & Takedown fields from the original table. 
UPDATE "bottle-song"
SET result = (
    SELECT group_concat(lyrics, '

')
    FROM (
        SELECT lyrics, NumberofBottle 
        FROM Verses 
        ORDER BY NumberofBottle DESC
    )
    WHERE NumberofBottle BETWEEN (start_bottles - take_down) + 1 AND start_bottles
);
-- SELECT * 
-- FROM Verses
-- WHERE ;


