Class {
	#name : #MoteurTest,
	#superclass : #TestCase,
	#category : #'MaConcession-Tests'
}

{ #category : #initialization }
MoteurTest >> initialize [ 
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	super initialize 
]

{ #category : #tests }
MoteurTest >> testEquals [ 
| m1 m2 |
m1:=Engine new. m1 displacement: 1600;puissance:90;prix:1500.
m2:=Engine new. m2 displacement: 1400;puissance:75;prix:750.
self deny:(m1 equals:m2).

m2 displacement: m1 displacement.
self deny:(m1 equals:m2).

m2 puissance:m1 puissance.
self deny:(m1 equals:m2).

m2 prix: m1 prix.
self assert:(m1 equals:m2)
]
