*ASTC-Builder
asTesterSelector
	^ String streamContents: [ :s |
			s nextPutAll: 'is';
				nextPutAll: self capitalized
			]