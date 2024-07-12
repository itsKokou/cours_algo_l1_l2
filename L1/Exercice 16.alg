<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER max" texte="Écrire un algorithme qui demande successivement des nombres à l’utilisateur, et qui lui dise ensuite quel était le plus grand parmi ces nombres .La saisie des nombres s’arrête lorsque l’utilisateur entre un zéro.&#xa;&#xa;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2etat="inactif" F2lignes="" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" nbDecimales="8" totalAffichages="1000" epaisseurLigne="2" totalBoucles="5000000" epaisseurPoint="2" arrondiAuto="vrai"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nbre" algoitem="nbre EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#max" algoitem="max EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrez un nombre#0" algoitem="AFFICHER &quot;Entrez un nombre&quot;"/>
        <item code="2#nbre#pasliste" algoitem="LIRE nbre"/>
        <item code="5#max#nbre#pasliste" algoitem="max PREND_LA_VALEUR nbre"/>
        <item code="15#nbre!=0" algoitem="TANT_QUE (nbre!=0) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="6#nbre>max" algoitem="SI (nbre>max) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#max#nbre#pasliste" algoitem="max PREND_LA_VALEUR nbre"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="4#Entrer un autre nombre#0" algoitem="AFFICHER &quot;Entrer un autre nombre&quot;"/>
            <item code="2#nbre#pasliste" algoitem="LIRE nbre"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="4#Le plus grand nombre est #0" algoitem="AFFICHER &quot;Le plus grand nombre est &quot;"/>
        <item code="3#max#0#pasliste" algoitem="AFFICHER max"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
