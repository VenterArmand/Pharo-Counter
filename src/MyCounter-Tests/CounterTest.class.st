Class {
	#name : 'CounterTest',
	#superclass : 'TestCase',
	#instVars : [
		'counter'
	],
	#category : 'MyCounter-Tests',
	#package : 'MyCounter-Tests'
}

{ #category : 'tests' }
CounterTest >> testAlternateCreationMethod [
	self assert: ((Counter startingAt: 19) increment ; count) equals: 20
]

{ #category : 'tests' }
CounterTest >> testCountIsSetAndRead [
	| c |
	c:= Counter new.
	c count: 7.
	self assert: c count equals: 7.
]

{ #category : 'tests' }
CounterTest >> testCounterStartingAt5 [
	self assert: (Counter startingAt: 5) count equals: 5.
]

{ #category : 'tests' }
CounterTest >> testDecrement [
	| c |
	c:= Counter new.
	c count: 7.
	c decrement;decrement;decrement;decrement.
	self assert: c count equals: 3.
]

{ #category : 'tests' }
CounterTest >> testIncrement [
	| c |
	c:= Counter new.
	c count: 0.
	c increment; increment; increment.
	self assert: c count equals: 3.
]

{ #category : 'tests' }
CounterTest >> testInitialize [
	self assert: Counter new count equals: 0
]

{ #category : 'tests' }
CounterTest >> testPrintOn [
	"This test ensures the printOn: method outputs the correct string representation of the counter."
    | outputStream |
    outputStream := String new writeStream.
    
    "Testing when the counter is at the initial value 0"
    counter printOn: outputStream.
    self assert: outputStream contents equals: 'Counter value: 0'.
    
]
