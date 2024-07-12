<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot; de gagner&quot;" texte="Écrire un algorithme qui permette de connaître ses chances de gagner au tiercé, quarté, quinté et autres impôts volontaires.&#xa;On demande à l’utilisateur le nombre de chevaux partants, et le nombre de chevaux joués. Les deux messages affichés devront être :&#xa;Dans l’ordre : une chance sur X de gagner Dans le désordre : une chance sur Y de gagner&#xa;X et Y nous sont donnés par la formule suivante, si n est le nombre de chevaux partants et p le nombre de chevaux joués (on rappelle que le signe ! signifie &quot;factorielle&quot;) :&#xa;X = n ! / (n - p) !&#xa;Y = n ! / (p ! * (n – p) !)&#xa;&#xa;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2para="" F2etat="inactif" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalBoucles="5000000" totalAffichages="1000" epaisseurPoint="2" nbDecimales="8" arrondiAuto="vrai" maxBoucle="500000" epaisseurLigne="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
        <item algoitem="p EST_DU_TYPE NOMBRE" code="1#NOMBRE#p"/>
        <item algoitem="x EST_DU_TYPE NOMBRE" code="1#NOMBRE#x"/>
        <item algoitem="y EST_DU_TYPE NOMBRE" code="1#NOMBRE#y"/>
        <item algoitem="a EST_DU_TYPE NOMBRE" code="1#NOMBRE#a"/>
        <item algoitem="b EST_DU_TYPE NOMBRE" code="1#NOMBRE#b"/>
        <item algoitem="c EST_DU_TYPE NOMBRE" code="1#NOMBRE#c"/>
        <item algoitem="d EST_DU_TYPE NOMBRE" code="1#NOMBRE#d"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrez le nombre de chevaux partant&quot;" code="4#Entrez le nombre de chevaux partant#0"/>
        <item algoitem="LIRE n" code="2#n#pasliste"/>
        <item algoitem="TANT_QUE (n&lt;=0) FAIRE" code="15#n&lt;=0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;Veuillez saisir une valeur positive&quot;" code="4#Veuillez saisir une valeur positive#0"/>
            <item algoitem="LIRE n" code="2#n#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;Entrez le nombre de chevaux joués&quot;" code="4#Entrez le nombre de chevaux joués#0"/>
        <item algoitem="LIRE p" code="2#p#pasliste"/>
        <item algoitem="TANT_QUE (p&lt;=0 ou p>n) FAIRE" code="15#p&lt;=0 ou p>n">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;Veuillez saisir une valeur positive inférieur à &quot;" code="4#Veuillez saisir une valeur positive inférieur à #0"/>
            <item algoitem="AFFICHER n" code="3#n#0#pasliste"/>
            <item algoitem="LIRE p" code="2#p#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="i PREND_LA_VALEUR 1" code="5#i#1#pasliste"/>
        <item algoitem="a PREND_LA_VALEUR 1" code="5#a#1#pasliste"/>
        <item algoitem="TANT_QUE (i&lt;=n) FAIRE" code="15#i&lt;=n">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="a PREND_LA_VALEUR a*i" code="5#a#a*i#pasliste"/>
            <item algoitem="i PREND_LA_VALEUR i+1" code="5#i#i+1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="i PREND_LA_VALEUR 1" code="5#i#1#pasliste"/>
        <item algoitem="b PREND_LA_VALEUR 1" code="5#b#1#pasliste"/>
        <item algoitem="TANT_QUE (i&lt;=p) FAIRE" code="15#i&lt;=p">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="b PREND_LA_VALEUR b*i" code="5#b#b*i#pasliste"/>
            <item algoitem="i PREND_LA_VALEUR i+1" code="5#i#i+1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="i PREND_LA_VALEUR 1" code="5#i#1#pasliste"/>
        <item algoitem="c PREND_LA_VALEUR n-p" code="5#c#n-p#pasliste"/>
        <item algoitem="d PREND_LA_VALEUR 1" code="5#d#1#pasliste"/>
        <item algoitem="TANT_QUE (i&lt;=c) FAIRE" code="15#i&lt;=c">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="d PREND_LA_VALEUR d*i" code="5#d#d*i#pasliste"/>
            <item algoitem="i PREND_LA_VALEUR i+1" code="5#i#i+1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="x PREND_LA_VALEUR a/d" code="5#x#a/d#pasliste"/>
        <item algoitem="y PREND_LA_VALEUR b*d" code="5#y#b*d#pasliste"/>
        <item algoitem="y PREND_LA_VALEUR a/y" code="5#y#a/y#pasliste"/>
        <item algoitem="AFFICHER &quot;Dans l'ordre : une chance sur &quot;" code="4#Dans l'ordre : une chance sur #0"/>
        <item algoitem="AFFICHER x" code="3#x#0#pasliste"/>
        <item algoitem="AFFICHER &quot; de gagner. Dans le désordre : une chance sur &quot;" code="4# de gagner. Dans le désordre : une chance sur #0"/>
        <item algoitem="AFFICHER y" code="3#y#0#pasliste"/>
        <item algoitem="AFFICHER &quot; de gagner&quot;" code="4# de gagner#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
