Class {
	#name : #VehicInterface,
	#superclass : #Object,
	#instVars : [
		'fenetre',
		'width',
		'height',
		'canvas',
		'visiteur',
		'morphC'
	],
	#category : #MaConcession
}

{ #category : #accessing }
VehicInterface >> canvas [
	^ canvas
]

{ #category : #'as yet unclassified' }
VehicInterface >> dessiner2Roues:roues [	
	| mOR pos |
	"MorphOuvreRoue"
	pos:=1.
	( pos <= (visiteur roues size ) )
	ifTrue:[
	mOR:=MorphOuvreMorph new.
	mOR color:Color black; visiteur:visiteur; element:(visiteur roues at:pos).
	fenetre addMorph:(
		mOR position: (
			(width/2)-(mOR width/2)"centrer horizontalement"
		)@(
			(height/2)-(morphC height/2)-(mOR height) "positionner au dessus du morph central"
		)
	) .
	].

	pos:=2.
	( pos <= (visiteur roues size) )
	ifTrue:[
	mOR:=MorphOuvreMorph new.
	mOR color:Color black; visiteur:visiteur;element:(visiteur roues at:pos).
	fenetre addMorph:(
		mOR position: (
			(width/2)-(mOR width/2)"centrer horizontalement"
		)@(
			(height/2)+(morphC height/2) "positionner au dessous du morph central"
		)
	) .
	]
]

{ #category : #'as yet unclassified' }
VehicInterface >> dessiner4Roues:roues [	
	| mOR pos |
	"MorphOuvreRoue"
	pos:=1.
	( pos <= (visiteur roues size ) )
	ifTrue:[
	mOR:=MorphOuvreMorph new.
	mOR color:Color black; visiteur:visiteur;element:(visiteur roues at:1).
	fenetre addMorph:(
		mOR position: (
			(width/2)-(morphC width/2)-(mOR width)"a gauche du morph central"
		)@(
			(height/2)-(morphC height/2)
		)
	)
	].

	pos:=2.
	( pos <= (visiteur roues size ) )
	ifTrue:[
	mOR:=MorphOuvreMorph new.
	mOR color:Color black; visiteur:visiteur;element:(visiteur roues at:2).
	fenetre addMorph:(
		mOR position: (
			(width/2)+(morphC width/2)"a droite du morph central"
		)@(
			(height/2)-(morphC height/2)
		)
	)
	].
	
	pos:=3.
	( pos <= (visiteur roues size ) )
	ifTrue:[
	mOR:=MorphOuvreMorph new.
	mOR color:Color black; visiteur:visiteur;element:(visiteur roues at:3).
	fenetre addMorph:(
		mOR position: (
			(width/2)-(morphC width/2)-(mOR width)"a gauche du morph central"
		)@(
			(height/2)+(morphC height/2)-(mOR height)
		)
	)
	].
	
	
	pos:=4.
	( pos <= (visiteur roues size ) )
	ifTrue:[
	mOR:=MorphOuvreMorph new.
	mOR color:Color black; visiteur:visiteur; element:(visiteur roues at:4).
	fenetre addMorph:(
		mOR position: (
			(width/2)+(morphC width/2)"a droite du morph central"
		)@(
			(height/2)+(morphC height/2)-(mOR height)
		)
	)
	]
]

{ #category : #'as yet unclassified' }
VehicInterface >> dessinerRoues:roues largeurC:largeurC hauteurC:hauteurC [
	" TO DO : faire des tests à partir de visiteur nbMaxRoue pour connaître le type du véhicule"
	(visiteur nbMaxRoues=2)
	ifTrue: [
		self dessiner2Roues:roues
		]
	ifFalse: [
		self dessiner4Roues:roues
		]
]

{ #category : #'as yet unclassified' }
VehicInterface >> genererCanvas [
	"gère l'image centrale au milieu de la fenêtre"
	
	"TO DO : selon type du véhicule, utiliser une forme différente"
	
	| rect widthC heightC |
	
	
	widthC:=100.
	heightC:=150.
	
	canvas := FormCanvas extent: widthC@heightC.
	"rectW:=50. rectH:=100."
	rect := Rectangle point: (0@0) point: (widthC)@(heightC).

    
	canvas drawRectangle:rect  color: Color blue  borderWidth: 1  borderColor: Color black. 
]

{ #category : #initialization }
VehicInterface >> initialize [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
	
	super initialize .
	width:=400.
	height:=400.
]

{ #category : #abstract }
VehicInterface >> ouvrirFenetre [
	"Fonction qui appelle les fonctions pour dessiner le morph central  et pour dessiner les roues"	
	"remarque : il faut que l'attribut visiteur soit initialisé"
	
	"creer fenetre"
	fenetre := (SystemWindow labelled:'Véhicule') model: nil.
	fenetre extent:  width@height .
	
	"Partie centrale"
	"creer morph central a partir du canvas"
	self genererCanvas.
	morphC:=canvas form asMorph .
	fenetre  addMorph: (
		morphC position: (
			(width/2)-(morphC width/2)"centrer horizontalement"
		)@(
			(height/2)-(morphC height/2) "centrer verticalement"
		)
	) .
	
	self dessinerRoues:(visiteur roues)largeurC:(morphC width)hauteurC:(morphC height).
	fenetre openInWorld
	
]

{ #category : #accessing }
VehicInterface >> visiteur: aVisiteurDraw [
	visiteur := aVisiteurDraw
]
