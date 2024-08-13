World Cup Database
This project is part of the requirements to earn a certification. It involves creating a Bash script to manage and analyze World Cup game data using PostgreSQL.

Project Overview
The World Cup Database project requires you to:

Create a PostgreSQL Database: Set up a PostgreSQL database to store information about World Cup games.
Develop a Bash Script: Write a Bash script to load data from CSV files into the database.
Query the Database: Use SQL queries to retrieve useful statistics from the database.
Features
Data Insertion: The script reads data from CSV files and inserts it into the PostgreSQL database.
Data Queries: Perform various SQL queries to analyze the data and retrieve statistics about World Cup games.
Database Management: Includes truncating tables, inserting new data, and ensuring data integrity.
Getting Started
Prerequisites
PostgreSQL: Ensure PostgreSQL is installed and running on your system.
Bash: The script is written in Bash, so you need a Bash environment.
Setup
Database Setup: Create the necessary tables in your PostgreSQL database. You might have tables like games and teams.

Script Configuration: Update the Bash script to use the correct database credentials and file paths.

CSV Files: Prepare the CSV files with World Cup game data. Ensure that they are formatted correctly for the script to read.

Running the Script
Load Data: Run the script to insert data from the CSV files into the database.

bash
Copy code
./insert_data.sh
Query Data: Use SQL queries to retrieve and analyze statistics. You can use the psql command-line tool to run these queries.

bash
Copy code
psql --username=your_username --dbname=worldcup -t --no-align -c "YOUR_QUERY_HERE"
Sample Queries
Total Number of Goals: Find the total number of goals scored in all games.

sql
Copy code
SELECT SUM(winner_goals + opponent_goals) FROM games;
Most Goals Scored in a Single Game: Retrieve the maximum number of goals scored by one team in a single game.

sql
Copy code
SELECT MAX(GREATEST(winner_goals, opponent_goals)) FROM games;
Teams in the 2014 Eighth-Final Round: List all unique teams that played in the 'Eighth-Final' round of the 2014 tournament.

sql
Copy code
SELECT DISTINCT t.name
FROM games g
JOIN teams t ON t.team_id = g.winner_id OR t.team_id = g.opponent_id
WHERE g.year = 2014 AND g.round = 'Eighth-Final';
Troubleshooting
Errors with SQL Queries: Ensure the database schema matches the queries. Check column names and data types.
Script Errors: Verify file paths and permissions. Ensure the CSV files are correctly formatted.
License
This project is licensed under the MIT License - see the LICENSE file for details.

Acknowledgments
This project is part of the certification requirements.
Thanks to the PostgreSQL community for their robust database solutions.
