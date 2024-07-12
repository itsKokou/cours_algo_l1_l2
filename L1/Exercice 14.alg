<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_SINON" texte="Écrire un algorithme qui demande un nombre de départ, et qui ensuite affiche les dix nombres suivants. Par exemple, si l'utilisateur entre le nombre 17, le programme affichera les nombres de 18 à 27.&#xa;On peut imaginer deux variantes, strictement équivalentes :&#xa;&#xa;"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2etat="inactif" F2para="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalAffichages="1000" nbDecimales="8" epaisseurLigne="2" arrondiAuto="vrai" epaisseurPoint="2" maxBoucle="500000" totalBoucles="5000000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nbre" algoitem="nbre EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#x" algoitem="x EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrer un nombre#0" algoitem="AFFICHER &quot;Entrer un nombre&quot;"/>
        <item code="2#nbre#pasliste" algoitem="LIRE nbre"/>
        <item code="15#nbre==0" algoitem="TANT_QUE (nbre==0) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="4#Entrer une valeur différente de zéro#0" algoitem="AFFICHER &quot;Entrer une valeur différente de zéro&quot;"/>
            <item code="2#nbre#pasliste" algoitem="LIRE nbre"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="5#i#1#pasliste" algoitem="i PREND_LA_VALEUR 1"/>
        <item code="6#nbre>0" algoitem="SI (nbre>0) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="15#i&lt;=10" algoitem="TANT_QUE (i&lt;=10) FAIRE">
                <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
                <item code="5#nbre#nbre+1#pasliste" algoitem="nbre PREND_LA_VALEUR nbre+1"/>
                <item code="3#nbre#0#pasliste" algoitem="AFFICHER nbre"/>
                <item code="4#; #0" algoitem="AFFICHER &quot;; &quot;"/>
                <item code="5#i#i+1#pasliste" algoitem="i PREND_LA_VALEUR i+1"/>
                <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
            </item>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="15#i&lt;=10" algoitem="TANT_QUE (i&lt;=10) FAIRE">
                    <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
                    <item code="5#nbre#nbre*(-1)+1#pasliste" algoitem="nbre PREND_LA_VALEUR nbre*(-1)+1"/>
                    <item code="5#x#nbre*-1#pasliste" algoitem="x PREND_LA_VALEUR nbre*-1"/>
                    <item code="3#x#0#pasliste" algoitem="AFFICHER x"/>
                    <item code="4#; #0" algoitem="AFFICHER &quot;; &quot;"/>
                    <item code="5#nbre#x#pasliste" algoitem="nbre PREND_LA_VALEUR x"/>
                    <item code="5#i#i+1#pasliste" algoitem="i PREND_LA_VALEUR i+1"/>
                    <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
