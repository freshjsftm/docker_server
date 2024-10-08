const http = require('http');
const express = require('express');
const port = process.env.PORT || 3000;
const app = express();

app.use((req, res) => {
  res.status(200).send('hello from docker container!');
});

const server = http.createServer(app);
server.listen(port, () => {
  console.log('server started at port = ', port);
});
