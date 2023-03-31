Class {
	#name : #VisiteurTest,
	#superclass : #TestCase,
	#category : #'MaConcession-Tests'
}

{ #category : #tests }
VisiteurTest >> testVisitVehicule [

	"créer un véhicule"
	| v m r1 r2 r3 |
	v :=Vehicule new.
	m:=Moteur new. m cylindree: 1400; puissance: 75;prix:750.
	r1:=Roue new. r1 diametre: 68; prix:  120.
	r2:=r1 diametre: 68; prix:  134.
	r3:=r1 diametre: 68; prix:  110.
	v moteur:m;addRoue:r1;addRoue:r2;addRoue:r3.
	
	"visiter le véhicule"
	v accept:(Visiteur new)
]

{ #category : #tests }
VisiteurTest >> testVisiter [
	
	"créer un véhicule"
	| v m r1 r2 r3 visiteur |
	v :=Vehicule new.
	m:=Moteur new. m cylindree: 1400; puissance: 75;prix:750.
	r1:=Roue new. r1 diametre: 68; prix:  120.
	r2:=r1 diametre: 68; prix:  134.
	r3:=r1 diametre: 68; prix:  110.
	v moteur:m;addRoue:r1;addRoue:r2;addRoue:r3.
	visiteur:=Visiteur new.
	visiteur visiter: v
]
