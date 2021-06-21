const Discord = require("discord.js");

exports.run = async (client, msg, args) => {
    if(msg.author.id == client.config.OWNERS) {
        msg.channel.send("Mayoi will be rebooted.");
        client.destroy();
    };
};

exports.conf = {
    aliases: [],
    owner: true
};

exports.help = {
    name: "reboot"
};
