const pool = require('../lib/utils/pool');
const setup = require('../data/setup');
const Result = require('../lib/models/Result');

describe('backend random result', () => {
  beforeEach(() => {
    return setup(pool);
  });
  it('Result.getResult should return a random crit fail from the barbarian table', async () => {
    const result = await Result.getResult('barbarian', 1);
    expect(result).toMatchInlineSnapshot(`
      Result {
        "die_value": 1,
        "id": "1",
        "result": "In the midst of your rage you shrivel up and start to cry",
        "role": undefined,
      }
    `);
  });
  afterAll(() => {
    pool.end();
  });
});
