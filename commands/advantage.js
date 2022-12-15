const { SlashCommandBuilder } = require('discord.js');

module.exports = {
  data: new SlashCommandBuilder()
    .setName('_advantage')
    .setDescription('gives the user advantage'),
  async execute(interaction) {
    const diceRoll = Math.ceil(Math.random() * 20);
    const diceRollAdv = Math.ceil(Math.random() * 20);

    await interaction.reply(
      `${interaction.user.username} rolls with advantage! ${diceRoll} and ${diceRollAdv}! `
    );
  },
};
