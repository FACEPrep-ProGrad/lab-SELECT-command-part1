## Progression


-- 1. **Write a query to display the team details. Display the records sorted in the order of team name.**

SELECT * FROM team ORDER BY NAME ASC;

-- 2. **Write a query to display the player details whose name starts with a letter `S` and who do not belong to the country 'South Africa'. Display the records sorted in descending order based on player name.**

SELECT * FROM TEAM WHERE NAME LIKE 'S%' ORDER BY NAME DESC;

-- 3. **Write a query to display the event number and the seconds taken for each event. Display the records sorted in ascending order based on event number.**

SELECT EVENT_NO,CLOCK_IN_SECONDS FROM EVENT ORDER BY EVENT_NO ASC;

-- 4. **Write a query to display the event numbers of those events which has sum of raid points and defending points greater than or equal to 3. Display the records sorted in ascending order based on event_no.**

SELECT EVENT_NO FROM EVENT
WHERE raid_point + DEFENDING_POINT >=3
ORDER BY EVENT_NO ASC;

-- 5. **Write a query to display the name of all the players who belong to the country India or Iran. Display the records sorted in ascending order based on player name.**

SELECT NAME FROM PLAYER 
WHERE country IN ('India','Iran')
ORDER BY NAME ASC;

-- 6. **Write a query to display the name of all the players who does not belong to the country India and Iran. Display the records sorted in ascending order based on player name.**

SELECT NAME FROM PLAYER 
WHERE country NOT IN ('India','Iran')
ORDER BY NAME ASC;

-- 7. **Write a query to display the names of all the skills that start with `Defend`. Display the records sorted in ascending order based on skill name.**

SELECT NAME FROM SKILL
WHERE NAME LIKE 'Defend%'
ORDER BY NAME ASC;

-- 8. **Write a query to display all the stadium names that ends with `Complex`. Display the records sorted in ascending order based on stadium names.**

SELECT STADIUM_NAME FROM VENUE
WHERE STADIUM_NAME LIKE '%Stadium'
ORDER BY STADIUM_NAME ASC;

-- 9. **Write a query to display the winner team ids and the scores of those teams whose scores are less than 35. Display the records sorted in descending order based on outcome id.**

SELECT WINNER_TEAM_ID,SCORE FROM OUTCOME
WHERE SCORE<35
ORDER BY ID desc;

-- 10. **Write a query to display the game details of those games that were played between January and March of 2020. Display the records sorted in descending order based on id.**

SELECT * FROM GAME
WHERE GAME_DATE BETWEEN TO_DATE('01-JAN-2020') AND TO_DATE('31-MAR-2020')
ORDER BY ID DESC;

-- 11. **Write a query to display the names of players who are Raiders. Display the records sorted in ascending order based on player name.**

SELECT NAME FROM PLAYER
WHERE SKILL_ID = 3
ORDER BY NAME ASC;

-- 12. **Write a query to display the event number, raid points and defence points scored in the first innings of the game that was played on `2020-01-26`. Display the records sorted in ascending order based on event number.**

SELECT EVENT_NO,RAID_POINT,DEFENDING_POINT FROM EVENT
JOIN INNINGS
ON EVENT.INNINGS_ID = innings.id
JOIN GAME
ON game.first_innings_id = INNINGS.ID
WHERE innings.innings_number = 1
AND GAME_DATE = TO_DATE('26-JAN-2020')
ORDER BY EVENT_NO;

-- 13. **Write a query to display the name of the winner team in the game played on `2020-03-09`. Display the records sorted in ascending order based on team name.**

SELECT NAME FROM TEAM
JOIN OUTCOME
ON team.id = outcome.winner_team_id
JOIN GAME
ON game.outcome_id = outcome.id
WHERE GAME_DATE = TO_DATE('09-MAR-2020')
ORDER BY NAME;

-- 14. **Write a query to display the names of players who were the player of the match in the game played on 2020-03-09'. Display the records sorted in ascending order based on player name.**

SELECT NAME FROM PLAYER
JOIN OUTCOME
ON player.id = outcome.player_of_match
JOIN GAME
ON game.outcome_id = outcome.id
WHERE GAME_DATE = TO_DATE('09-MAR-2020')
ORDER BY NAME;

-- 15. **Write a query to display the names of players who are All rounders. Display the records sorted in ascending order based on player name.**

SELECT PLAYER.NAME FROM PLAYER
JOIN SKILL
ON player.skill_id = skill.id
WHERE skill.name = 'All rounder'
ORDER BY NAME;

-- 16. **Write a query to display the venue names for all the games that were played on `2020-03-09`. Display the records sorted in ascending order based on venue name.**

SELECT STADIUM_NAME FROM VENUE
JOIN GAME
ON venue.id = game.venue_id
WHERE GAME_DATE = TO_DATE('09-MAR-2020');

-- 17. **Write a query to display the Coach's name of the team `Iran`**

SELECT coach FROM TEAM
JOIN PLAYER
ON team.id= player.team_id
WHERE player.country = 'India'
FETCH FIRST 1 ROW ONLY;

-- 18. **Write a query to display the event number and the defence points of `Fazel Atrachali` in each event. Display the records sorted in ascending order based on event number.**

SELECT EVENT_NO, DEFENDING_POINT FROM EVENT
JOIN PLAYER
ON event.raider_id = player.id
WHERE player.name = 'Fazel Atrachali'
ORDER BY EVENT_NO ASC;

-- 19. **Write a query to display the names of the Winning teams in the month of March 2020. Display the records sorted in ascending order based on team name.**

SELECT NAME FROM TEAM
JOIN OUTCOME
ON team.id = outcome.winner_team_id
JOIN GAME
ON outcome.winner_team_id = game.team_id_1 OR outcome.winner_team_id = game.team_id_2
WHERE game.game_date BETWEEN TO_DATE('01-MAR-2020') AND TO_DATE('31-MAR-2020')
ORDER BY NAME;

-- 20. **Write a query to display the names of players who were the player of the match in the games held in March 2020. Display the records sorted in ascending order based on player name.**

SELECT NAME FROM PLAYER
JOIN OUTCOME
ON player.id = outcome.player_of_match
JOIN GAME
ON outcome.id = game.id
WHERE game.game_date BETWEEN TO_DATE('01-MAR-2020') AND TO_DATE('31-MAR-2020')
ORDER BY NAME;
