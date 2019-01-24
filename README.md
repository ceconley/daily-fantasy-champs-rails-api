# Daily Fantasy Champs

Daily Fantasy Champs is a weekly Fantasy Football game.  Every week, users can choose between predetermined lineups and enter them in different contests.  Each lineup consists of a different combination of players.  Points are assigned based on the individual statistic of the players.  Lineups will be scored on the aggregate of the individual player points.  The Lineup with the highest score wins the contest.  Every week there will be different combinations of players to make up the lineups.  

#### Frontend Repo
[https://github.com/ceconley/daily-fantasy-champs-client](https://github.com/ceconley/daily-fantasy-champs-client)

#### Deployed Sites
Client: [https://ceconley.github.io/daily-fantasy-champs-client/](https://ceconley.github.io/daily-fantasy-champs-client/) 

API: [https://daily-fantasy-champs-rails-api.herokuapp.com/](https://daily-fantasy-champs-rails-api.herokuapp.com/)

### Technologies Used
*	Ruby on Rails
*	PostgreSQL

### Planning
I started by writing out user stories.  Once I had these, I drew up some wireframes of the different views I wanted to display.  After that I drew and ERD of what the relationships on the backend would look like. I then broke everything into small tasks and put them into a trello board.  Once all my planning docs were in place, I started building the backend.

### ERD
[ERD Image](https://github.com/ceconley/daily-fantasy-champs-rails-api/blob/master/public/erd.jpg)

### API Endpoints

##### Authentication
| Action| Path             | Header Contents  | Body Contents  |
| ------|------------------| -----------------|----------------|
| POST  | /sign-up         | N/A              | Credentials    |
| POST  | /sign-on         | N/A              | Credentials    |
| PATCH | /change-password | Token            | Password       |
| DELTE | /sign-out        | Token            | N/A            |



##### Contest


| Action | Path          | Header Contents | Body Contents |
| -------|---------------| ----------------|---------------|
| POST   | /contests     | Token           | name, entrants_total, entrants_current, winner  |
| PATCH  | /contests/:id | Token           | id, name, entrants_total, entrants_current, winner  |
| DELETE | /contests/:id | Token           | id           |
| GET    | /contests     | N/A             | N/A          |
| GET    | /contests/:id | N/A             | id           |


##### Lineup


| Action | Path          | Header Contents | Body Contents |
| -------|---------------| ----------------|---------------|
| POST   | /lineups      | Token           | qb, rb1, rb2, wr1, wr2, wr3, te, flex, dst, score  |
| PATCH  | /lineups/:id  | Token           | id, qb, rb1, rb2, wr1, wr2, wr3, te, flex, dst, score  |
| DELETE | /lineups/:id  | Token           | id            |
| GET    | /lineups      | N/A             | N/A           |
| GET    | /lineups/:id  | N/A             | id            |


##### Entry


| Action | Path          | Header Contents | Body Contents |
| -------|---------------| ----------------|---------------|
| POST   | /entries      | Token           | user_id, lineup_id, contest_id  |
| PATCH  | /entries/:id  | Token           | id, user_id, lineup_id, contest_id  |
| DELETE | /entries/:id  | Token           | id            |
| GET    | /entries      | N/A             | N/A           |
| GET    | /entries/:id  | N/A             | id            |



### Installation Instructions
*	Fork
*	Clone
*	Checkout to Dev branch
*	Run ```bundle install```


### Future Version Features
* Customizable lineups based on a Salary Cap system.
* Connection to 3rd party api for real time stats and scoring
* Storing Money in account and paid contests