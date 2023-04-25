Class {
	#name : #MorphOuvreMorph,
	#superclass : #ImageMorph,
	#instVars : [
		'element',
		'visiteur'
	],
	#category : #MaConcession
}

{ #category : #accessing }
MorphOuvreMorph >> element:aNobject [
element:=aNobject
]

{ #category : #'event handling' }
MorphOuvreMorph >> handlesMouseDown: anEvent [
"Declaring that Morph will react to mouse clicks"
    ^ true
]

{ #category : #initialization }
MorphOuvreMorph >> initialize [ 
	super initialize .
]

{ #category : #initialization }
MorphOuvreMorph >> mouseDown: anEvent [
	 "self ouvrirMorphRoue" "ancienne version"
	"visiteur visitRoue:(visiteur roues at:pos)" "ancienne version"
	"visiteur roues at:pos accept" "ancienne version"
	element accept:visiteur
]

{ #category : #accessing }
MorphOuvreMorph >> visiteur:aVisieur [
	visiteur:=aVisieur
]
