# radiograbador

Graba radios online utilizando el enlace del reproductor y carga el registo a un canal de Telegram. 

### bash radiograbador 

+ plus telegram channel

### deps

* curl
* ffmpeg 

### Telegram 

Crear bot, canal, y averiguar ids. 

1. Enviar mensaje a `@BotFather` y crear el bot suguiendo los pasos. Aqui se nos indica el token. 
2. Crear canal y agregar al nuevo bot como admin. 
3. Enviar un mensaje al bot en el canal. ej: `/my_id @nombrebot`
4. Conseguir id de grupo: `https://api.telegram.org/bot<TokenBot>/getUpdates` 
~
~
