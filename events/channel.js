const { token, clientId, guildId } = require('../config.json');

const {
  Client,
  GatewayIntentBits,
  Routes,
  //   ActionRowBuilder,
  //   ButtonBuilder,
  //   ButtonStyle,
  REST,
  //   RoleManager,
  //   ChannelType,
} = require('discord.js');

const client = new Client({
  intents: [
    GatewayIntentBits.Guilds,
    GatewayIntentBits.GuildMessages,
    GatewayIntentBits.MessageContent,
  ],
});
const rest = new REST({ version: '10' }).setToken(token);

const commands = [];

client.on('ready', async () => {
  console.log('classes are ready to assign');
  //   const roles = [];
  //   client.guilds.cache.forEach((guild) => {
  //     roles.push(
  //       ...guild.roles.cache.map((role) => {
  //         role.name, role.id;
  //       })
  //     );
  //   });
  //   console.log(roles, '&&&&&&&&&&&&&&');
  //     for (const role of roles) {
  //   //     const roles = RoleManager.guild.roles(`${role}`);
  //   //     ROLES.push(roles);
  //   //   }
  //   console.log(client.guilds, '$$$$$$$$$$$$$$$');
  //   const channel = client.channelCreate({
  //     name: 'Roles',
  //     type: ChannelType.GuildAnnouncement,
  //   });
  //   console.log(channel, 'JJJJJJJJJJJJJJJ');
});

async function main() {
  try {
    await rest.put(Routes.applicationGuildCommands(clientId, guildId), {
      body: commands,
    });
    client.login(token);
  } catch (err) {
    console.log(err, '++++++++++++++++++');
  }
}

main();
