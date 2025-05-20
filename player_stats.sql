-- Top 30 leading scorers that have played at least 40 or more games of 2022-23 season
SELECT player_name,
		pts,
		team,
		season
FROM player_stats
WHERE season = '2022-23' AND gp >= 40
ORDER BY pts DESC
LIMIT 30;

-- Top 30 players leading in usage pct and have played at least 40 or more games during the 2022-23 season
SELECT player_name,
		usg_pct,
		team,
		gp,
		season
FROM player_stats
WHERE season = '2022-23' AND gp >= 40
ORDER BY usg_pct DESC
LIMIT 30;


-- Top 10 players with the highest true shooting percentage with at least 40 or more games played during the 2022-23 season
SELECT player_name,
		ts_pct
FROM player_stats
WHERE season = '2022-23' and gp >= 40
ORDER BY ts_pct DESC
LIMIT 10;

-- Players who improved their points per game and played at least 40 or more games from 2021-22 to 2022-23 seasons
SELECT
    p1.player_name,
    p1.pts AS pts_2021_22,
    p2.pts AS pts_2022_23,
    ROUND(p2.pts - p1.pts, 2) AS pts_diff,
    CASE 
        WHEN p2.pts > p1.pts THEN 'Improved'
        WHEN p2.pts < p1.pts THEN 'Declined'
        ELSE 'No Change'
    END AS performance_change
FROM player_stats p1
JOIN player_stats p2 ON p1.player_name = p2.player_name
WHERE p1.season = '2021-22' AND p2.season = '2022-23'
  AND p1.gp >= 40 AND p2.gp >= 40
ORDER BY pts_diff DESC
LIMIT 20;

-- Players who improved their assists and played at least 40 or more games from 2021-22 to 2022-23 seasons
SELECT
    p1.player_name,
    p1.ast AS ast_2021_22,
    p2.ast AS ast_2022_23,
    ROUND(p2.ast - p1.ast, 2) AS ast_diff,
    CASE 
        WHEN p2.ast > p1.ast THEN 'Improved'
        WHEN p2.ast < p1.ast THEN 'Declined'
        ELSE 'No Change'
    END AS performance_change
FROM player_stats p1
JOIN player_stats p2 ON p1.player_name = p2.player_name
WHERE p1.season = '2021-22' AND p2.season = '2022-23'
  AND p1.gp >= 40 AND p2.gp >= 40
ORDER BY ast_diff DESC
LIMIT 20;

-- Players who improved their rebounds and played at least 40 or more games from 2021-22 to 2022-23 seasons
SELECT
    p1.player_name,
    p1.reb AS reb_2021_22,
    p2.reb AS reb_2022_23,
    ROUND(p2.reb - p1.reb, 2) AS reb_diff,
    CASE 
        WHEN p2.reb > p1.reb THEN 'Improved'
        WHEN p2.reb < p1.reb THEN 'Declined'
        ELSE 'No Change'
    END AS performance_change
FROM player_stats p1
JOIN player_stats p2 ON p1.player_name = p2.player_name
WHERE p1.season = '2021-22' AND p2.season = '2022-23'
  AND p1.gp >= 40 AND p2.gp >= 40
ORDER BY reb_diff DESC
LIMIT 20;

-- Top 20 players with the highest average points per game between the 2018–19 and 2022–23 seasons
-- This query counts how many seasons each player appeared in, totals their games played and calculates their average points per game during that span
SELECT player_name,
       COUNT(DISTINCT season) AS seasons_played,
       SUM(gp) AS total_games,
       AVG(pts) AS avg_points
FROM player_stats
WHERE season BETWEEN '2018-19' AND '2022-23'
GROUP BY player_name
ORDER BY avg_points DESC
LIMIT 20;