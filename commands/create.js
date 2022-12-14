// const { token, clientId, guildId } = require('../config.json');
const {
  //   Client,
  //   GatewayIntentBits,
  //   Routes,
  //   ActionRowBuilder,
  //   ButtonBuilder,
  //   ButtonStyle,
  //   REST,
  SlashCommandBuilder,
  Colors,
  Role,
} = require('discord.js');
// const { execute } = require('./roll.js');
// // const { GuildRoleCreate } = require('discord.js/src/util/Events.js');
// const client = new Client({ intents: [GatewayIntentBits.Guilds] });
// const rest = new REST({ version: '10' }).setToken(token);
// let guild = this.guildId;
module.exports = {
  data: new SlashCommandBuilder()
    .setName('classes')
    .setDescription('imports dnd classes as roles'),
  async execute(interaction) {
    // const guild = this.guildId;
    await interaction.guild.roles
      .create({
        name: 'monk',
        reason: 'for punching',
      })
      .catch(console.error);
    await interaction.guild.roles
      .create({
        name: 'wizard',
        reason: 'fer blastin',
      })
      .catch(console.error);
    await interaction.guild.roles
      .create({
        name: 'fighter',
        reason: 'fer fightin',
      })
      //   .then(console.log(Role.monk.id))
      .catch(console.error);
    await interaction.reply('Youve got roles');
  },
};
