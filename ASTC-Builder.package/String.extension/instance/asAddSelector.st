*ASTC-Builder
asAddSelector
	^ String streamContents: [ :s | 
			s << 'add'
				<< self capitalized
				<< ':'
				]