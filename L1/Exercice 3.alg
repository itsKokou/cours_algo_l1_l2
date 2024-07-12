<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_SINON" texte="Écrire un programme qui permet de saisir une suite de nombres premiers, le programme s'arrête lorsque l’utilisateur tape la valeur zéro (0). Le programme affiche le nombre d’entiers saisi, le nombre de nombre premiers et affiche tous les nombre premiers."/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2para="" F2etat="inactif" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" totalAffichages="1000" totalBoucles="5000000" nbDecimales="8" maxBoucle="500000" epaisseurPoint="2" arrondiAuto="vrai"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#n" algoitem="n EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#r" algoitem="r EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#s" algoitem="s EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#t" algoitem="t EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nbre" algoitem="nbre EST_DU_TYPE NOMBRE"/>
        <item code="1#LISTE#p" algoitem="p EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#o" algoitem="o EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrer un nombre#0" algoitem="AFFICHER &quot;Entrer un nombre&quot;"/>
        <item code="2#nbre#pasliste" algoitem="LIRE nbre"/>
        <item code="5#n#1#pasliste" algoitem="n PREND_LA_VALEUR 1"/>
        <item code="5#r#0#pasliste" algoitem="r PREND_LA_VALEUR 0"/>
        <item code="15#nbre!=0 ou nbre" algoitem="TANT_QUE (nbre!=0 ou nbre) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="6#nbre>0" algoitem="SI (nbre>0) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#s#0#pasliste" algoitem="s PREND_LA_VALEUR 0"/>
                <item code="12#i#1#nbre/2" algoitem="POUR i ALLANT_DE 1 A nbre/2">
                    <item code="13#debutpour" algoitem="DEBUT_POUR"/>
                    <item code="5#t#nbre%i#pasliste" algoitem="t PREND_LA_VALEUR nbre%i"/>
                    <item code="6#t==0" algoitem="SI (t==0) ALORS">
                        <item code="7#debutsi" algoitem="DEBUT_SI"/>
                        <item code="5#s#s+i#pasliste" algoitem="s PREND_LA_VALEUR s+i"/>
                        <item code="8#finsi" algoitem="FIN_SI"/>
                    </item>
                    <item code="14#finpour" algoitem="FIN_POUR"/>
                </item>
                <item code="6#s==1" algoitem="SI (s==1) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#r#r+1#pasliste" algoitem="r PREND_LA_VALEUR r+1"/>
                    <item code="5#o#r#pasliste" algoitem="o PREND_LA_VALEUR r"/>
                    <item code="5#p#nbre#o" algoitem="p[o] PREND_LA_VALEUR nbre"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="4#Entrer un nombre #0" algoitem="AFFICHER &quot;Entrer un nombre &quot;"/>
            <item code="2#nbre#pasliste" algoitem="LIRE nbre"/>
            <item code="5#n#n+1#pasliste" algoitem="n PREND_LA_VALEUR n+1"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="4#Le nombre d'entiers saisis est #0" algoitem="AFFICHER &quot;Le nombre d'entiers saisis est &quot;"/>
        <item code="3#n#1#pasliste" algoitem="AFFICHER n"/>
        <item code="4#Le nombre de nombre premier est #0" algoitem="AFFICHER &quot;Le nombre de nombre premier est &quot;"/>
        <item code="3#r#1#pasliste" algoitem="AFFICHER r"/>
        <item code="6#r>0" algoitem="SI (r>0) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Voici la liste des nombres premiers : #0" algoitem="AFFICHER &quot;Voici la liste des nombres premiers : &quot;"/>
            <item code="6#r>=1" algoitem="SI (r>=1) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#o#1#pasliste" algoitem="o PREND_LA_VALEUR 1"/>
                <item code="15#o&lt;=r" algoitem="TANT_QUE (o&lt;=r) FAIRE">
                    <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
                    <item code="3#p#0#o" algoitem="AFFICHER p[o]"/>
                    <item code="4#; #0" algoitem="AFFICHER &quot;; &quot;"/>
                    <item code="5#o#o+1#pasliste" algoitem="o PREND_LA_VALEUR o+1"/>
                    <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
                </item>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="4#Il n'y a pas de nombre premier parmi les nombres saisis.#0" algoitem="AFFICHER &quot;Il n'y a pas de nombre premier parmi les nombres saisis.&quot;"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
