Class {
	#name : #MorphOpenMorph,
	#superclass : #ImageMorph,
	#instVars : [
		'element',
		'visiteur'
	],
	#category : #MaConcession
}

{ #category : #accessing }
MorphOpenMorph >> element:aNobject [
element:=aNobject
]

{ #category : #'event handling' }
MorphOpenMorph >> handlesMouseDown: anEvent [
"Declaring that Morph will react to mouse clicks"
    ^ true
]

{ #category : #initialization }
MorphOpenMorph >> initialize [ 
	super initialize .
]

{ #category : #initialization }
MorphOpenMorph >> mouseDown: anEvent [
	 "self ouvrirMorphRoue" "ancienne version"
	"visiteur visitRoue:(visiteur roues at:pos)" "ancienne version"
	"visiteur roues at:pos accept" "ancienne version"
	element accept:visiteur
]

{ #category : #accessing }
MorphOpenMorph >> visiteur:aVisieur [
	visiteur:=aVisieur
]
