Class {
	#name : #VisiteurPrintTest,
	#superclass : #TestCase,
	#category : #'MaConcession-Tests'
}

{ #category : #tests }
VisiteurPrintTest >> testVisitVehicle [

	"créer un véhicule"
	| v m r1 r2 r3 |
	v :=Vehicle new.
	m:=Engine new. m displacement: 1400; puissance: 75;prix:750.
	r1:=Wheel new. r1 diametre: 68; prix:  120.
	r2:=Wheel new. r2 diametre: 75; prix:  138.
	r3:=Wheel new. r3 diametre: 58; prix:  110.
	v engine:m;addWheel:r1;addWheel:r2;addWheel:r3.
	
	"visiter le véhicule"
	v accept:(VisiteurPrint new)
]
