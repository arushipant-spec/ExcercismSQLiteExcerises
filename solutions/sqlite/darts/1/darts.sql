-- Schema: CREATE TABLE "darts" ("x" REAL, "y" REAL, score INTEGER);
-- Task: update the darts table and set the score based on the x and y values.


-- You don't need to use a function here, because you are iterating through an array or list here. You are evaluating values to a condition.So a Case When statment would be better here. 

-- The Logic here is as follows : inner Circle (Radius = 1): $x^2 + y^2 \le 1^2 \implies$ 10 pointsMiddle Circle (Radius = 5): $x^2 + y^2 \le 5^2 \implies$ 5 pointsOuter Circle (Radius = 10): $x^2 + y^2 \le 10^2 \implies$ 1 pointOutside (Radius > 10): $x^2 + y^2 > 100 \implies$ 0 points

UPDATE darts 
SET score = 
    CASE 
    -- Inner circle (radius <= 1)
    WHEN (x * x + y * y) <= 1   THEN 10
    
    -- Middle circle (radius <= 5)
    WHEN (x * x + y * y) <= 25  THEN 5
    
    -- Outer circle (radius <= 10)
    WHEN (x * x + y * y) <= 100 THEN 1
    
    -- Outside the target
    ELSE 0
    END;  



 






