Class {
	#name : 'CounterTest',
	#superclass : 'TestCase',
	#category : 'MyCounter-Tests',
	#package : 'MyCounter-Tests'
}

{ #category : 'tests' }
CounterTest >> testCountIsSetAndRead [
	| c |
	c:= Counter new.
	c count: 7.
	self assert: c count equals: 7.
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
