class CfgSettings
{
    class MCRS_Settings
    {
        
		// Hier muss das serverCommandPassword der config.cfg stehen !
        //serverCommandPassword = "";
        // {Hours, Minutes} / Hardcoded minimum is 5 Minutes !
        restartInterval[] = {4, 10};
        // Interval in dem das System die Uptime mit der Restart Zeit vergleicht
        checkInterval = 1;

        //Schaltet die Restart Meldungen ein oder aus
        useWarnMsg = 1;
        //Definiert die Minuten wann vor einem Neustart eine Meldung ausgegeben wird
        warnMsgInterval[] = {10800, 7200, 3600, 1800, 600, 540, 480, 420, 360, 300, 240, 180, 120, 60, 50, 40, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1}; //Darf nicht größer als der restartInterval
        //Text der in der Meldung Steht (%1 = Minuten vor dem Neustart)
        warnMessage = "Server restart in %1";

        //Nutze #shutdown (Empfohlen) anstatt #restart (Nur wenn man kein FireDaemon oder ähnliches hat !)
        useShutdownCommand = 1;
    };
};
