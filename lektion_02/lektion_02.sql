CREATE TABLE missions (id INTEGER, code_name TEXT, operative_id INTEGER, total_cost DECIMAL(15,2), PRIMARY KEY(id), FOREIGN KEY (operative_id) REFERENCES operatives(id));
INSERT INTO missions VALUES (1, "Knight of the Phoenix", 1, 6246382.43);
INSERT INTO missions VALUES (2, "Deadly Maneuvers", 1, 4568893.53);

SELECT missions.code_name, operatives.name FROM missions LEFT JOIN operatives ON missions.operative_id = operatives.id;