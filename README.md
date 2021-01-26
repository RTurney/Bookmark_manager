# BOOKMARK MANAGER

## User stories


> "As a user,
> So that I can see my bookmarks,
> I would like the webpage to show a list of my bookmarks"

Domain modelling sheet:
https://docs.google.com/document/d/1K6v9FamjWfP_zbuEVz4bkXWPAzFOsBsuaZXNNXVCtm8/edit?usp=sharing

Domain model sequence diagram:
https://playground.diagram.codes/d/sequence


### Setting up SQL database:
* Connect to psql
* Create the database using the psql command CREATE DATABASE bookmark_manager;
* Connect to the database using the pqsl command \c bookmark_manager;
* Run the query we have saved in the file 01_create_bookmarks_table.sql

### Setting up test SQL database:
* Connect to psql
* Create the database using the psql command CREATE DATABASE bookmark_manager_test;
* Connect to the database using the pqsl command \c bookmark_manager_test;
* Run the query we have saved in the file 01_create_bookmarks_table.sql
