Class {
	#name : #Wheel,
	#superclass : #Object,
	#instVars : [
		'diametre',
		'prix'
	],
	#category : #MaConcession
}

{ #category : #visiting }
Wheel >> accept: visiteur [			
	visiteur visitWheel:self
]

{ #category : #accessing }
Wheel >> diametre [

	^ diametre
]

{ #category : #accessing }
Wheel >> diametre: valeur [

	diametre := valeur
]

{ #category : #comparing }
Wheel >> equals: otherRoue [
	(diametre=otherRoue diametre )
		ifTrue:
		[(prix=otherRoue prix)
			ifTrue:[^ true]
			ifFalse: [^ false]]
		ifFalse: [^ false]
]

{ #category : #initialization }
Wheel >> initialize [ 
	super initialize.
	diametre:=nil.
	prix:=nil
]

{ #category : #accessing }
Wheel >> prix [

	^ prix
]

{ #category : #accessing }
Wheel >> prix: anObject [

	prix := anObject
]
