const { SlashCommandBuilder } = require('discord.js');
// const Result = require('../lib/models/Result.js');

// const min = 1;
// const max = 20;

module.exports = {
  data: new SlashCommandBuilder()
    .setName('die20')
    .setDescription('Rolls a d20'),
  async execute(interaction) {
    const diceRoll = Math.ceil(Math.random() * 20);
    // const result = await Result.getResult('barbarian', 1);
    // console.log('RESULT', result);
    await interaction.reply(
      `${interaction.user.username} rolled a ${diceRoll}`
    );
  },
};
