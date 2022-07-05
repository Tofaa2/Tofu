const {SlashCommandBuilder} = require('@discordjs/builders');
const { client } = require('../../handlers/commandHandler');

module.exports = {
    data: new SlashCommandBuilder().setName('ping').setDescription('Pong!'),
    async execute (interaction) {
        await interaction.reply(`Pong`)
    }
}