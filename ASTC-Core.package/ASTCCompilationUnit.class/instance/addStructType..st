accessing
addStructType: aStructType
	aStructType parent: self.
	structTypes add: aStructType.
	^ true