Class {
	#name : #Moteur,
	#superclass : #Object,
	#instVars : [
		'cylindree',
		'puissance',
		'prix'
	],
	#category : #MaConcession
}

{ #category : #visiting }
Moteur >> accept: visiteur [			
	visiteur visitMoteur:self
]

{ #category : #accessing }
Moteur >> cylindree [

	^ cylindree
]

{ #category : #accessing }
Moteur >> cylindree: anObject [

	cylindree := anObject
]

{ #category : #comparing }
Moteur >> equals: oM [
	(cylindree=oM cylindree) ifFalse:[^ false].
	(puissance=oM puissance) ifFalse:[^ false].
	(prix=oM prix) ifFalse:[^ false].
	"si tous les tests précédents sont vrais"
	^true
]

{ #category : #accessing }
Moteur >> prix [

	^ prix
]

{ #category : #accessing }
Moteur >> prix: anObject [

	prix := anObject
]

{ #category : #accessing }
Moteur >> puissance [

	^ puissance
]

{ #category : #accessing }
Moteur >> puissance: anObject [

	puissance := anObject
]
