module.exports = {
  name: 'ready',
  once: false,
  execute(client) {
    // eslint-disable-next-line no-console
    console.log(`Ready! Logged in as ${client.user.tag}`);
  },
};
