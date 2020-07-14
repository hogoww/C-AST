accessing
addCase: aCase
	aCase parent: self.
	cases add: aCase.
	^ true