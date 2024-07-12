<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Écrire un algorithme qui demande deux nombres à l’utilisateur et l’informe ensuite si leur produit est négatif ou positif (on laisse de côté le cas où le produit est nul). Attention toutefois : on ne doit pas calculer le produit des deux nombres." courant="AFFICHER c"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2lignes="" F2defaut="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurLigne="2" totalAffichages="1000" nbDecimales="8" arrondiAuto="vrai" maxBoucle="500000" totalBoucles="5000000" epaisseurPoint="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#a" algoitem="a EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#b" algoitem="b EST_DU_TYPE NOMBRE"/>
        <item code="1#CHAINE#c" algoitem="c EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrer le premier nombre #0" algoitem="AFFICHER &quot;Entrer le premier nombre &quot;"/>
        <item code="2#a#pasliste" algoitem="LIRE a"/>
        <item code="4#Entrer le second nombre#0" algoitem="AFFICHER &quot;Entrer le second nombre&quot;"/>
        <item code="2#b#pasliste" algoitem="LIRE b"/>
        <item code="6#a>=0" algoitem="SI (a>=0) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="6#b>=0" algoitem="SI (b>=0) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#c#&quot;positif&quot;#pasliste" algoitem="c PREND_LA_VALEUR &quot;positif&quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
                <item code="9#sinon" algoitem="SINON">
                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                    <item code="5#c#&quot;négatif&quot;#pasliste" algoitem="c PREND_LA_VALEUR &quot;négatif&quot;"/>
                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                </item>
            </item>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#b>=0" algoitem="SI (b>=0) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#c#&quot;négatif&quot;#pasliste" algoitem="c PREND_LA_VALEUR &quot;négatif&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="5#c#&quot;positif&quot;#pasliste" algoitem="c PREND_LA_VALEUR &quot;positif&quot;"/>
                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                    </item>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
        <item code="4#Le produit est #0" algoitem="AFFICHER &quot;Le produit est &quot;"/>
        <item code="3#c#0#pasliste" algoitem="AFFICHER c"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
