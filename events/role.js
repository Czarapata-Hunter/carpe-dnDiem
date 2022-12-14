const { token, clientId, guildId } = require('../config.json');

const {
  Client,
  GatewayIntentBits,
  Routes,
  ActionRowBuilder,
  ButtonBuilder,
  ButtonStyle,
  REST,
} = require('discord.js');
// const ready = require('./ready.js');
// const interactionCreate = require('./interactionCreate.js');
// const { GuildRoleCreate } = require('discord.js/src/util/Events.js');

const client = new Client({ intents: [GatewayIntentBits.Guilds] });
const rest = new REST({ version: '10' }).setToken(token);

// GuildRoleCreate{
//   name: 'monk',
//   color: 255,
// };
// console.log(role(monk));

const commands = [];

const ROLES = {
  barbarian: '1051949534156181544',
  druid: '1051946604413845625',
  artificer: '1052287888856973393',
  bloodHunter: '1052288416991158404',
  cleric: '1052288892662984837',
  monk: '1052288995213721701',
  paladin: '1052289133403451392',
  sorcerer: '1052289411791990876',
  fighter: '1052289658429657229',
  warlock: '1052289828579987476',
  ranger: '1052289969521184790',
  wizard: '1052290146982187149',
};

client.on('ready', async () => {
  console.log('Bot Is online');
  const channel = client.channels.cache.get('1052282790986661928');
  // console.log(channel);
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
          .setStyle(ButtonStyle.Primary)
      ),
    ],
  });
});

client.on('interactionCreate', async (interaction) => {
  if (interaction.isButton()) {
    const role = interaction.guild.roles.cache.get(ROLES[interaction.customId]);
    console.log(interaction, '@@@@@@@@@@@@@@@@');
    if (!role)
      return await interaction.reply({
        content: 'Role not found, try using the /classes command!',
        ephemeral: true,
      });

    const hasRole = interaction.member.roles.cache.has(role.id);
    if (hasRole)
      return interaction.member.roles
        .remove(role)
        .then((member) =>
          interaction.reply({
            content: `${role.name} role was removed from ${member}`,
            ephemeral: true,
          })
        )
        .catch((err) => {
          console.log(err, '================');
          return interaction.reply({
            content: `Something went wrong. ${role.name} role was not removed from you`,
            ephemeral: true,
          });
        });
    else
      return interaction.member.roles
        .add(role)
        .then((member) =>
          interaction.reply({
            content: `${role} role was added to ${member}`,
            ephemeral: true,
          })
        )
        .then(console.log(role.name, '00000000000000000000'))
        .catch((err) => {
          console.log(err);
          return interaction.reply({
            content: `Something went wrong. ${role.name} role was not added to you`,
            ephemeral: true,
          });
        });
  }
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
