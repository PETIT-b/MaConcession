Class {
	#name : #RoueTest,
	#superclass : #TestCase,
	#category : #'MaConcession-Tests'
}

{ #category : #tests }
RoueTest >> testDiametrePrix [
"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| r |
	r:=Roue new.
	r diametre:30;prix:55.
	self assert: (r diametre == 30).
	self assert: (r prix == 55)
]

{ #category : #tests }
RoueTest >> testEquals [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| r1 r2 |
	r1:= Roue new.
	r2:= Roue new.
	r1 diametre:22; prix:26.
	r2 diametre:22; prix:26.
	self assert: (r1 equals:r2).
	r2 diametre: 21.
	self deny:(r1 equals:r2).
	r2 diametre:22; prix:28.
	self deny:(r1 equals:r2).
	
]

{ #category : #initialization }
RoueTest >> testInitialize [
	| c |
	c:= Roue new.
	self deny:(c==nil)
]
