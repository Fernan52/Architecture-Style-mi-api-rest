const express = require('express');
const app = express();
const port = 3000;

console.log('Iniciando la API...');  // Mensaje para saber si el código se está ejecutando

app.get('/', (req, res) => {
  res.send('¡Hola Mundo desde la API REST!');
});

app.listen(port, () => {
  console.log(`API escuchando en http://localhost:${port}`);
});
