accessing
addMember: aMember
	aMember parent: self.
	members add: aMember.
	^ true