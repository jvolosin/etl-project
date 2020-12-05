while in db_design, pulled from branch API
resulted in a merge conflict then designation as (db_design|MERGING) as my branch
action:  
	git add create_tables_etl.sql 
	git commit 
	



kaldm@LAPTOP-QKIT2D96 MINGW64 ~/Desktop/my_repos/etl-project (db_design|MERGING)
$ git add create_tables_etl.sql

kaldm@LAPTOP-QKIT2D96 MINGW64 ~/Desktop/my_repos/etl-project (db_design|MERGING)
$ git status
On branch db_design
Your branch is up to date with 'origin/db_design'.

All conflicts fixed but you are still merging.
  (use "git commit" to conclude merge)

Changes to be committed:
        new file:   API Code/api_keys.py
        new file:   API Code/wineo.ipynb
        modified:   create_tables_etl.sql

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        ERD/Queries/
        ERD/schema_revised5.sql


kaldm@LAPTOP-QKIT2D96 MINGW64 ~/Desktop/my_repos/etl-project (db_design|MERGING)
$ git commit -m "work on merge conflict"
[db_design 11fc879] work on merge conflict