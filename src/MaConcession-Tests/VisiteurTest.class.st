Class {
	#name : #VisiteurTest,
	#superclass : #TestCase,
	#category : #'MaConcession-Tests'
}

{ #category : #tests }
VisiteurTest >> testVisitVehicle [

	"créer un véhicule"
	| v m r1 r2 r3 |
	v :=Vehicle new.
	m:=Engine new. m displacement: 1400; puissance: 75;prix:750.
	r1:=Wheel new. r1 diametre: 68; prix:  120.
	r2:=r1 diametre: 68; prix:  134.
	r3:=r1 diametre: 68; prix:  110.
	v engine:m;addWheel:r1;addWheel:r2;addWheel:r3.
	
	"visiter le véhicule"
	v accept:(Visiteur new)
]

{ #category : #tests }
VisiteurTest >> testVisiter [
	
	"créer un véhicule"
	| v m r1 r2 r3 visiteur |
	v :=Vehicle new.
	m:=Engine new. m displacement: 1400; puissance: 75;prix:750.
	r1:=Wheel new. r1 diametre: 68; prix:  120.
	r2:=r1 diametre: 68; prix:  134.
	r3:=r1 diametre: 68; prix:  110.
	v engine:m;addWheel:r1;addWheel:r2;addWheel:r3.
	visiteur:=Visiteur new.
	visiteur visiter: v
]
