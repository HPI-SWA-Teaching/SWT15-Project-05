testing
matches: aNode

	| node |
	node := aNode.
	selectors reverseDo: 
	[:ea | 
		(ea matches: node) 
			ifFalse: [^false] 
			ifTrue:
			[
				selectors first == ea ifFalse:
				[
					node parent ifNil: [^false].
					node := node parent children before: node ifAbsent:[^false]
				]
			]
	].
	^true