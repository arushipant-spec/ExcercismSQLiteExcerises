-- Schema: CREATE TABLE "gigasecond" ("moment" TEXT, "result" TEXT);
-- Task: update the gigasecond table and set the result based on the moment.

--1 gigasecond = 1,000,000,000 Seconds 
-- Goal is to find out what the date & time is 1 gigsecond from a given date. 

-- Query that works here: 
-- SELECT moment
--     , datetime(moment, '+1000000000 seconds') AS trial_calc
-- FROM gigasecond;

--Updating the results column 
UPDATE gigasecond
SET result = strftime('%Y-%m-%dT%H:%M:%S', datetime(moment, '+1000000000 seconds'));






