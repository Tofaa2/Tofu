const config = require('../config.json');
const {REST} = require('@discordjs/rest')
const {Routes} = require('discord-api-types/v9');
const {token} = process.argv.find(arg => arg.startsWith('token=')).replace('token=', '');
const fs = require('fs');
const clientId = config.user_id;
const guildId = config.server_id;



module.exports = (client) {
    client.handleCommands = async (commandFolder) => {
        client.commandArray = [];
        for (folder of commandFolder) {
            const commandFiles = fs.readdirSync(`./commands/${folder}`).filter(file => file.endsWith('.js'));
            for (command of commandFiles) {
                const commandData = require(`../commands/${command}`);
                client.commands.set(commandData.data.name, commandData);
                client.commandArray.push(command.data.toJSON());
            }
        }
        
        const rest = new REST({version: '9'}).setToken(token);

        (async () => {
            try {
                console.log("Loading all commands");

                await rest.put(
                    Routes.applicationGuildCommands(clientId, guildId), 
                    {
                        body: client.commandArray
                    }    
                )
                console.log("Commands loaded");
            }
            catch (err) {
                console.log(err);
            }
        })();


    }


}