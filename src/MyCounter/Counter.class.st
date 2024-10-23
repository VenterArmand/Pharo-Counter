"
Counter class for keeping count, with increment and decrement functionality
"
Class {
	#name : 'Counter',
	#superclass : 'Object',
	#instVars : [
		'count'
	],
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'accessing' }
Counter class >> startingAt: startingNumber [
	^ self new count: startingNumber.
]

{ #category : 'accessing' }
Counter >> count [
	^count.
]

{ #category : 'accessing' }
Counter >> count: inputNumber [
	count:= inputNumber.
]

{ #category : 'API' }
Counter >> decrement [
	count:= count - 1.
	^count.
]

{ #category : 'accessing' }
Counter >> increment [
	count:= count + 1.
	^count.
]

{ #category : 'initialization' }
Counter >> initialize [
	count:= 0.
]

{ #category : 'printing' }
Counter >> printOn: aStream [
	"This method prints the current value of the counter using the stream's #print: method."
   aStream nextPutAll: 'Counter value: '.
   aStream print: count.
]
