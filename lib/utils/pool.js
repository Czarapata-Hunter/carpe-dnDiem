const { Pool } = require('pg');
// import { sqlite3 } from 'sqlite3';

// const connection = sqlite3.connect("my_database")
const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: process.env.PGSSLMODE && { rejectUnauthorized: false },
});

pool.on('connect', () => console.info('🐘 Postgres connected'));
// connection.on('connect', () => console.info('🐘 Postgres connected'));

module.exports = pool;
