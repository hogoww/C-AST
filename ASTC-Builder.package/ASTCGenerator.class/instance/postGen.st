actions
postGen
	| rootClass |
	rootClass := builder classes detect: [:aClass| aClass name = #Node ]."pretty bad, but it'll do for now."
	self addAllClassTesterTo: rootClass.
	self addFillFromSupportTo: rootClass