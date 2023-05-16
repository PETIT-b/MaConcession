Class {
	#name : #VisitorDraw,
	#superclass : #Object,
	#instVars : [
		'vehicule',
		'interface'
	],
	#category : #MaConcession
}

{ #category : #accessing }
VisitorDraw >> engine [
	^vehicule engine.
]

{ #category : #accessing }
VisitorDraw >> interface [

	^ interface
]

{ #category : #'as yet unclassified' }
VisitorDraw >> nbMaxWheels [
	^vehicule nbMaxWheels
]

{ #category : #accessing }
VisitorDraw >> roues [
	^(vehicule roues)
]

{ #category : #visiting }
VisitorDraw >> visitEngine: m [
	
	
| morph text |
	morph:=TextMorph new.
	text:='Cylindrée : ', m displacement asString,'
	Puissance : ', m puissance asString,'
	Prix : ', m prix asString.
	
	morph contents:text;openInWindow 
]

{ #category : #visiting }
VisitorDraw >> visitVehicle: vehi [
"créer une interface, envoyer sa référence à l'interface pour que l'inteface puisse appeler les méthodes qui visent chaque élément du véhicule"

"TO DO : rafraichir la fenêtre au lieu de la supprimer et recreer"
	vehicule:=vehi.
	
	interface
	ifNotNil:[
		"remove/delete Morphs of the window"
		interface windowClear
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
	
	"visitEngine is called when we click on the engine"
	
	"visitWheel is called when we click on a wheel"
	
	
]

{ #category : #visiting }
VisitorDraw >> visitWheel: r [
	| morph text |
	morph:=TextMorph new.
	text:='Diametre : ', r diametre asString,'
	Prix : ', r prix asString.
	
	morph contents:text;openInWindow 
]
