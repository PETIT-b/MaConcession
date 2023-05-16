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
VehicInterface >> canvasDraw [

morphC:=canvas form asMorph .
	fenetre  addMorph: (
		morphC position: (
			(width/2)-(morphC width/2)"centrer horizontalement"
		)@(
			(height/2)-(morphC height/2) "centrer verticalement"
		)
	) .
]

{ #category : #'as yet unclassified' }
VehicInterface >> canvasGenerate [
	"génère l'image centrale au milieu de la fenêtre"
	
	"TO DO : selon type du véhicule, utiliser une forme différente"
	
	| rect widthC heightC |
	
	
	widthC:=100.
	heightC:=180.
	
	canvas := FormCanvas extent: widthC@heightC.
	"rectW:=50. rectH:=100."
	rect := Rectangle point: (0@0) point: (widthC)@(heightC).

    
	canvas drawRectangle:rect  color: Color blue  borderWidth: 1  borderColor: Color black. 
]

{ #category : #'as yet unclassified' }
VehicInterface >> engineDraw:moteur [	
	| mOR imageForm |
	"MorphOuvreRoue"
	
	moteur
	ifNotNil:[
		imageForm := ImageReadWriter formFromFileNamed: '/home/fireboy/Images/Lien vers moteur.png'.
		mOR:=MorphOpenMorph withForm: (imageForm scaledToSize: (morphC width-4)@400) .
		mOR extent:10@10.
	mOR  visiteur:visiteur;element:moteur.
	fenetre addMorph:(
		mOR position: (
			(width/2)-(mOR width/2)"centre"
		)@(
			(height/2)-(morphC height/2)+2 "a l'avant du canvas central"
		)
	)
		
		
		]
	
	
	
]

{ #category : #accessing }
VehicInterface >> fenetre [

	^ fenetre
]

{ #category : #initialization }
VehicInterface >> initialize [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
	
	super initialize .
	width:=400.
	height:=400.
]

{ #category : #accessing }
VehicInterface >> morphC [
	^ morphC
]

{ #category : #accessing }
VehicInterface >> visiteur: aVisiteurDraw [
	visiteur := aVisiteurDraw
]

{ #category : #'as yet unclassified' }
VehicInterface >> wheelsDraw2:roues [	
	| mOR pos ima |
	"MorphOuvreRoue"
	
	"créer une forme pour représenter une roue"
	ima := FormCanvas extent: 20@60.
	ima drawRectangle:(Rectangle point: (0@0) point: (20)@(60))
		color: Color black
		borderWidth: 1
		borderColor: Color black. 
		
	pos:=1.
	( pos <= (visiteur roues size ) )
	ifTrue:[
		"mOR  color:Color black; visiteur:visiteur; element:(visiteur roues at:pos)." "ancienne méthode quand MorphOuvreMorph était une sous classe de Morph"
		
		mOR:=MorphOpenMorph withForm: (ima form) .
		mOR visiteur:visiteur; element:(visiteur roues at:pos).
		
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
	
	mOR:=MorphOpenMorph withForm: (ima form) .
		mOR visiteur:visiteur; element:(visiteur roues at:pos).
		
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
VehicInterface >> wheelsDraw4:roues [	
	| mOR pos ima |
	"MorphOuvreRoue"
	
	"créer une forme pour représenter une roue"
	ima := FormCanvas extent: 20@60.
	ima drawRectangle:(Rectangle point: (0@0) point: (20)@(60))
		color: Color black
		borderWidth: 1
		borderColor: Color black. 
		
	pos:=1.
	( pos <= (visiteur roues size ) )
	ifTrue:[
	"mOR:=MorphOuvreMorph new.
	mOR color:Color black; visiteur:visiteur;element:(visiteur roues at:1)."
	
	mOR:=MorphOpenMorph withForm: (ima form) .
		mOR visiteur:visiteur; element:(visiteur roues at:pos).
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
	mOR:=MorphOpenMorph withForm: (ima form) .
		mOR visiteur:visiteur; element:(visiteur roues at:pos).
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
	mOR:=MorphOpenMorph withForm: (ima form) .
		mOR visiteur:visiteur; element:(visiteur roues at:pos).
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
	mOR:=MorphOpenMorph withForm: (ima form) .
		mOR visiteur:visiteur; element:(visiteur roues at:pos).
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
VehicInterface >> wheelsDraw:roues [
	"faire des tests à partir de visiteur nbMaxRoue pour connaître le type du véhicule"
	(visiteur nbMaxWheels=2)
	ifTrue: [
		self wheelsDraw2:roues
		]
	ifFalse: [
		self wheelsDraw4:roues
		]
]

{ #category : #'as yet unclassified' }
VehicInterface >> windowClear [
	"fonction supprimant tous les morphs non verrouilles"
			
	fenetre submorphs select: [ :m | 
    m class = ImageMorph or: m class = MorphOpenMorph "and: [ 
    m isLocked not ]" ] 
	thenDo: [ :m | m delete ]
]

{ #category : #'as yet unclassified' }
VehicInterface >> windowCreate [
	"creer fenetre"
	fenetre := (SystemWindow labelled:'Véhicule') model: nil.
	fenetre extent:  width@height .
	
]

{ #category : #'as yet unclassified' }
VehicInterface >> windowLoad [
	"Partie centrale"
	"creer morph central a partir du canvas"
	self canvasGenerate.
	self canvasDraw.
	
	self wheelsDraw:(visiteur roues).
	self engineDraw:(visiteur engine)
]
