Class {
	#name : #VehicInterfaceTest,
	#superclass : #TestCase,
	#category : #'MaConcession-Tests'
}

{ #category : #tests }
VehicInterfaceTest >> testDessiner2RouesCasStandard [
	"véhicule équipé de deux roues pouvant être équipé de deux roues maximum"
	| vehic visit r1 r2 |
	vehic:=Vehicule new.
visit:=VisiteurDraw new.

vehic prix:7800;couleur:Color black;nbMaxRoues: 2.

r1:=Roue new.
r1 diametre:170;prix:90.

r2:=Roue new.
r2 diametre:190;prix:100.

vehic addRoue:r1;addRoue:r2.

vehic accept:visit
]

{ #category : #tests }
VehicInterfaceTest >> testDessiner2RouesCasVide [
			
	| visiteur interface vehic |
	
	vehic:=Vehicule new.
	vehic nbMaxRoues:2.
	visiteur:=VisiteurDraw new.
	
	vehic accept:visiteur.
]

{ #category : #tests }
VehicInterfaceTest >> testDessiner4Roues [
			
	| visiteur vehic r1 r2 r3 |
	
	vehic:=Vehicule new.
	vehic nbMaxRoues:4.
	visiteur:=VisiteurDraw new.
	
	r1:=Roue new. r1 diametre:110.
	r2:=Roue new. r2 diametre:110.
	r3:=Roue new. r3 diametre:125.
	
	vehic addRoue:r1;addRoue:r2;addRoue:r3;accept:visiteur.
]

{ #category : #tests }
VehicInterfaceTest >> testGenererCanvas [
|fenetre|
fenetre:=VehicInterface new.
fenetre genererCanvas.
fenetre canvas form asMorph openInWindow
]
