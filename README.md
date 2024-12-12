# database exercise
Two examples of database exercises, one of which is the structure of an e-commerce website and the other is for hotel room reservations.
## <a name="er">📈 ER-diagram</a>
go to [erdplus](https://erdplus.com/standalone) and then click `menu` then `import...` then select *.erdplus to load er-diagram to edit/manage.

## <a name="docker">🐳 Docker</a>
Run the following command to access the created tables and data using the phpMyAdmin web management panel and by running the MySQL service.
```shell
docker compose up -d
```
>this command download images(take ~300MB of internet)

its automatically run *.sql files on database.
and then open http://localhost:8080/ to access the panel.

if panel require input auth field:
+ Server: `mysql`
+ Username: `root`
+ Password: `password`