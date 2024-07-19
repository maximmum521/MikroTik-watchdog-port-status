####
:delay 5;
:global BotId;
:global ChatId;
:global text;
:global Tag;
####
/tool fetch url="https://api.telegram.org/bot$BotId/sendMessage\?chat_id=$ChatId&text=\
$[/system identity get name]\
%0a$text\
%0a%23$Tag" keep-result=no;