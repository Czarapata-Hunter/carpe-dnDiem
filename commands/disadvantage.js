const { SlashCommandBuilder } = require('discord.js');

module.exports = {
  data: new SlashCommandBuilder()
    .setName('disadvantage')
    .setDescription('gives the user disadvantage'),
  async execute(interaction) {
    const diceRoll = Math.ceil(Math.random() * 20);
    const diceRollDadv = Math.ceil(Math.random() * 20);

    await interaction.reply(
      `${interaction.user.username} rolls with disadvantage! ${diceRoll} and ${diceRollDadv}! `
    );
  },
};
