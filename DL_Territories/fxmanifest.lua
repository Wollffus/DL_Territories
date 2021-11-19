fx_version 'bodacious'
games { 'gta5' }

description 'digitallife_territories'

version '1.1.0'

server_scripts {
	'@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
	'server.lua'
}

client_scripts {
	'client.lua'
}

dependencies {
	'mysql-async',
	'async'
}
