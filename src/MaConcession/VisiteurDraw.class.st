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

	
	vehicule:=vehi.
	
	interface
	ifNotNil:[
	(interface fenetre) delete.
	interface fenetre=nil.
	interface visiteur:self; windowCreate
	]
	ifNil:[
		interface:=VehicInterface new.
		interface visiteur:self; windowCreate
		].
	"supprimer les morphs"
	"ifNotNil:[interface viderFenetre]."
	
	"recreer et ajouter les morphs à la fenetre"
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
	
	"TO DO : rafraichir la fenêtre au lieu de la supprimer et recreer"
]
