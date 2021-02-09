# wybierasz wersję node na której ma działać
FROM node:10

# RUN służy do wykonania jakiegoś polecenia (np żeby zainstalować jakieś dependency albo coś przenieść itd)
RUN npm install -g nodemon

# tworzymy katalog node_modules i nadajemy mu odpowiednie prawa dostępu
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

# ustalamy bieżący katalog roboczy
WORKDIR /home/node/app

# kopiujemy plik package.json to tego katalogu roboczego
COPY package*.json ./

# instalujemy
RUN npm install

# kopiujemy wszystkie pozostałe pliki
COPY . .

# dbamy ponownie o odpowienie prawa dostepu
COPY --chown=node:node . .

# zmieniamy użytkownika
USER node

# EXPOSE okresla port pod jakim będzie dostępna nasza aplikacja (port kontenera)
EXPOSE 8080

CMD [ "nodemon" ]