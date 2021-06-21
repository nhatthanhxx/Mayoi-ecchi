exports.run = async (client, msg, args) => {
    if(msg.author.id == client.config.OWNERS) {
        await msg.channel.send(`Mayoi will be rebooted.`);
        await client.destroy();
    }
};

exports.conf = {
    aliases: [],
    owner: true
};

exports.help = {
    name: "reboot"
};
