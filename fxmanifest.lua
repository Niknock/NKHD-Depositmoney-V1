fx_version 'cerulean'
game 'gta5'

lua54 'yes'

author 'Niknock HD'
description 'Depositmoney V1'
version '1.0.0'

client_script{
	'client.lua',
	'config.lua',
}

shared_scripts {
    '@es_extended/imports.lua'
}

dependencies {
	'es_extended',
}
