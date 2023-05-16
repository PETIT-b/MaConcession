Class {
	#name : #VisiteurPrint,
	#superclass : #Object,
	#category : #MaConcession
}

{ #category : #visiting }
VisiteurPrint >> visitEngine: m [
	Transcript show:'Moteur :' ;cr;
	show: 'Cylindrée : '; show: m displacement;cr;
	show: 'Puissance : '; show: m puissance;cr;
	show: 'Prix : '; show: m prix
]

{ #category : #visiting }
VisiteurPrint >> visitVehicle: vehi [
	Transcript show:'Vehicule :';cr.
	
	vehi couleur
		ifNil: [ Transcript show: 'Pas de Couleur spécifiée' ]
		ifNotNil: [ Transcript show: vehi couleur].
		
	Transcript cr.
	vehi prix
		ifNil: [ Transcript show: 'Pas de prix spécifié' ]
		ifNotNil: [ Transcript show: vehi prix].
	"1 to:(vehi roues size) do:[:i |(vehi roues at:i) accept:self]"
	
	Transcript cr.
	vehi engine
		ifNil: [ Transcript show: 'Pas de moteur' ]
		ifNotNil: [ vehi engine accept: self ].
	
	Transcript cr.
	vehi roues do: [ :uneRoue | uneRoue accept: self ]
]

{ #category : #visiting }
VisiteurPrint >> visitWheel: r [

	Transcript show:'Roue :'; cr;
	show:'Prix : '; show: r prix;cr;
	show:'Diamètre : '; show: r diametre;cr
]
