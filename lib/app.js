const express = require('express');

const app = express();

// Built in middleware
app.use(express.json());

// App routes
app.use('/candies', require('../lib/controllers/candies'));
app.use('/cookies', require('../lib/controllers/cookies'));
app.use('/games', require('../lib/controllers/games'));
app.use('/movies', require('../lib/controllers/movies'));
app.use('/purses', require('../lib/controllers/purses'));


// Error handling & 404 middleware for when
// a request doesn't match any app routes
app.use(require('./middleware/not-found'));
app.use(require('./middleware/error'));

module.exports = app;
