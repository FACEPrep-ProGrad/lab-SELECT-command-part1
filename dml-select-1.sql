## Progression


-- 1. **Write a query to display the team details. Display the records sorted in the order of team name.**
SELECT NAME
FROM TEAM
ORDER BY name;
-- 2. **Write a query to display the player details whose name starts with a letter `S` and who do not belong to the country 'South Africa'. Display the records sorted in descending order based on player name.**
SELECT NAME
FROM TEAM
WHERE NAME LIKE "S%" AND COUNTRY !="SOUTH AFRICA"
ORDER BY NAME DESC;
-- 3. **Write a query to display the event number and the seconds taken for each event. Display the records sorted in ascending order based on event number.**
SELECT EVENT_NUMBER, SECONDS
FROM EVENT
ORDER BY EVENT_NUMBER ASC;
-- 4. **Write a query to display the event numbers of those events which has sum of raid points and defending points greater than or equal to 3. Display the records sorted in ascending order based on event_no.**
SELECT EVENT_NUMBER
WHERE RAID + DEFENDING >= 3
ORDER BY EVENT_NUMBER;
-- 5. **Write a query to display the name of all the players who belong to the country India or Iran. Display the records sorted in ascending order based on player name.**
SELECT PLAYER_NAME
FROM PLAYER
WHERE COUNTRY = 'INDIA' OR COUNTRY = 'IRAN'
ORDER BY PLAYER_NAME ASC;
-- 6. **Write a query to display the name of all the players who does not belong to the country India and Iran. Display the records sorted in ascending order based on player name.**
SELECT PLAYER_NAME
FROM PLAYER
WHERE COUNTRY != 'INDIA' AND COUNTRY != 'IRAN'
ORDER BY PLAYER_NAME ASC;
-- 7. **Write a query to display the names of all the skills that start with `Defend`. Display the records sorted in ascending order based on skill name.**
SELECT SKILL_NAME
FROM SKILL
WHERE SKILL_NAME LIKE "Defend%"
ORDER BY SKILL_NAME ASC;
-- 8. **Write a query to display all the stadium names that ends with `Complex`. Display the records sorted in ascending order based on stadium names.**
SELECT STADIUM_NAME
FROM VENUE
WHERE STADIUM_NAME LIKE "%COMPLEX"
ORDER BY STADIUM_NAME ASC;
-- 9. **Write a query to display the winner team ids and the scores of those teams whose scores are less than 35. Display the records sorted in descending order based on outcome id.**
SELECT ID
FROM RESULT
WHERE SCORE<35
ORDER BY ID DESC;
-- 10. **Write a query to display the game details of those games that were played between January and March of 2020. Display the records sorted in descending order based on id.**
SELECT ID
FROM GAME
WHERE GAME_DATE BETWEEN TO_DATE('01-JAN-2020','DD-MM-YYYY') AND '31-MAR-2020'
ORDER BY ID DESC;
-- 11. **Write a query to display the names of players who are Raiders. Display the records sorted in ascending order based on player name.**
SELECT PLAYER_NAME
FROM PLAYER
WHERE SKILL_NAME LIKE 'RAIDER%'
ORDER BY PLAYER_NAME ASC;
-- 12. **Write a query to display the event number, raid points and defence points scored in the first innings of the game that was played on `2020-01-26`. Display the records sorted in ascending order based on event number.**
SELECT EVENT_NUMBER, RAID_POINT, DEFENCE_POINT
FROM EVENT, GAME
WHERE INNINGS>1 AND GAME_DATE = TO_DATE('26-JAN-2020','DD-MM-YYYY')
ORDER BY EVENT_NUMBER ASC;
-- 13. **Write a query to display the name of the winner team in the game played on `2020-03-09`. Display the records sorted in ascending order based on team name.**
SELECT WINNER_TEAM_ID
FROM RESULT, GAME, TEAM
WHERE GAME_DATE = TO_DATE('09-MAR-2020','DD-MM-YYYY')
ORDER BY NAME ASC;
-- 14. **Write a query to display the names of players who were the player of the match in the game played on 2020-03-09'. Display the records sorted in ascending order based on player name.**
SELECT PLAYER_NAME
FROM RESULT, PLAYER, GAME
WHERE GAME_DATE = TO_DATE('09-MAR-2020','DD-MM-YYYY')
ORDER BY PLAYER_OF_THE_MATCH ASC;
-- 15. **Write a query to display the names of players who are All rounders. Display the records sorted in ascending order based on player name.**
SELECT NAME
FROM PLAYER
WHERE SKILL_ID=3
ORDER BY NAME ASC;
-- 16. **Write a query to display the venue names for all the games that were played on `2020-03-09`. Display the records sorted in ascending order based on venue name.**
SELECT STADIUM_NAME
FROM GAME, VENUE
WHERE GAME_DATE = TO_DATE('09-MAR-2020','DD-MM-YYYY')
ORDER BY GAME.VENUE_ID ASC;
-- 17. **Write a query to display the Coach's name of the team `Iran`**
SELECT COUCH_NAME
FROM TEAM, PLAYER
WHERE COUNTRY='IRAN'
ORDER BY TEAM.NAME;
-- 18. **Write a query to display the event number and the defence points of `Fazel Atrachali` in each event. Display the records sorted in ascending order based on event number.**
SELECT EVENT_NO, DEFENDING_POINT
FROM EVENT, PLAYER
WHERE PLAYER.NAME = 'FAZEL ATRACGALI'
ORDER BY EVENT.EVENT_NO;
-- 19. **Write a query to display the names of the Winning teams in the month of March 2020. Display the records sorted in ascending order based on team name.**
SELECT NAME
FROM TEAM, RESULT, GAME
WHERE GAME_DATE BETWEEN TO_DATE('01-MAR-2020','DD-MM-YYYY') AND '31-MAR-2020'
ORDER BY TEAM.NAME;
-- 20. **Write a query to display the names of players who were the player of the match in the games held in March 2020. Display the records sorted in ascending order based on player name.**
SELECT PLAYER_NAME
FROM PLAYER, RESULT, GAME
WHERE GAME_DATE BETWEEN TO_DATE('01-MAR-2020','DD-MM-YYYY') AND '31-MAR-2020'
ORDER BY PLAYER.NAME;