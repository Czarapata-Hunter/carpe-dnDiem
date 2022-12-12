const pool = require('../utils/pool');
import { getRandomId } from '../utils/math.js';

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

  static async getResult(role, die_value) {
    const { rows } = await pool.query(
      `SELECT * from ${role} WHERE ${role}.die_value = ${die_value}`,
      [role, die_value]
    );
    rows.map((row) => new Result(row));
    const result = await getRandomId(rows);
    return result;
  }
};
