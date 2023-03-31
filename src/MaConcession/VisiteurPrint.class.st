Class {
	#name : #VisiteurPrint,
	#superclass : #Object,
	#category : #MaConcession
}

{ #category : #visiting }
VisiteurPrint >> visitMoteur: m [
	Transcript cr;
	show: m cylindree;cr;
	show: m puissance;cr;
	show: m prix;cr
]

{ #category : #visiting }
VisiteurPrint >> visitRoue: r [

	Transcript cr;
	show: r prix;cr;
	show: r diametre;cr
]

{ #category : #visiting }
VisiteurPrint >> visitVehicule:  vehi [
	vehi moteur accept: self.
	Transcript cr;
	show: vehi couleur;
	show: vehi prix;cr.
	"1 to:(vehi roues size) do:[:i |(vehi roues at:i) accept:self]"
	vehi roues do:[:uneRoue |uneRoue accept:self]
]
