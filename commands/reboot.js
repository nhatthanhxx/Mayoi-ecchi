exports.run = async (client, msg, args) => {
    if(msg.author.id == client.config.OWNERS)
    client.destroy();
}

exports.conf = {
    aliases: [],
    owner: true
};

exports.help = {
    name: "reboot"
};
