/* eslint-disable no-console */
// const { token, clientId, guildId } = process.env['token', 'clientId', 'guildId'];
module.exports = {
  name: 'ready',
  once: false,
  execute(client) {
    // eslint-disable-next-line no-console
    console.log(`Ready! Logged in as ${client.user.tag}`);
    console.log('Bot Is online');
  const channel = client.channels.cache.get('1052282790986661928');
  channel.send({
    content: 'Select your class by clicking on the button',
    components: [
      new ActionRowBuilder().setComponents(
        new ButtonBuilder()
          .setCustomId('barbarian')
          .setLabel('Barbarian')
          .setStyle(ButtonStyle.Primary),
        new ButtonBuilder()
          .setCustomId('druid')
          .setLabel('Druid')
          .setStyle(ButtonStyle.Primary),
        new ButtonBuilder()
          .setCustomId('artificer')
          .setLabel('Artificer')
          .setStyle(ButtonStyle.Primary),
        new ButtonBuilder()
          .setCustomId('bloodHunter')
          .setLabel('Blood Hunter')
          .setStyle(ButtonStyle.Primary),
        new ButtonBuilder()
          .setCustomId('cleric')
          .setLabel('Cleric')
          .setStyle(ButtonStyle.Primary)
      ),
      new ActionRowBuilder().setComponents(
        new ButtonBuilder()
          .setCustomId('monk')
          .setLabel('Monk')
          .setStyle(ButtonStyle.Primary),
        new ButtonBuilder()
          .setCustomId('paladin')
          .setLabel('Paladin')
          .setStyle(ButtonStyle.Primary),
        new ButtonBuilder()
          .setCustomId('sorcerer')
          .setLabel('Sorcerer')
          .setStyle(ButtonStyle.Primary),
        new ButtonBuilder()
          .setCustomId('fighter')
          .setLabel('Fighter')
          .setStyle(ButtonStyle.Primary),
        new ButtonBuilder()
          .setCustomId('warlock')
          .setLabel('Warlock')
          .setStyle(ButtonStyle.Primary)
      ),
      new ActionRowBuilder().setComponents(
        new ButtonBuilder()
          .setCustomId('ranger')
          .setLabel('Ranger')
          .setStyle(ButtonStyle.Primary),
        new ButtonBuilder()
          .setCustomId('wizard')
          .setLabel('Wizard')
          .setStyle(ButtonStyle.Primary),
        new ButtonBuilder()
          .setCustomId('rogue')
          .setLabel('Rogue')
          .setStyle(ButtonStyle.Primary),
        new ButtonBuilder()
          .setCustomId('bard')
          .setLabel('Bard')
          .setStyle(ButtonStyle.Primary)
      ),
    ],
  });
  },
};


const clientId = process.env['clientId'];
const token = process.env['token'];
const guildId = process.env['guildId'];
const {
  Client,
  GatewayIntentBits,
  Routes,
  ActionRowBuilder,
  ButtonBuilder,
  ButtonStyle,
  REST,
} = require('discord.js');
const client = new Client({ intents: [GatewayIntentBits.Guilds, GatewayIntentBits.GuildMembers] });
const rest = new REST({ version: '10' }).setToken(token);


