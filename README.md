# Docker Service Manager

Start MongoDB, MySQL, and PostgreSQL with GUI Database interfaces.

## Prerequisites

- Ensure that [Docker](https://www.docker.com/get-started) is installed and running on your system.
- The script requires `sudo` privileges to execute Docker commands.

## Usage

To use the script, clone this repository and navigate to the directory where the script is located.

### Commands

#### Cloning the Repository

Clone the repository and navigate to the directory:

```bash
git clone https://github.com/AakarshanSingh/docker-database.git
cd docker-database
```

#### Starting Services

To start a specific service, run the script and select from the menu:

```bash
./container.sh
```

The script will display a menu with options:
1. MongoDB
2. PostgreSQL
3. MySQL
4. Stop all services

Enter the corresponding number to start the desired database or stop all services.

#### Stopping Running Containers

To stop all running containers, use the following command:

```bash
./container.sh stop
```

## Accessing the GUIs

### MongoDB GUI

Visit the following URL in your browser:

```
http://localhost:8081
```

**Credentials:**

- **Username:** `admin`
- **Password:** `pass`

### SQL GUI (MySQL and PostgreSQL)

Visit the following URL in your browser:

```
http://localhost:8080
```

| Parameter    | Description                                                             |
| ------------ | ----------------------------------------------------------------------- |
| **System**   | Choose the database name from options                                   |
| **Server**   | Docker container name (`postgres_container` or `mysql_container`)      |
| **Username** | Check the `docker-compose.yml` file (e.g., `postgres_user` or `mysql_user`) |
| **Password** | Check the `docker-compose.yml` file (e.g., `postgres_password` or `mysql_password`) |
| **Database** | Check the `docker-compose.yml` file (e.g., `postgres_database` or `mysql_database`) |

## Custom User and Password for Database

To customize the database user and password, modify the environment variables in the `docker-compose.yml` file and connect using those credentials.

### Connection Strings

Replace `<db_name>` with your database name in the following connection strings:

#### MongoDB

```bash
mongodb://localhost:27017/<db_name>
```

#### PostgreSQL

```bash
postgresql://postgres_user:postgres_password@localhost:5432/<db_name>?schema=public
```

#### MySQL

```bash
mysql://mysql_user:mysql_password@localhost:3306/<db_name>
```
