printing
printOn: aStream

	self parent tag printOn: aStream.
	aStream nextPutAll: ' must be empty.'