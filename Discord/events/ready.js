module.exports = {
    name: 'ready',
    once: true,
    async execute() {
        console.log(`Logged in as ${this.client.user.tag}!`);
    },
};