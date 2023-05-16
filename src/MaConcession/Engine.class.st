Class {
	#name : #Engine,
	#superclass : #Object,
	#instVars : [
		'displacement',
		'puissance',
		'prix'
	],
	#category : #MaConcession
}

{ #category : #visiting }
Engine >> accept: visiteur [			
	visiteur visitEngine:self
]

{ #category : #accessing }
Engine >> displacement [

	^ displacement
]

{ #category : #accessing }
Engine >> displacement: anObject [

	displacement := anObject
]

{ #category : #comparing }
Engine >> equals: oM [
	(displacement=oM displacement) ifFalse:[^ false].
	(puissance=oM puissance) ifFalse:[^ false].
	(prix=oM prix) ifFalse:[^ false].
	"si tous les tests précédents sont vrais"
	^true
]

{ #category : #accessing }
Engine >> prix [

	^ prix
]

{ #category : #accessing }
Engine >> prix: anObject [

	prix := anObject
]

{ #category : #accessing }
Engine >> puissance [

	^ puissance
]

{ #category : #accessing }
Engine >> puissance: anObject [

	puissance := anObject
]
