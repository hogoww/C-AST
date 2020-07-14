accessing
addArgument: anArgument
	anArgument parent: self.
	arguments add: anArgument.
	^ true