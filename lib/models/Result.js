const pool = require('../utils/pool');

module.exports = class Result {
  result;
  descriptor;

  constructor({ result, descriptor }) {
    this.result = result;
    this.descriptor = descriptor;
  }

  static async getResult(role, die_value) {
    const { rows } = await pool.query(
      `SELECT * FROM ${role} WHERE ${role}.die_value = ${die_value} `
    );
    const result = Math.floor(Math.random() * rows.length);
    if (!rows[0]) return null;

    return new Result(rows[result]);
  }
};
