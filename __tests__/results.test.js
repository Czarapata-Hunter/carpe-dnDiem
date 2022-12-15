const pool = require('../lib/utils/pool');
const setup = require('../data/setup');
const Result = require('../lib/models/Result');

describe.skip('backend random result', () => {
  beforeEach(() => {
    return setup(pool);
  });
  it('Result.getResult should return a random crit fail from the barbarian table', async () => {
    const result = await Result.getResult('barbarian', 1);
    expect(result).toEqual({
      result: expect.any(String),
    });
  });
  afterAll(() => {
    pool.end();
  });
});
