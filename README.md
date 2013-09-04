SICONV Analytics

This project is under development by IT4dGroup and it is not finished, use it by your own risk.

Links:
https://www.convenios.gov.br/portal/

if you want to sponsor this project, contact us creating a issue/ticket.

Restore postgresql9.2-dw-siconv.backup on Mac

cd /Library/PostgreSQL/9.2/bin

./pg_restore -i -h localhost -p localhost -p 5432 -U postgres -d siconv -v "/Users/caiomsouza/siconv/postgresql9.2-dw-siconv.backup"

create backup

pg_dump -i -h localhost -p 5432 -U postgres -F c -b -v -f 
"/usr/local/backup/10.70.0.61.backup" old_db
restore from backup

pg_restore -i -h localhost -p 5432 -U postgres -d old_db -v 
"/usr/local/backup/10.70.0.61.backup"
important to set -h localhost - option
