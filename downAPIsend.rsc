####
:delay 5;
:global BotId;
:global ChatId;
:global text;
:global Tag;
####
/system script run ScriptSetings;
####
/tool fetch url="https://api.telegram.org/bot$BotId/sendMessage\?chat_id=$ChatId&text=\
$[/system identity get name]\
%0a$text\
%0a%23$Tag" http-percent-encoding=yes keep-result=no;
