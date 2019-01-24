Daily Fantasy Champs

Daily Fantasy Champs is a weekly Fantasy Football game.  Every week, users can choose between predetermined lineups and enter them in different contests.  Each lineup consists of a different combination of players.  Points are assigned based on the individual statistic of the players.  Lineups will be scored on the aggregate of the individual player points.  The Lineup with the highest score wins the contest.  Every week there will be different combinations of players to make up the lineups.  

Frontend Repo
https://github.com/ceconley/daily-fantasy-champs-client

Deployed Sites
Client: https://ceconley.github.io/daily-fantasy-champs-client/
API: https://daily-fantasy-champs-rails-api.herokuapp.com/

Technologies Used
•	Ruby on Rails
•	PostgreSQL

Planning
I started by writing out user stories.  Once I had these, I drew up some wireframes of the different views I wanted to display.  After that I drew and ERD of what the relationships on the backend would look like. I then broke everything into small tasks and put them into a trello board.  Once all my planning docs were in place, I started building the backend.

ERD
public/erd.jpg

API Endpoints
Action | Path | Header Contents | Body Contents
Authentication:
POST | /sign-up | Header- N/A | Body- Credentials
POST | /sign-on | Header-N/A |Body- Credentials
PATCH | /change-password | Header- Token |Body- Password
DELTE | /sign-out | Header- Token |Body- N/A
Contest Actions:
POST | /contests | Header- Token | Body- name, entrants_total, entrants_current, winner
PATCH | /contests/:id |Header- Token |Body- id, name, entrants_total, entrants_current, winner
DELETE | /contests/:id |Header- Token |Body- id
GET | /contests | Token |Header- N/A | Body- N/A
GET | /contests/:id |Header- Token |Body- id

Lineup Actions:
POST | /lineups | Header- Token | Body- qb, rb1, rb2, wr1, wr2, wr3, te, flex, dst, score
PATCH | /lineups /:id |Header- Token |Body- id, qb, rb1, rb2, wr1, wr2, wr3, te, flex, dst, score
DELETE | /lineups /:id |Header- Token |Body- id
GET | /lineups | Token |Header- N/A | Body- N/A
GET | /lineups /:id |Header- Token |Body- id

Entry Actions:
POST | /entries | Header- Token | Body- user_id, lineup_id, contest_id
PATCH | /entries /:id |Header- Token |Body- id, user_id, lineup_id, contest_id 
DELETE | /entries /:id |Header- Token |Body- id
GET | /entries | Token |Header- N/A | Body- N/A
GET | /entries /:id |Header- Token |Body- id



Installation Instructions
•	Fork
•	Clone
•	Checkout to Dev branch
•	Run ```bundle install```


Future Version Features
-Customizable lineups based on a Salary Cap system.
-Connection to 3rd party api for real time stats and scoring
-Storing Money in account and paid contests
