resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

ui_page 'files/index.html'

description "Fivem Aduty mit keinen bugs, Das beste NoClip"
author 'Marlox <https://github.com/Marlox4>'
version '1.0'


files {
    'files/index.html',
    'files/app.js',
    'files/image.png'
}

client_scripts {
    'client.lua',
    'config.lua'
}

server_scripts {
    'server.lua',
    'config.lua'
}    
