Class {
	#name : #VisiteurDraw,
	#superclass : #Object,
	#instVars : [
		'vehicule',
		'interface'
	],
	#category : #MaConcession
}

{ #category : #accessing }
VisiteurDraw >> interface [

	^ interface
]

{ #category : #accessing }
VisiteurDraw >> moteur [
	^vehicule moteur.
]

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

"TO DO : rafraichir la fenêtre au lieu de la supprimer et recreer"
	vehicule:=vehi.
	
	interface
	ifNotNil:[
		"remove/delete Morphs of the window"
		interface viderFenetre
	]
	ifNil:[
		interface:=VehicInterface new.
		interface visiteur:self; windowCreate.
		self currentWorld addMorph:(interface fenetre ).
		"interface fenetre openInWorld ."
		].

	
	"recreer et ajouter les morphs à la fenetre"
	"create and add Morph to the window"
	interface windowLoad.
	
	Transcript cr.
	vehi couleur
		ifNil: [ Transcript show: 'Pas de Couleur spécifiée' ]
		ifNotNil: [ Transcript show: vehi couleur].
		
	Transcript cr.
	vehi prix
		ifNil: [ Transcript show: 'Pas de prix spécifié' ]
		ifNotNil: [ Transcript show: vehi prix].
	
	
	"accept effectué quand on clique sur le moteur"
	
	"accept effectué quand on clique sur une Roue"
	
	
]
