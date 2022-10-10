const express = require('express');
const port = 3000;
const app = express();

app.get('/factorial', (req, res) => {
    const { number } = req.query;
    return res.redirect(`/factorial/${number}`);
});

app.get('/factorial/:number', (req, res) => {
    const { number } = req.params;
    const parsed = parseInt(number);
    let f = 1;
    for (let i = 0; i < parsed; i++) f = f*(i + 1);
    return res.send(`${parsed}! = ${f}`);
});

app.listen(port, () => console.log(`Server listening on port ${port}!`));