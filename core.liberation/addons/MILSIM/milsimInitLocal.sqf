waitUntil {
	!isNull player
};

["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;


_rules = "
DE:<br />
Regelwerk MiSim United<br />
<br />
1. Rechtliches<br />
1.1 Trolling, Beleidigung, Rassismus, sexuelle Belästigung so wie alles was strafrechtlich verfolgt wird, ist verboten und führt zum Ausschluss. <br />
1.2 Es ist auf Datenschutz zu achten: Jeder ist selbst dafür verantwortlich, nichts von sich selbst preiszugeben, was andere nicht wissen dürfen. Ebenso ist es verboten, Daten anderer gegen deren Willen preiszugeben. <br />
1.3 Wer unseren Server betritt, erklärt sich damit einverstanden, dass jede Form von Bild und Ton hier für die Öffentlichkeit bestimmt sind und jederzeit ohne weitere Ankündigung aufgezeichnet werden können.<br />
<br />
<br />
2. Spielerisches<br />
2.1 Das Verletzen anderer Spieler, sowie das Recycling, Stehlen oder Zerstören ihrer Fahrzeuge ist verboten. <br />
2.2 Das Verletzen von befreundeter KI, Zivilisten und POWs ist verboten. <br />
2.3 Schießen innerhalb der FOBs ist nur zu deren Verteidigung erlaubt, Waffen testen ist in der “Operationszentrale” erlaubt, sofern es die erste FOB gibt. <br />
2.4 Bei Verlust von Fahrzeugen durch Bugs etc. liegt es im Ermessen der IT, eine Erstattung zu gewähren. (Videobeweis hilft hierbei.) <br />
2.5 Ausnutzen von Programmfehlern, Bugs, Exploits etc. ist verboten. <br />
2.6 Bei Konflikten und Regelverstößen ruhig bleiben und ein Video machen! <br />
2.7 Jeder ist verpflichtet sich selbst um die Vermeidung und Lösung von Konflikten zu bemühen. <br />
Stufe 1: Persönlich zwischen den Beteiligten. <br />
Stufe 2: In einem gemeinsamen, klärenden Gespräch, vorzugsweise öffentlich im Chat. <br />
Stufe 3: Mit Unterstützung der IT.<br />
<br />
<br />
3. Gruppen und Kommunikation<br />
3.1 Funkrufnamen sollen kurz, international und gut aussprechbar sein. <br />
3.2 Frequenz 50 ist ausschließlich zur Bodenkommunikation. <br />
3.3 Frequenz 51 ist ausschließlich zur Boden-Luft-Kommunikation. <br />
3.4 Frequenz 52 ist ausschließlich zur Luftkommunikation. <br />
3.5 Funkdisziplin ist einzuhalten, kurze Funksprüche.<br />
<br />
<br />
4. Spezial-Slots<br />
Wer einen Spezial-Slot belegt, muss ausreichend qualifiziert sein und die jeweilige Aufgabe auch tatsächlich für andere zur Verfügung stellen. Kampfpiloten müssen CAS durchführen, Engineers müssen reparieren, Medics müssen heilen, etc.  Einen Spezialslot zu blockieren und mehr als ca. 10 Minuten AFK zu sein ist verboten.<br />
<br />
<br />
5. Fahrzeuge<br />
Boden- und Luftfahrzeuge sind vorrangig Unterstützungselemente. Wenn Infanterie im gleichen Sektor operiert, darf dort nur mit deren Zustimmung angegriffen werden.
<br />
<br />
<br />
<br />
EN:<br />
Rules MiSim United<br />
<br />
1. Legal matters<br />
1.1 Trolling, insults, racism, sexual harassment as well as anything that can be prosecuted under criminal law is prohibited and will lead to exclusion. <br />
1.2 Data protection must be observed: Everyone is responsible for not disclosing anything about themselves that others are not allowed to know. It is also forbidden to disclose the data of others against their will. <br />
1.3 Anyone who enters our server agrees that any form of image and sound is intended for the public and may be recorded at any time without further notice.<br />
<br />
<br />
2. Gaming<br />
2.1 Injuring other players and recycling, stealing or destroying their vehicles is prohibited. <br />
2.2 Harming friendly AI, civilians and POWs is prohibited. <br />
2.3 Shooting within the FOBs is only allowed for their defense, testing weapons is allowed in the 'Operations Center' if the first FOB exists. <br />
2.4 If vehicles are lost due to bugs etc., it is at the discretion of IT to grant a refund. (Video evidence helps here.) <br />
2.5 Taking advantage of program errors, bugs, exploits, etc. is prohibited. <br />
2.6 In the event of conflicts and rule violations, remain calm and make a video! <br />
2.7 Everyone is obliged to make their own efforts to avoid and resolve conflicts. <br />
Level 1: Personally between the parties involved. <br />
Stage 2: In a joint, clarifying discussion, preferably publicly in the chat. <br />
Stage 3: With the support of IT.<br />
<br />
<br />
3. Groups and communication<br />
3.1 Radio call names should be short, international and easy to pronounce. <br />
3.2 Frequency 50 is exclusively for ground communication. <br />
3.3 Frequency 51 is exclusively for ground-air communication. <br />
3.4 Frequency 52 is exclusively for air communication. <br />
3.5 Radio discipline must be observed, short radio messages.<br />
<br />
<br />
4. Special slots<br />
Anyone occupying a special slot must be sufficiently qualified and actually make the respective task available to others. Fighter pilots must perform CAS, engineers must repair, medics must heal, etc.  Blocking a special slot and being AFK for more than approx. 10 minutes is prohibited.<br />
<br />
<br />
5. Vehicles<br />
Ground and air vehicles are primarily support elements. If infantry is operating in the same sector, you may only attack there with their permission.
<br />
<br />
<br />
<br />
";

_situation = '
DE <br /><br />
Ein in naher Zukunft neu entstandenes Militärbündnis unterstützt Konfliktparteien in strategisch und wirtschaftlich relevanten Regionen, um dort an Einfluss zu gewinnen. Eine multinationale Koalition leistet Widerstand.
<br /><br />
Sämtliche Streitkräfte bedienen sich aus Effizienzgründen zunehmend am internationalen Rüstungsmarkt.
<br /><br /><br />

EN <br /><br />
A newly formed military alliance in the near future supports conflicting parties in strategically and economically relevant regions in order to gain influence there. A multinational coalition is putting up resistance.
<br /><br />
for reasons of efficiency, all armed forces are increasingly making use of the international arms market.
<br /><br /><br />
';

player createDiarySubject ["Regeln / Rules","Regeln / Rules"];
player createDiaryRecord ["Regeln / Rules", ["Regeln / Rules", _rules]];
sleep 10;

player addEventHandler ["Fired", {
	if (MSU_DisableFobFiring) then {
		private _shooter = (_this select 0);
		private _projectile = (_this select 6);
		// Get Unit count of enemy forces in a radius of 1000 meter
		private _unitsNearby = [getpos _shooter, 1000, GRLIB_side_enemy] call F_getUnitsCount;
		// Get player distance to the nearest fob
		private _distanceToFob = ([] call F_getNearestFob distance2D (getpos _shooter));

		// If player is 150m or closer to the nearest fob and no enemies are nearby
		if ((_distanceToFob < 150) && (_unitsNearby < 1)) then {
			deleteVehicle _projectile;
			hint (localize "STR_MSU_No_Shooting_Fob");
		};
	}
}];