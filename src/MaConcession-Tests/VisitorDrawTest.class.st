Class {
	#name : #VisitorDrawTest,
	#superclass : #TestCase,
	#category : #'MaConcession-Tests'
}

{ #category : #tests }
VisitorDrawTest >> testVisitDelay [
"TO DO : make Tests with delay that work not only in Playground"
	| vehi r1 r2 r3 r4 mot visi |
	vehi:=Vehicle new.
r1:=Wheel new. r1 diametre: 110.
r2:=Wheel new. r2 diametre: 110.
r3:=Wheel new. r3 diametre: 130.
r4:=Wheel new. r4 diametre: 130.
mot:=Engine new.
visi:=VisitorDraw new.
vehi nbMaxWheels:4; addWheel: r1;addWheel:r2;engine:mot; accept:visi.

[(Delay forSeconds: 3) wait.
vehi nbMaxWheels:4; remWheel; remWheel; accept:visi.


(Delay forSeconds: 3) wait.
vehi addWheel: r1;addWheel:r2; addWheel:r3;addWheel:r4;engine:mot; accept:visi.


] fork
]

{ #category : #tests }
VisitorDrawTest >> testVisitDelayDelete [
"TO DO : make Tests with delay that work not only in Playground"
	| vehi r1 r2 mot visi |
	vehi:=Vehicle new.
r1:=Wheel new.
r2:=Wheel new.
mot:=Engine new.
visi:=VisitorDraw new.
vehi nbMaxWheels:4; addWheel: r1;addWheel:r2;engine:mot; accept:visi.
[(Delay forSeconds: 3) wait.
(visi interface fenetre) removeMorph:  (visi interface morphC).
visi interface fenetre submorphs select: [ :m | 
    (m class = ImageMorph or: m class = MorphOpenMorph ) and: [ 
    m isLocked not ] ] 
thenDo: [ :m | m delete ].
"
(Delay forSeconds: 3) wait.
vehi addRoue: r1;addRoue:r2;moteur:nil; accept:visi
"

] fork
]

{ #category : #tests }
VisitorDrawTest >> testVisitEngine [
	| visiteurD m1 m2 |
	visiteurD:=VisitorDraw new.
	m1:=Engine new.
	m1 displacement:1500;puissance:75;prix:2400;accept:visiteurD.
	
	m2:=Engine new.
	m2 displacement:1275;accept:visiteurD
]

{ #category : #tests }
VisitorDrawTest >> testVisitVehicle [ 
			
	| visiteurD vehi r m |
	visiteurD := VisitorDraw new.
	vehi:=Vehicle new.
	vehi prix:7899;couleur:Color red ;nbMaxWheels:4.
	
	r:=Wheel new. r diametre:150;prix:55.
	vehi addWheel:r.
	r:=Wheel new. r diametre:150;prix:55.
	vehi addWheel:r.
	r:=Wheel new. r diametre:170;prix:67.
	vehi addWheel:r.
	r:=Wheel new. r diametre:170;prix:67.
	vehi addWheel:r.
	
	m:=Engine new.
	m displacement: 1400; puissance:75; prix:750.
	vehi engine:m.
	
	vehi accept:visiteurD.
]

{ #category : #tests }
VisitorDrawTest >> testVisitWheel [
	| visiteurD r1 r2 |
	visiteurD:=VisitorDraw new.
	r1:=Wheel new.
	r1 diametre:150;prix:57;accept:visiteurD.
	
	r2:=Wheel new.
	r2 diametre:175;accept:visiteurD
]
