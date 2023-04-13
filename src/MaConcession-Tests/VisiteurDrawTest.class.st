Class {
	#name : #VisiteurDrawTest,
	#superclass : #TestCase,
	#category : #'MaConcession-Tests'
}

{ #category : #tests }
VisiteurDrawTest >> testVisitMoteur [
	| visiteurD m1 m2 |
	visiteurD:=VisiteurDraw new.
	m1:=Moteur new.
	m1 cylindree:1500;puissance:75;prix:2400;accept:visiteurD.
	
	m2:=Moteur new.
	m2 cylindree:1275;accept:visiteurD
]

{ #category : #tests }
VisiteurDrawTest >> testVisitRoue [
	| visiteurD r1 r2 |
	visiteurD:=VisiteurDraw new.
	r1:=Roue new.
	r1 diametre:150;prix:57;accept:visiteurD.
	
	r2:=Roue new.
	r2 diametre:175;accept:visiteurD
]

{ #category : #tests }
VisiteurDrawTest >> testVisitVehicule [ 
			
	| visiteurD vehi r m |
	visiteurD := VisiteurDraw new.
	vehi:=Vehicule new.
	vehi prix:7899;couleur:Color red ;nbMaxRoues:4.
	
	r:=Roue new. r diametre:150;prix:55.
	vehi addRoue:r.
	r:=Roue new. r diametre:150;prix:55.
	vehi addRoue:r.
	r:=Roue new. r diametre:170;prix:67.
	vehi addRoue:r.
	r:=Roue new. r diametre:170;prix:67.
	vehi addRoue:r.
	
	m:=Moteur new.
	m cylindree: 1400; puissance:75; prix:750.
	vehi moteur:m.
	
	vehi accept:visiteurD.
]
