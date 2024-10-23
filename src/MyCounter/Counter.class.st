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
Counter >> count [
	^count.
]

{ #category : 'accessing' }
Counter >> count: inputNumber [
	count:= inputNumber.
]
