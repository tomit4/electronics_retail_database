# Electronics Retail Database

This repository contains a sample MariaDB database for an electronics retail
system. It includes the SQL script (`electronics_retail.sql`) to create,
populate, update, and delete data from the database. The code here is meant as a
supplementary resource for Study.com's
[Database Programming](https://study.com/academy/course/computer-science-204-database-programming.html)
Assignment 1.

## Requirements

Before running the database, ensure you have the following installed:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)
- [Git](https://git-scm.com/)

## Setup Instructions

1. **Clone the repository:**

```sh
git clone <this-repository-url>
cd electronics_retail_database
```

2. **Start MariaDB container**

If you have `docker-compose` or `docker compose` available, you can simply run
the provided `docker-compose.yml`:

```sh
docker-compose up -d
```

```sh
docker compose up -d
```

If you'd rather start the database directly without compose, you can simply run:

```sh
docker run -d --name mariadb -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 mariadb:latest
```

3. **Copy the SQL script into the container:**

```sh
docker cp ./electronics_retail.sql mariadb:/tmp/electronics_retail.sql
```

4. **Connect to the MariaDB container and run the script:**

```sh
docker exec -it mariadb mariadb -u root -p
```

Once connected, run:

```sql
source /tmp/electronics_retail.sql;
```

5. **Verify the database:**

You can inspect the database and its tables using commands such as:

```sql
SHOW DATABASES;
USE electronics_retail;
SHOW TABLES;
SELECT * FROM suppliers;
```
