const pool = require('../utils/pool');
// const getRandomId = require('../utils/math');

module.exports = class Result {
  result;

  // constructor({ id, role, die_value, result }) {
  constructor({ result }) {
    // this.id = id;
    // this.role = role;
    // this.die_value = die_value;
    this.result = result;
  }

  //   static getRandomId(rows) {
  //     return Math.floor(Math.random() * rows.length);
  //   }

  static async getResult(role, die_value) {
    const { rows } = await pool.query(
      `SELECT * FROM ${role} WHERE ${role}.die_value = ${die_value} `
      // `SELECT ${role}.result FROM ${role} WHERE ${role}.die_value = ${die_value} `
    );
    console.log('AHHHHHHH', rows);
    // rows.map((row) => new Result(row));
    const result = Math.floor(Math.random() * rows.length);
    console.log('REAL MONSTERS', result);
    if (!rows[0]) return null;

    return new Result(rows[result]);
  }
};
