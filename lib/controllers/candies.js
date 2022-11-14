const { Router } = require('express');
const { Candies } = require('../models/Candies');

module.exports = Router()
  .get('/', async (req, res, next) => {
    try {
      const data = await Candies.getAll();
      res.json(data);
    } catch (e) {
      next(e);
    }
  });
