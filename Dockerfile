# Usa una imagen oficial de Node.js como base
FROM node:16

# Crea y establece el directorio de trabajo
WORKDIR /usr/src/app

# Copia el package.json y package-lock.json
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia todo el código al contenedor
COPY . .

# Exponer el puerto en el que corre la API
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["node", "index.js"]
