const { SlashCommandBuilder } = require('discord.js');
const { rollDice } = require('../lib/utils/diceLogic.js');

module.exports = {
  data: new SlashCommandBuilder()
    .setName('_rolld20')
    .setDescription('Rolls a d20 and displays the result'),
  async execute(interaction) {
    const diceRoll = rollDice();
    await interaction.reply(
      `${interaction.user.username} rolled a ${diceRoll}!`
    );
  },
};
