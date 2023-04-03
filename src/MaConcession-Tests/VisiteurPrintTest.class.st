Class {
	#name : #VisiteurPrintTest,
	#superclass : #TestCase,
	#category : #'MaConcession-Tests'
}

{ #category : #tests }
VisiteurPrintTest >> testVisitVehicule [

	"créer un véhicule"
	| v m r1 r2 r3 |
	v :=Vehicule new.
	m:=Moteur new. m cylindree: 1400; puissance: 75;prix:750.
	r1:=Roue new. r1 diametre: 68; prix:  120.
	r2:=Roue new. r2 diametre: 75; prix:  138.
	r3:=Roue new. r3 diametre: 58; prix:  110.
	v moteur:m;addRoue:r1;addRoue:r2;addRoue:r3.
	
	"visiter le véhicule"
	v accept:(VisiteurPrint new)
]
