printing
printOn: aStream 
	aStream nextPut: ${.
	isInstantiated 
		ifTrue: [self getValue printOn: aStream]
		ifFalse: [aStream nextPutAll: 'uninstantiated AdHocProxy'].
	aStream nextPut: $}