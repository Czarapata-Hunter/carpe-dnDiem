const ROLES = {
  barbarian: '1053087504372338748',
  druid: '1053087508658933942',
  bard: '1053087506435952720',
  artificer: '1053087505769041960',
  bloodHunter: '1053087506901512233',
  cleric: '1053087507891376158',
  monk: '1053087500928831559',
  paladin: '1053087646869635122',
  sorcerer: '1053087505085378570',
  fighter: '1053087503608983582',
  warlock: '1053087512366682142',
  ranger: '1053087510235987968',
  wizard: '1053087502312943738',
  rogue: '1053087511192272926',
};

module.exports = {
  name: 'interactionCreate',
  async execute(interaction) {
    if (interaction.isButton()) {
    const role = interaction.guild.roles.cache.get(ROLES[interaction.customId]);
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
          console.log(err);
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
        .then(console.log(role.name, 'role added'))
        .catch((err) => {
          console.log(err);
          return interaction.reply({
            content: `Something went wrong. ${role.name} role was not added to you`,
            ephemeral: true,
          });
        });
  }
  }
}