<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_SINON" texte=" Écrire un programme qui permet de saisir un nombre entier positif, le programme détermine et affiche si le nombre est premier ou pas.&#xa;&#xa;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2lignes="" F2defaut="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" nbDecimales="8" maxBoucle="500000" arrondiAuto="vrai" totalBoucles="5000000" totalAffichages="1000" epaisseurLigne="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nbre EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbre"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="som EST_DU_TYPE NOMBRE" code="1#NOMBRE#som"/>
        <item algoitem="r EST_DU_TYPE NOMBRE" code="1#NOMBRE#r"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrer un nombre supérieur à 0&quot;" code="4#Entrer un nombre supérieur à 0#0"/>
        <item algoitem="LIRE nbre" code="2#nbre#pasliste"/>
        <item algoitem="TANT_QUE (nbre&lt;=0) FAIRE" code="15#nbre&lt;=0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;Entrer un nombre positif&quot;" code="4#Entrer un nombre positif#0"/>
            <item algoitem="LIRE nbre" code="2#nbre#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="som PREND_LA_VALEUR 0" code="5#som#0#pasliste"/>
        <item algoitem="i PREND_LA_VALEUR 1" code="5#i#1#pasliste"/>
        <item algoitem="TANT_QUE (i&lt;=nbre/2) FAIRE" code="15#i&lt;=nbre/2">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="r PREND_LA_VALEUR nbre%i" code="5#r#nbre%i#pasliste"/>
            <item algoitem="SI (r==0) ALORS" code="6#r==0">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="som PREND_LA_VALEUR som+i" code="5#som#som+i#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="i PREND_LA_VALEUR i+1" code="5#i#i+1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="SI (som==1) ALORS" code="6#som==1">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER nbre" code="3#nbre#0#pasliste"/>
            <item algoitem="AFFICHER &quot; est un nombre premier&quot;" code="4# est un nombre premier#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHER nbre" code="3#nbre#0#pasliste"/>
                <item algoitem="AFFICHER &quot; n'est pas un nombre premier&quot;" code="4# n'est pas un nombre premier#0"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
