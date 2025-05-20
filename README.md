# NBA Player Stats Analysis

## Project Overview

This project analyzes historical NBA player statistics across multiple seasons, focusing on player performance, usage, and improvements year-over-year. It demonstrates the full data workflow — from database schema design and SQL querying to data visualization with Tableau.

---

## Data Source

The dataset was sourced from Kaggle:  
[NBA Players Data](https://www.kaggle.com/datasets/justinas/nba-players-data)  

# Database Schema

The MySQL table `player_stats` holds all player data with columns such as player info, season, and key performance metrics.

---

## SQL Queries and Their Purpose

- **Top 30 scorers in 2022-23 season (minimum 40 games):**  
  Lists the highest scoring players during the most recent season, showing their points, team, and games played.

- **Top 30 players by usage percentage in 2022-23 (minimum 40 games):**  
  Shows players who had the highest share of team plays, indicating key offensive roles.

- **Top 10 players by true shooting percentage in 2022-23 (minimum 40 games):**  
  Highlights the most efficient scorers by accounting for field goals, 3-pointers, and free throws.

- **Year-over-year comparisons for points, assists, and rebounds (2021-22 vs 2022-23, minimum 40 games):**  
  These queries compare individual players’ stats across two seasons, identifying who improved, declined, or stayed consistent in key areas.

- **Top 20 players by average points per game from 2018-19 to 2022-23:**  
  Provides a broader look at consistent scoring performance over multiple seasons, showing total games and seasons played.

Each query includes filters to focus on players with significant playing time, ensuring the insights are meaningful.

---

## Tableau Dashboard

Using the same dataset, the Tableau dashboard provides:

- Interactive player rankings by scoring, usage, and efficiency metrics.  
- Visual comparison of player improvements across seasons.  
- Filters for season and minimum games played to explore different slices of data.  
- A responsive interface that handles large data volumes with Top N filtering.

---

## How to Use This Project

1. **Set up the database:**  
   Use `create_player_stats_table.sql` to create the table and import the cleaned CSV dataset.

2. **Run analysis queries:**  
   Use `player_stats.sql` to perform various performance analyses.


## Project Files

- `all_seasons_copy.csv` — The cleaned player stats dataset.  
- `create_player_stats_table.sql` — Script to create the database table.  
- `player_stats.sql` — Collection of analysis queries with explanations.  
