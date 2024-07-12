<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Écrire un programme qui lit le prix HT d’un article, le nombre d’articles et le taux de TVA, et qui fournit le prix total TTC correspondant. Faire en sorte que des libellés apparaissent clairement.&#xa;&#xa;" courant="AFFICHER prix_t_ttc"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2lignes="" F2defaut="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="vrai" totalBoucles="5000000" totalAffichages="1000" epaisseurPoint="2" epaisseurLigne="2" maxBoucle="500000" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nbre EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbre"/>
        <item algoitem="taux EST_DU_TYPE NOMBRE" code="1#NOMBRE#taux"/>
        <item algoitem="prix_ht EST_DU_TYPE NOMBRE" code="1#NOMBRE#prix_ht"/>
        <item algoitem="prix_t_ttc EST_DU_TYPE NOMBRE" code="1#NOMBRE#prix_t_ttc"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Veuillez saisir le prix hors taxe de l'article&quot;" code="4#Veuillez saisir le prix hors taxe de l'article#0"/>
        <item algoitem="LIRE prix_ht" code="2#prix_ht#pasliste"/>
        <item algoitem="TANT_QUE (prix_ht&lt;=0) FAIRE" code="15#prix_ht&lt;=0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;Entrez un montant positif&quot;" code="4#Entrez un montant positif#0"/>
            <item algoitem="LIRE prix_ht" code="2#prix_ht#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;Veuillez saisir le nombre d'articles&quot;" code="4#Veuillez saisir le nombre d'articles#0"/>
        <item algoitem="LIRE nbre" code="2#nbre#pasliste"/>
        <item algoitem="TANT_QUE (nbre&lt;=0) FAIRE" code="15#nbre&lt;=0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;Entrez un nombre supérieur à zéro&quot;" code="4#Entrez un nombre supérieur à zéro#0"/>
            <item algoitem="LIRE nbre" code="2#nbre#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;Veuillez entrer le taux de la TVA &quot;" code="4#Veuillez entrer le taux de la TVA #0"/>
        <item algoitem="LIRE taux" code="2#taux#pasliste"/>
        <item algoitem="TANT_QUE (taux&lt;0 OU taux>100) FAIRE" code="15#taux&lt;0 OU taux>100">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;Entrez un taux compris entre 0 et 100, 0 étant exclu&quot;" code="4#Entrez un taux compris entre 0 et 100, 0 étant exclu#0"/>
            <item algoitem="LIRE taux" code="2#taux#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="prix_t_ttc PREND_LA_VALEUR (prix_ht+prix_ht*(taux/100))*nbre" code="5#prix_t_ttc#(prix_ht+prix_ht*(taux/100))*nbre#pasliste"/>
        <item algoitem="AFFICHER &quot;Le prix total toutes taxes comprises est &quot;" code="4#Le prix total toutes taxes comprises est #0"/>
        <item algoitem="AFFICHER prix_t_ttc" code="3#prix_t_ttc#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
