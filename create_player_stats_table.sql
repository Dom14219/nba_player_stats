create table player_stats (
	player_id INT PRIMARY KEY,
    player_name VARCHAR(30),
    team TEXT, 
    age INT,
    country TEXT,
    gp INT,
    pts DECIMAL(3,1),
    reb DECIMAL(3,1),
    ast DECIMAL(3,1),
    net_rating DECIMAL(3,1),
    usg_pct DECIMAL(4,3),
    ts_pct DECIMAL(4,3),
    season VARCHAR(7)
    );
    