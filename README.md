# SQLFormer

**SQLFormer** is a declarative framework that emulates transformer inference entirely using standard SQL queries. This repository contains the implementation, full theoretical write-up, SQL scripts, and benchmarking experiments.

---

## 🔧 Project Structure

```
SQLFormer/
├── code/
│   ├── sql/
│   │   ├── schema.sql
│   │   ├── attention.sql
│   │   ├── ffn.sql
│   │   └── layernorm.sql
├── paper/
│   └── SQLFormer.pdf
├── LICENSE
└── README.md
```

---

## 🚀 Getting Started

1. Load `schema.sql` into your SQL engine (PostgreSQL recommended).
2. Execute `attention.sql`, `layernorm.sql`, and `ffn.sql` to simulate one forward pass of the transformer.
3. All components are designed to run in standard SQL (Postgres, DuckDB, SQLite compatible).

---

## 📄 Paper

The full theory and experimental evaluation are in `paper/SQLFormer.pdf`.

---

## 📜 License

MIT License.
