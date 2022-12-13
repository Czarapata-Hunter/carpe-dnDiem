const pool = require('../utils/pool');
// const getRandomId = require('../utils/math');

module.exports = class Result {
  id;
  role;
  die_value;
  result;

  constructor({ id, role, die_value, result }) {
    this.id = id;
    this.role = role;
    this.die_value = die_value;
    this.result = result;
  }

  //   static getRandomId(rows) {
  //     return Math.floor(Math.random() * rows.length);
  //   }

  static async getResult(role, die_value) {
    const { rows } = await pool.query(
      `SELECT * from ${role} WHERE ${role}.die_value = ${die_value}`
    );
    console.log('AHHHHHHH', rows);
    rows.map((row) => new Result(row));
    const result = Math.floor(Math.random() * rows.length);
    return new Result(rows[result]);
  }
};
