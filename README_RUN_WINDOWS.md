## Run on Windows (no IDE required)

This is a PHP + MySQL app.

### Option 1: XAMPP (easiest)

- Install XAMPP.
- Copy this project folder to: `C:\xampp\htdocs\loan-management-system-main`
- Start **Apache** and **MySQL** in XAMPP Control Panel.
- Import the database:
  - Open `http://localhost/phpmyadmin`
  - Create a database named `loan_db`
  - Import `database/loan_db.sql`
- Open:
  - `http://localhost/loan-management-system-main/login.php`

### Option 2: PHP built-in server (dev only)

Prereq: PHP installed and available in PATH.

1. Import the DB in MySQL (XAMPP MySQL or any MySQL server).
2. Start the app server from the project folder:

```powershell
.\run.ps1
```

Then open `http://localhost:8000/login.php`.

### Database connection

Default connection is:
- host: `localhost`
- user: `root`
- pass: (empty)
- db: `loan_db`

You can override via environment variables:

```powershell
$env:DB_HOST="127.0.0.1"
$env:DB_USER="root"
$env:DB_PASS=""
$env:DB_NAME="loan_db"
.\run.ps1
```

