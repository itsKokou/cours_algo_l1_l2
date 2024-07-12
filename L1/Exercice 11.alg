<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER n" texte="Écrivez un algorithme permettant à l’utilisateur de saisir les notes d’une classe. Le programme, une fois la saisie terminée, renvoie le nombre de ces notes supérieures à la moyenne de la classe.&#xa;&#xa;"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2etat="inactif" F2para="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalAffichages="1000" arrondiAuto="vrai" maxBoucle="500000" epaisseurPoint="2" totalBoucles="5000000" epaisseurLigne="2" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nbre" algoitem="nbre EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#n" algoitem="n EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#moy" algoitem="moy EST_DU_TYPE NOMBRE"/>
        <item code="1#LISTE#note" algoitem="note EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#s" algoitem="s EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Combien de notes voulez-vous saisir#0" algoitem="AFFICHER &quot;Combien de notes voulez-vous saisir&quot;"/>
        <item code="2#nbre#pasliste" algoitem="LIRE nbre"/>
        <item code="15#nbre&lt;=0" algoitem="TANT_QUE (nbre&lt;=0) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="4#Entrer un nombre supérieur à zéro#0" algoitem="AFFICHER &quot;Entrer un nombre supérieur à zéro&quot;"/>
            <item code="2#nbre#pasliste" algoitem="LIRE nbre"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="5#s#0#pasliste" algoitem="s PREND_LA_VALEUR 0"/>
        <item code="12#i#1#nbre" algoitem="POUR i ALLANT_DE 1 A nbre">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="4#Entrer une note#0" algoitem="AFFICHER &quot;Entrer une note&quot;"/>
            <item code="2#note#i" algoitem="LIRE note[i]"/>
            <item code="15#note[i]&lt;0 ou note[i]>20" algoitem="TANT_QUE (note[i]&lt;0 ou note[i]>20) FAIRE">
                <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
                <item code="4#Entrer une valeur comprise entre 0 et 20#0" algoitem="AFFICHER &quot;Entrer une valeur comprise entre 0 et 20&quot;"/>
                <item code="2#note#i" algoitem="LIRE note[i]"/>
                <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
            </item>
            <item code="5#s#s+note[i]#pasliste" algoitem="s PREND_LA_VALEUR s+note[i]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="5#moy#s/nbre#pasliste" algoitem="moy PREND_LA_VALEUR s/nbre"/>
        <item code="5#n#0#pasliste" algoitem="n PREND_LA_VALEUR 0"/>
        <item code="12#i#1#nbre" algoitem="POUR i ALLANT_DE 1 A nbre">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="6#note[i]>moy" algoitem="SI (note[i]>moy) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#n#n+1#pasliste" algoitem="n PREND_LA_VALEUR n+1"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#Le nombre de notes supérieures à la moyenne de la classe est #0" algoitem="AFFICHER &quot;Le nombre de notes supérieures à la moyenne de la classe est &quot;"/>
        <item code="3#n#0#pasliste" algoitem="AFFICHER n"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
