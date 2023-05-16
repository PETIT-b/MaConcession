Class {
	#name : #VehicleTest,
	#superclass : #TestCase,
	#category : #'MaConcession-Tests'
}

{ #category : #tests }
VehicleTest >> testAddEngine [
			
	| vehic m |
	vehic:=Vehicle new.
	m:=Engine new.
	vehic engine:m.
	self assert:(vehic engine =m).
]

{ #category : #tests }
VehicleTest >> testAddRemWheel [
			
	| v r1 r2 r3 r4 r1Bis r2Bis r3Bis r4Bis |
	v:=Vehicle new.
	r1:=Wheel new.
	r1 diametre: 35; prix:47.
	r2 := Wheel new.
	r2 diametre: 40; prix: 65. 
	r3:= Wheel new. r3 diametre: 32; prix: 120.
	r4:= Wheel new. r4 diametre: 65; prix:145.
	v addWheel: r1; addWheel: r2.
	r2Bis:=v remWheel.
	r1Bis:=v remWheel.
	self assert: (r1 equals: r1Bis).
	self assert: (r2 equals: r2Bis).
	
	v addWheel:r2;addWheel:r1;addWheel:r3.
	"r2 r1 r3"
	r3Bis:=v remWheel.
	v addWheel:r4.
	"r2 r1 r4"
	r4Bis:=v remWheel.
	r1Bis:=v remWheel.
	r2Bis:=v remWheel.
	self assert:(r1 equals:r1Bis).
	self assert:(r2 equals:r2Bis).
	self assert:(r3 equals:r3Bis).
	self assert:(r4 equals:r4Bis)
]

{ #category : #tests }
VehicleTest >> testAddWheel [
			
	| vehic r1 |
	vehic:=Vehicle new.
	self assert:(vehic roues size=0).
	r1:=Wheel new.
	vehic addWheel:r1.
	self assert:(vehic roues size=1).
]

{ #category : #tests }
VehicleTest >> testEngine [
			
	| vehic m |
	vehic:=Vehicle new.
	m:=Engine new.
	vehic engine:m.
	self assert:(vehic engine =m).
]

{ #category : #tests }
VehicleTest >> testGetRoue [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| v r1 r1Bis|
	v:= Vehicle new.
	r1:= Wheel new. r1 diametre:25; prix:75.
	v addWheel: r1.
	r1Bis:= v roues at:1.
	"COmparaison des références des deux objets, qui doivent être identiques"
	self assert: (r1==r1Bis)
]
