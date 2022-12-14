const { SlashCommandBuilder } = require('discord.js');
const Result = require('../lib/models/Result.js');

async function rollDice() {
  const diceRoll = Math.ceil(Math.random() * 20);
  let die_value;
  if (diceRoll === 1) {
    return (die_value = 1);
  } else if (diceRoll >= 2 && diceRoll <= 8) {
    return (die_value = 2);
  } else if (diceRoll >= 9 && diceRoll <= 12) {
    return (die_value = 3);
  } else if (diceRoll >= 13 && diceRoll <= 19) {
    return (die_value = 4);
  } else if (diceRoll === 20) {
    return (die_value = 5);
  }
  return { die_value, diceRoll };
}

module.exports = {
  data: new SlashCommandBuilder().setName('test').setDescription('Rolls a d20'),
  async execute(interaction) {
    const { die_value, diceRoll } = await rollDice();
    // console.log('find die value', die_value);
    const role = 'cleric';
    // console.log('role the roll for your role', interaction.role);
    const message = await Result.getResult(role, die_value);
    // console.log('please god', result);
    await interaction.reply(
      `${
        interaction.user.username
      } rolled a ${diceRoll} and received the ${JSON.stringify(message.result)}`
    );
  },
};
