fx_version "cerulean"
game "gta5"

ui_page 'web-side/index.html'

files {
    'web-side/index.html',
    'web-side/style.css',
    'web-side/img/sino.svg'
}

shared_script {
     "@vrp/lib/utils.lua",
}

client_scripts {
    "src/client/*.lua",
}
