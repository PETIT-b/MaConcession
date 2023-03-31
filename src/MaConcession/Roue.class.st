Class {
	#name : #Roue,
	#superclass : #Object,
	#instVars : [
		'diametre',
		'prix'
	],
	#category : #MaConcession
}

{ #category : #visiting }
Roue >> accept: visiteur [			
	visiteur visitRoue:self
]

{ #category : #accessing }
Roue >> diametre [

	^ diametre
]

{ #category : #accessing }
Roue >> diametre: valeur [

	diametre := valeur
]

{ #category : #comparing }
Roue >> equals: otherRoue [
	(diametre=otherRoue diametre )
		ifTrue:
		[(prix=otherRoue prix)
			ifTrue:[^ true]
			ifFalse: [^ false]]
		ifFalse: [^ false]
]

{ #category : #initialization }
Roue >> initialize [ 
	super initialize.
	diametre:=nil.
	prix:=nil
]

{ #category : #accessing }
Roue >> prix [

	^ prix
]

{ #category : #accessing }
Roue >> prix: anObject [

	prix := anObject
]
