const { SlashCommandBuilder } = require('discord.js');
const Result = require('../lib/models/Result.js');
const { rollDice, getDieValue } = require('../lib/utils/diceLogic.js');

module.exports = {
  data: new SlashCommandBuilder()
    .setName('artificer')
    .setDescription(
      'Rolls a d20 and displays a message tailored for the chosen class'
    ),
  async execute(interaction) {
    const diceRoll = rollDice();
    const die_value = getDieValue(diceRoll);
    const role = 'artificer';
    const message = await Result.getResult(role, die_value);
    await interaction.reply(
      `${interaction.user.username} the ${JSON.stringify(
        message.descriptor
      )} ${role} rolled a ${diceRoll} and received the message ${JSON.stringify(
        message.result
      )}`
    );
  },
};
