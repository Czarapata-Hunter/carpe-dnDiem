const { SlashCommandBuilder } = require('discord.js');
module.exports = {
  data: new SlashCommandBuilder()
    .setName('classes')
    .setDescription('imports dnd classes as roles'),
  async execute(interaction) {
    await interaction.guild.roles
      .create({
        name: 'monk',
        color: 0x99aab5,
        reason: 'for punching',
      })
      .catch(console.error);
    await interaction.guild.roles
      .create({
        name: 'wizard',
        color: 0x1abc9c,
        reason: 'fer blastin',
      })
      .catch(console.error);
    await interaction.guild.roles
      .create({
        name: 'fighter',
        color: 0xe67e22,
        reason: 'fer fightin',
      })
      .catch(console.error);
    await interaction.guild.roles
      .create({
        name: 'barbarian',
        color: 0xed4245,
        reason: 'fer ragin',
      })
      .catch(console.error);
    await interaction.guild.roles
      .create({
        name: 'sorcerer',
        color: 0xeb459e,
        reason: 'fer sorcerin',
      })
      .catch(console.error);
    await interaction.guild.roles
      .create({
        name: 'artificer',
        color: 0x979c9f,
        reason: 'fer buildin',
      })
      .catch(console.error);
    await interaction.guild.roles
      .create({
        name: 'bard',
        color: 0xf1c40f,
        reason: 'fer swoonin',
      })
      .catch(console.error);
    await interaction.guild.roles
      .create({
        name: 'bloodhunter',
        color: 0x992d22,
        reason: 'fer bleedin',
      })
      .catch(console.error);
    await interaction.guild.roles
      .create({
        name: 'cleric',
        color: 0xc27c0e,
        reason: 'fer oh lawdy lawdin',
      })
      .catch(console.error);
    await interaction.guild.roles
      .create({
        name: 'druid',
        color: 0x57f287,
        reason: 'fer growin',
      })
      .catch(console.error);
    await interaction.guild.roles
      .create({
        name: 'paladin',
        color: 0xfee75c,
        reason: 'fer growin',
      })
      .catch(console.error);
    await interaction.guild.roles
      .create({
        name: 'ranger',
        color: 0x1f8b4c,
        reason: 'fer huntin',
      })
      .catch(console.error);
    await interaction.guild.roles
      .create({
        name: 'rogue',
        color: 0x71368a,
        reason: 'fer sneakin',
      })
      .catch(console.error);
    await interaction.guild.roles
      .create({
        name: 'warlock',
        color: 0x5865f2,
        reason: 'fer sneakin',
      })
      .catch(console.error);
    await interaction.reply('Youve got roles');
  },
};
