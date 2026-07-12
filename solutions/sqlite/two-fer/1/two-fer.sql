-- Schema: CREATE TABLE "twofer" ("input" TEXT, "response" TEXT);
-- Task: update the twofer table and set the response based on the input.
-- If Statement, IF Input is null // Blank, then One for you response, if input isn't Null then one for InputValue

UPDATE twofer
    SET response = CASE 
    WHEN input = '' or input IS NULL 
    THEN 'One for you, one for me.'
    ELSE 'One for ' || input || ', one for me.'
    END;

