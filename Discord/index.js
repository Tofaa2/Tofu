const {Client, Collection} = require('discord.js');
const fs = require('fs');
const client = new Client({
    intents: [
        "GUILDS",
        "GUILD_BANS",
        "GUILD_MESSAGES"
    ]
});
const token = process.argv.find(arg => arg.startsWith('token=')).replace('token=', '');
const commandsFolder = fs.readdirSync('./commands/');
const eventFiles = fs.readdirSync('./events/').filter(file => file.endsWith('.js'));
const handlers = fs.readdirSync('./handlers/').filter(file => file.endsWith('.js'));

client.commands = new Collection();
client.events = new Collection();

(async () =>{
    console.log("Loading all handlers");
    for (file of handlers) {
        console.log(`Loading handler ${file}`);
        require(`./handlers/${file}`) (client);
    }
    client.handleEvents(eventFiles);
    client.handleCommands(commandsFolder);
    console.log("Handlers loaded");
});

client.login(token);



