####
:global tmpStat;
:global StatPort;
:local loop 0;
:global nameport "ether2";
:local timeDelay 30;
####
:delay $timeDelay;
/interface ethernet monitor $nameport once do={
:set StatPort $status;
}
while ( $loop < 1 ) do={
/interface ethernet monitor $nameport once do={
:set tmpStat $status;
}
:if ( $StatPort != $tmpStat ) do={
:if ( $tmpStat = "link-ok" ) do={
:set StatPort $tmpStat;
:global text "POWER ON ether2 UP";
:global Tag "POWER_ON_ether2";
/system script run downAPIsend;
}
:if ( $tmpStat = "no-link" ) do={
:set StatPort $tmpStat;
:global text "POWER OFF ether2 DOWN";
:global Tag "POWER_OFF_ether2";
/system script run downAPIsend;
}
} else={
:delay $timeDelay;
}
}