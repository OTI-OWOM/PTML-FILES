# PTML-FILES

A structured SQL project containing database creation scripts, schema definitions, table population logic, indexing strategies, and query operations for the PTML system.

---

## 📁 Project Structure

| File | Description |
|------|-------------|
| `CREATE_DB.sql` | Creates the database instance |
| `CREATE_SCHEMA.sql` | Defines the database schema(s) |
| `CREATE_TABLES.sql` | Creates all core tables |
| `POPULATE_TABLES.sql` | Seeds the database with initial/sample data |
| `INDEXES.sql` | Defines indexes for query optimization |
| `JOINS.sql` | Contains join-based query operations |
| `CHECK_DUP.sql` | Detects and handles duplicate records |
| `BONUS_PTML.sql` | Supplementary/bonus SQL scripts |
| `PTML-FILES.slnx` | Visual Studio solution file |
| `.gitattributes` | Git line-ending and diff configuration |
| `.gitignore` | Specifies files excluded from version control |

---

## 🚀 Getting Started

### Prerequisites

- A SQL-compatible database engine (e.g., Microsoft SQL Server, PostgreSQL, or MySQL)
- A SQL client or IDE (e.g., SSMS, Azure Data Studio, DBeaver)

### Setup Order

Run the scripts in the following sequence to correctly initialize the database:

```sql
-- Step 1: Create the database
-- Run: CREATE_DB.sql

-- Step 2: Create the schema
-- Run: CREATE_SCHEMA.sql

-- Step 3: Create tables
-- Run: CREATE_TABLES.sql

-- Step 4: Populate tables with data
-- Run: POPULATE_TABLES.sql

-- Step 5: Apply indexes
-- Run: INDEXES.sql
```

### Optional Scripts

```sql
-- Run join queries
-- Run: JOINS.sql

-- Check for duplicate records
-- Run: CHECK_DUP.sql

-- Run bonus scripts
-- Run: BONUS_PTML.sql
```

---

## 🔄 Recent Changes

- Removed commented-out operations table SQL from `CREATE_TABLES.sql`
- Cleaned up `CHECK_DUP.sql` by removing unnecessary blank lines
- Added `.gitattributes` and `.gitignore` for proper repository configuration

---

## 🤝 Contributing

1. Fork the repository
2. Create a new branch (`git checkout -b feature/your-feature`)
3. Commit your changes (`git commit -m 'Add some feature'`)
4. Push to the branch (`git push origin feature/your-feature`)
5. Open a Pull Request

---

## 👤 Author

**OTI-OWOM**
- GitHub: [@OTI-OWOM](https://github.com/OTI-OWOM)

---

## 📄 License

This project is open source.
