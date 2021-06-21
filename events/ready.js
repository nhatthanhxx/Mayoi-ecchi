const pkg = require("../package.json");
const axios = require("axios");

module.exports = async (client) => {
  
  let check = null;
  client.database.db.all("SELECT name FROM sqlite_master WHERE type='table' AND name='favorit';", function (err, rows) {
    if (err) console.log(err);
    else check = rows.length;    
  });
  if (!check) {
    client.database.db.run("CREATE TABLE IF NOT EXISTS favorit (userID TEXT, bookID TEXT)");
    console.log("initialize datatable.");
  }

  const version = pkg.version;

  const users = client.users.cache.size;
  const channels = client.channels.cache.size;
  const guilds = client.guilds.cache.size;

  console.log(
    `${client.user.username} Preparing to playing with ${users} users, in ${channels} channels of ${guilds} guilds...`
  );

/*  client.setInterval(async () => {
    let userFormat = client.util.nFormatter(users);
    let guildFormat = client.util.nFormatter(client.guilds.cache.size);

    let status = [
      `with ${userFormat} users`,
      `Bot v${version}`,
      `in ${guildFormat} server 🎉`,
      "Help me to buy a VPS, please | nh donate",
      "Ara ara ara",
      "now with downloader | nh dl 177013",
    ];
    let rand = client.util.getRandInt(status.length);

    client.user.setActivity(status[rand], { type: "PLAYING" });
  }, 6e4);
*/
};
