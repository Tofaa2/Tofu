module.exports = {
    name: 'interactionCreate',
    async execute(interaction) {

        if (!interaction.isCommand()) return;
        const command = client.commands.get(interaction.commandName);
        if (!command) return;

        try {
            await command.execute(interaction);
        }
        catch (err) {
            console.log(err);
            await interaction.reply({
                content: 'An error occurred while executing this command.',
                ephemeral: true
            })
        }
    },  
};