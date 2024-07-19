# MikroTik watchdog port status and send notification to telegram


In ScriptSetings.rsc set BotId and ChatId.
In downETHER.rsc set nameport for check status

Run in console for add autostart

```
/system scheduler
```
```
add name=downETHER on-event="/system script run downETHER" policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-time=startup
```
