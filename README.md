# MikroTik watchdog port status and send notification to telegram

### Setings script
Change in ScriptSetings.rsc BotId, ChatId

```
:global BotId "xxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
:global ChatId "xxxxxx";
```

In downETHER.rsc set nameport for check status

```
:global nameport "ether2";
```

Run in console for add autostart

```
/system scheduler
```
```
add name=downETHER on-event="/system script run downETHER" policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-time=startup
```
