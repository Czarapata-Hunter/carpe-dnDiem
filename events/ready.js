// const { Events } = require('discord.js');

module.exports = {
  name: 'ready',
  once: false,
  execute(client) {
    console.log(`Ready! Logged in as ${client.user.tag}`);
  },
};
