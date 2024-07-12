<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Écrire un algorithme qui demande l’âge d’un enfant à l’utilisateur. Ensuite, il l’informe de sa catégorie :&#xa;”Poussin” de 6 à 7 ans&#xa;”Pupille” de 8 à 9 ans&#xa;”Minime” de 10 à 11 ans&#xa;”Cadet” après 12 ans&#xa;&#xa;" courant="FIN_SINON"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2etat="inactif" F2lignes="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" totalAffichages="1000" epaisseurPoint="2" totalBoucles="5000000" arrondiAuto="vrai" nbDecimales="8" epaisseurLigne="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="age EST_DU_TYPE NOMBRE" code="1#NOMBRE#age"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrer l'âge de l'enfant&quot;" code="4#Entrer l'âge de l'enfant#0"/>
        <item algoitem="LIRE age" code="2#age#pasliste"/>
        <item algoitem="TANT_QUE (age&lt;=0) FAIRE" code="15#age&lt;=0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;Entrer une valeur supérieur à zéro &quot;" code="4#Entrer une valeur supérieur à zéro #0"/>
            <item algoitem="LIRE age" code="2#age#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="SI (age>=6) ALORS" code="6#age>=6">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="SI (age>=6 ET age&lt;=7) ALORS" code="6#age>=6 ET age&lt;=7">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;votre enfant est de catégorie Poussin&quot;" code="4#votre enfant est de catégorie Poussin#0"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
                <item algoitem="SINON" code="9#sinon">
                    <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                    <item algoitem="SI (age>=8 ET age&lt;=9) ALORS" code="6#age>=8 ET age&lt;=9">
                        <item algoitem="DEBUT_SI" code="7#debutsi"/>
                        <item algoitem="AFFICHER &quot;votre enfant est de catégorie Pupille&quot;" code="4#votre enfant est de catégorie Pupille#0"/>
                        <item algoitem="FIN_SI" code="8#finsi"/>
                        <item algoitem="SINON" code="9#sinon">
                            <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                            <item algoitem="SI (age>=10 ET age&lt;=11) ALORS" code="6#age>=10 ET age&lt;=11">
                                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                                <item algoitem="AFFICHER &quot;votre enfant est de catégorie Minime&quot;" code="4#votre enfant est de catégorie Minime#0"/>
                                <item algoitem="FIN_SI" code="8#finsi"/>
                                <item algoitem="SINON" code="9#sinon">
                                    <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                                    <item algoitem="SI (age>=12) ALORS" code="6#age>=12">
                                        <item algoitem="DEBUT_SI" code="7#debutsi"/>
                                        <item algoitem="AFFICHER &quot;votre enfant est de catégorie Cadet&quot;" code="4#votre enfant est de catégorie Cadet#0"/>
                                        <item algoitem="FIN_SI" code="8#finsi"/>
                                    </item>
                                    <item algoitem="FIN_SINON" code="11#finsinon"/>
                                </item>
                            </item>
                            <item algoitem="FIN_SINON" code="11#finsinon"/>
                        </item>
                    </item>
                    <item algoitem="FIN_SINON" code="11#finsinon"/>
                </item>
            </item>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHER &quot;Votre enfant n'est pas assez grand pour se trouver dans une catégorie. il faut q'il ait au moins 6 ans&quot;" code="4#Votre enfant n'est pas assez grand pour se trouver dans une catégorie. il faut q'il ait au moins 6 ans#0"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
