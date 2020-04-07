#include <amxmodx>

#define PLUGIN "Join notify"
#define VERSION "0.1"
#define AUTHOR "EagleVision (https://sy.mk)"

#define HUD_CHANNEL 3


public plugin_init()
{
    register_plugin(PLUGIN, VERSION, AUTHOR)
    register_dictionary("join_notify.txt")
}

public client_putinserver(id) 
{
    new szName[32]

    get_user_name(id, szName, charsmax(szName))

    show_hudmessage(0, "%L", id, "Hello", szName)
}

public client_disconnected(id)
{
    new szName[32]

    get_user_name(id, szName, charsmax(szName))

    set_hudmessage(0, 255, 0, 0.1, 0.35, 0, 6.0, 12.0, 0.2, 0.3, HUD_CHANNEL)
    
    show_hudmessage(0, "%L", id, "Bye", szName)
}