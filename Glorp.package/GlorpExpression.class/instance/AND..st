api
AND: anExpression
	"This method doesn't really have to exist, because it would be inferred using operationFor:, but it's included here for efficiency and to make it a little less confusing how relation expression get created. Note that the two expression must already be  built on the same base!"

	anExpression isNil ifTrue: [^self].
	anExpression == true ifTrue: [^self].
	anExpression == false ifTrue: [^false].
	(anExpression isGlorpExpression and: [anExpression isEmptyExpression]) ifTrue: [^self].
	^RelationExpression named: #AND basedOn: self withArguments: (Array with: anExpression).