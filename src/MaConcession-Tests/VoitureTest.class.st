Class {
	#name : #VoitureTest,
	#superclass : #TestCase,
	#category : #'MaConcession-Tests'
}

{ #category : #tests }
VoitureTest >> testAddRoueRemRoue [
			
	| v r1 r2 r3 r4 r1Bis r2Bis r3Bis r4Bis |
	v:=Vehicule new.
	r1:=Roue new.
	r1 diametre: 35; prix:47.
	r2 := Roue new.
	r2 diametre: 40; prix: 65. 
	r3:= Roue new. r3 diametre: 32; prix: 120.
	r4:= Roue new. r4 diametre: 65; prix:145.
	v addRoue: r1; addRoue: r2.
	r2Bis:=v remRoue.
	r1Bis:=v remRoue.
	self assert: (r1 equals: r1Bis).
	self assert: (r2 equals: r2Bis).
	
	v addRoue:r2;addRoue:r1;addRoue:r3.
	"r2 r1 r3"
	r3Bis:=v remRoue.
	v addRoue:r4.
	"r2 r1 r4"
	r4Bis:=v remRoue.
	r1Bis:=v remRoue.
	r2Bis:=v remRoue.
	self assert:(r1 equals:r1Bis).
	self assert:(r2 equals:r2Bis).
	self assert:(r3 equals:r3Bis).
	self assert:(r4 equals:r4Bis)
]

{ #category : #tests }
VoitureTest >> testGetRoue [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| v r1 r1Bis|
	v:= Vehicule new.
	r1:= Roue new. r1 diametre:25; prix:75.
	v addRoue: r1.
	r1Bis:= v roues at:1.
	"COmparaison des références des deux objets, qui doivent être identiques"
	self assert: (r1==r1Bis)
]
