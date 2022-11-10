const pool = require('../utils/pool');

class Candies {
  id;
  name;
  type;
  manufacturer;

  constructor(rows) {
    this.id = rows.id;
    this.name = rows.name;
    this.type = rows.type;
    this.manufacturer = rows.manufacturer;
  }

  static async getAll() {
    const { rows } = await pool.query('SELECT * FROM candies');
    return rows.map((row) => new Candies(row));
  }
}

module.exports = { Candies };
