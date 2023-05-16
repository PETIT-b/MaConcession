Class {
	#name : #Visiteur,
	#superclass : #Object,
	#category : #MaConcession
}

{ #category : #visiting }
Visiteur >> visitEngine: m [
	m displacement.
	m puissance.
	m prix
]

{ #category : #visiting }
Visiteur >> visitVehicle:  vehi [
	vehi engine accept: self.
	vehi couleur.
	vehi prix.
	1 to:(vehi roues size) do:[:i |(vehi roues at:i) accept:self]
]

{ #category : #visiting }
Visiteur >> visitWheel: r [
	r diametre.
	r prix
]

{ #category : #visiting }
Visiteur >> visiter: vehi [
	vehi engine accept: self.
	vehi couleur.
	vehi prix.
	1 to:(vehi roues size) do:[:i |(vehi roues at:i) accept:self]
]
