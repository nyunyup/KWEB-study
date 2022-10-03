const fs = require('fs');
const util = require('util');
const path = require('path');

const readDir = util.promisify(fs.readdir);
const getStat = util.promisify(fs.stat);

const searchDir = async d => {
    const list = await readDir(d);

    list.forEach(async f => {

        const p = path.join(d, f);
        const stat = await getStat(p);

        if (stat.isDirectory()) { await searchDir(p); }
        else if (path.extname(p) === '.js') { console.log(p); }
    });
}

(async () => {
    try {
        await searchDir('./test');
    }
    catch (err) {
        console.error(err);
    }
})();