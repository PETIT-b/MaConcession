Class {
	#name : #Visiteur,
	#superclass : #Object,
	#category : #MaConcession
}

{ #category : #visiting }
Visiteur >> visitMoteur: m [
	m cylindree.
	m puissance.
	m prix
]

{ #category : #visiting }
Visiteur >> visitRoue: r [
	r diametre.
	r prix
]

{ #category : #visiting }
Visiteur >> visitVehicule:  vehi [
	vehi moteur accept: self.
	vehi couleur.
	vehi prix.
	1 to:(vehi roues size) do:[:i |(vehi roues at:i) accept:self]
]

{ #category : #visiting }
Visiteur >> visiter: vehi [
	vehi moteur accept: self.
	vehi couleur.
	vehi prix.
	1 to:(vehi roues size) do:[:i |(vehi roues at:i) accept:self]
]
