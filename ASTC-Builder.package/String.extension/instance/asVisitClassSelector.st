*ASTC-Builder
asVisitClassSelector
	^ String
		streamContents: [ :s | 
			s
				nextPutAll: 'visit';
				nextPutAll: self capitalized;
				nextPutAll: ':' ]