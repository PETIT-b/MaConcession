Class {
	#name : #Vehicle,
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
Vehicle >> accept: visiteur [			
	visiteur visitVehicle:self
]

{ #category : #adding }
Vehicle >> addWheel: uneRoue [
	roues add: uneRoue.
]

{ #category : #accessing }
Vehicle >> couleur [

	^ couleur
]

{ #category : #accessing }
Vehicle >> couleur: anObject [

	couleur := anObject
]

{ #category : #accessing }
Vehicle >> engine [

	^ moteur
]

{ #category : #accessing }
Vehicle >> engine: anObject [

	moteur := anObject
]

{ #category : #initialization }
Vehicle >> initialize [ 
	super initialize.
	roues:= OrderedCollection new.
	nbMaxRoues := 4.
	
]

{ #category : #accessing }
Vehicle >> nbMaxWheels [
	^ nbMaxRoues
]

{ #category : #accessing }
Vehicle >> nbMaxWheels: anInteger [ 
	nbMaxRoues := anInteger
]

{ #category : #accessing }
Vehicle >> prix [

	^ prix
]

{ #category : #accessing }
Vehicle >> prix: anObject [

	prix := anObject
]

{ #category : #removing }
Vehicle >> remWheel [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
	| r |		
	r:=roues removeLast.
	^ r
]

{ #category : #accessing }
Vehicle >> roues [

	^ roues
]

{ #category : #accessing }
Vehicle >> roues: anObject [

	roues := anObject
]
