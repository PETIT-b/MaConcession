Class {
	#name : #VisiteurDraw,
	#superclass : #Object,
	#instVars : [
		'vehicule'
	],
	#category : #MaConcession
}

{ #category : #'as yet unclassified' }
VisiteurDraw >> nbMaxRoues [
	^vehicule nbMaxRoues
]

{ #category : #accessing }
VisiteurDraw >> roues [
	^(vehicule roues)
]

{ #category : #visiting }
VisiteurDraw >> visitMoteur: m [
	
	
| morph text |
	morph:=TextMorph new.
	text:='Cylindrée : ', m cylindree asString,'
	Puissance : ', m puissance asString,'
	Prix : ', m prix asString.
	
	morph contents:text;openInWindow 
]

{ #category : #visiting }
VisiteurDraw >> visitRoue: r [
	| morph text |
	morph:=TextMorph new.
	text:='Diametre : ', r diametre asString,'
	Prix : ', r prix asString.
	
	morph contents:text;openInWindow 
]

{ #category : #visiting }
VisiteurDraw >> visitVehicule: vehi [
"créer une interface, envoyer sa référence à l'interface pour que l'inteface puisse appeler les méthodes qui visent chaque élément du véhicule"

	| interface |
	vehicule:=vehi.
	
	interface:=VehicInterface new.
	interface visiteur:self ; ouvrirFenetre .
	"selon nombre de roue"
	
	vehi couleur
		ifNil: [ Transcript show: 'Pas de Couleur spécifiée' ]
		ifNotNil: [ Transcript show: vehi couleur].
		
	Transcript cr.
	vehi prix
		ifNil: [ Transcript show: 'Pas de prix spécifié' ]
		ifNotNil: [ Transcript show: vehi prix].
	"1 to:(vehi roues size) do:[:i |(vehi roues at:i) accept:self]"
	
	Transcript cr.
	vehi moteur
		ifNil: [ Transcript show: 'Pas de moteur' ]
		ifNotNil: [ vehi moteur accept: self ].
	
	"accept effectué quand on clique sur une Roue"
	"vehi roues do: [ :uneRoue | uneRoue accept: self ]"
]
