const { Pool } = require("pg");


const pool = new Pool({
    host: 'localhost',
    user: 'postgres', 
    port: 5432,
    database: 'bookdb',
    password: 'HabibPostgreSql123', 
    ssl: false,
});
module.exports = pool;