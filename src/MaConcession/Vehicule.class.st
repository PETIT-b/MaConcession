Class {
	#name : #Vehicule,
	#superclass : #Object,
	#instVars : [
		'roues',
		'moteur',
		'couleur',
		'prix',
		'nbMaxRoues'
	],
	#category : #MaConcession
}

{ #category : #visiting }
Vehicule >> accept: visiteur [			
	visiteur visitVehicule:self
]

{ #category : #adding }
Vehicule >> addRoue: uneRoue [
	roues add: uneRoue.
]

{ #category : #accessing }
Vehicule >> couleur [

	^ couleur
]

{ #category : #accessing }
Vehicule >> couleur: anObject [

	couleur := anObject
]

{ #category : #initialization }
Vehicule >> initialize [ 
	super initialize.
	roues:= OrderedCollection new.
	nbMaxRoues := 4.
	
]

{ #category : #accessing }
Vehicule >> moteur [

	^ moteur
]

{ #category : #accessing }
Vehicule >> moteur: anObject [

	moteur := anObject
]

{ #category : #accessing }
Vehicule >> prix [

	^ prix
]

{ #category : #accessing }
Vehicule >> prix: anObject [

	prix := anObject
]

{ #category : #'as yet unclassified' }
Vehicule >> remRoue [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
	| r |		
	r:=roues removeLast.
	^ r
]

{ #category : #accessing }
Vehicule >> roues [

	^ roues
]

{ #category : #accessing }
Vehicule >> roues: anObject [

	roues := anObject
]
