FROM node:14

WORKDIR /app

COPY package*.json . 

RUN npm install

COPY . .  

RUN npm run build

EXPOSE 8000

CMD ["node", "./dist/index.js"]

# Writing the copy command after the npm install command allows us to better utilize Docker's layer-based architecture. This way, as long as there are no changes made to the package.json, it uses the cache for the npm install command and does not repeatedly perform npm install in case of any changes.

