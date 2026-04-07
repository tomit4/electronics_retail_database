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

## Assignment 2

Assignment 2 requires the use of various `.sql` files to generate reports
specific to the electronics retail database. For ease of use, a `populate.sh`
script is provided to copy these scripts into the docker container's
environment. Simply invoke the script:

```sh
./populate.sh
```

Once done, you can connect to the MariaDB database, and source the desired files
to see the generated reports. First, soure the `insert_more_dummy_data.sql` file
to populate the database with data relevant to the assignment. Then, invoke the
following `source` invocations are listed in the order they are presented within
Assignment 2's prompt:

```sql
source /tmp/insert_more_dummy_data.sql;
```

```sql
source /tmp/list_all_products.sql;
```

```sql
source /tmp/list_out_of_stock_products.sql;
```

```sql
source /tmp/list_products_from_100_to_500.sql;
```

```sql
source /tmp/list_total_no_of_products_by_category.sql;
```

```sql
source /tmp/list_avg_price_of_products_per_category.sql;
```

```sql
source /tmp/join_products_and_supliers.sql;
```

```sql
source /tmp/join_products_categories_orders.sql;
```

```sql
source /tmp/left_join_suppliers_products.sql;
```

```sql
source /tmp/full_outer_join_products_suppliers.sql;
```

```sql
source /tmp/having_productgs_more_than_10.sql;
```
