Class {
	#name : #VehicInterfaceTest,
	#superclass : #TestCase,
	#category : #'MaConcession-Tests'
}

{ #category : #tests }
VehicInterfaceTest >> testCanvasGenerate [
|fenetre|
fenetre:=VehicInterface new.
fenetre canvasGenerate.
fenetre canvas form asMorph openInWindow
]

{ #category : #tests }
VehicInterfaceTest >> testDessiner2RouesCasStandard [
	"véhicule équipé de deux roues pouvant être équipé de deux roues maximum"
	| vehic visit r1 r2 |
	vehic:=Vehicle new.
visit:=VisitorDraw new.

vehic prix:7800;couleur:Color black;nbMaxWheels: 2.

r1:=Wheel new.
r1 diametre:170;prix:90.

r2:=Wheel new.
r2 diametre:190;prix:100.

vehic addWheel:r1;addWheel:r2.

vehic accept:visit
]

{ #category : #tests }
VehicInterfaceTest >> testDessiner2RouesCasVide [
			
	| visiteur interface vehic |
	
	vehic:=Vehicle new.
	vehic nbMaxWheels:2.
	visiteur:=VisitorDraw new.
	
	vehic accept:visiteur.
]

{ #category : #tests }
VehicInterfaceTest >> testDessiner4Roues [
			
	| visiteur vehic r1 r2 r3 |
	
	vehic:=Vehicle new.
	vehic nbMaxWheels:4.
	visiteur:=VisitorDraw new.
	
	r1:=Wheel new. r1 diametre:110.
	r2:=Wheel new. r2 diametre:110.
	r3:=Wheel new. r3 diametre:125.
	
	vehic addWheel:r1;addWheel:r2;addWheel:r3;accept:visiteur.
]
