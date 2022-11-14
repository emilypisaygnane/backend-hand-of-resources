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

  it('GET /candies/:id returns a single id', async () => {
    const res = await request(app).get('/candies/1');
    expect(res.status).toBe(200);
    expect(res.body).toBe({
      id: expect.any(String),
      name: expect.any(String),
      type: expect.any(String),
      manufacturer: expect.any(String)
    });
  });

  afterAll(() => {
    pool.end();
  });
});
