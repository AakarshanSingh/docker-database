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

To start a specific service, use the following command:

```bash
./container.sh <service_name>
```

**Available service names:** `mongo`, `sql`, `postgres`

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
| **Server**   | Docker container name (`postgres` or `mysql`)                           |
| **Username** | Check the `docker-compose.yml` file (e.g., `prisma` or `root`)          |
| **Password** | Check the `docker-compose.yml` file (e.g., `prisma` or `root_password`) |
| **Database** | Docker container name (e.g., `prisma_db` or `my_database`)              |

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
postgresql://prisma:prisma@localhost:5432/<db_name>?schema=public
```

#### MySQL

```bash
mysql://root:root_password@localhost:3306/<db_name>
```
