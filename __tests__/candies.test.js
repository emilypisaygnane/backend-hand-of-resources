const pool = require('../lib/utils/pool');
const setup = require('../data/setup');
const request = require('supertest');
const app = require('../lib/app');

describe('candies routes', () => {
  beforeEach(() => {
    return setup(pool);
  });

  it('GET /candies should return list of all candies', async () => {
    const res = await request(app).get('/candies');
    expect(res.status).toBe(200);
    expect(res.body.length).toBe(4);
  });

  afterAll(() => {
    pool.end();
  });
});
