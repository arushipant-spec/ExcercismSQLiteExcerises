-- Schema: CREATE TABLE "difference-of-squares" ("number" INT, "property" TEXT, "result" INT);https://exercism.org/tracks/sqlite/exercises/difference-of-squares
-- Task: update the difference-of-squares table and set the result based on the number and property fields.

-- WITH SquareofSum_X AS 
-- -- (n(N+1)/2)^2

-- WITH SumofSquares AS 
-- -- N(N+1) (2N+1) /6

-- WITH difference AS 
-- -- SquareofSum - SumofSquares

-- Making sure the logic works 
-- SELECT number 
--      ,property
--     ,CASE 
--         WHEN property = 'squareOfSum' 
--          THEN POWER(number*(number + 1)/2,2)

--         WHEN property = 'sumOfSquares' 
--          THEN (number*(number+1)*(2*number+1)/6) 

--         WHEN property = 'differenceOfSquares'
--         THEN (POWER(number*(number + 1)/2,2)) - ((number*(number+1)*(2*number+1)/6))  
--         END as Result
-- FROM 'difference-of-squares';

--Updating result field 
UPDATE 'difference-of-squares'
    SET Result = CASE 
        WHEN property = 'squareOfSum' 
        THEN POWER(number*(number + 1)/2,2)

        WHEN property = 'sumOfSquares' 
         THEN (number*(number+1)*(2*number+1)/6) 

        WHEN property = 'differenceOfSquares'
        THEN (POWER(number*(number + 1)/2,2)) - ((number*(number+1)*(2*number+1)/6))  
        END; 




