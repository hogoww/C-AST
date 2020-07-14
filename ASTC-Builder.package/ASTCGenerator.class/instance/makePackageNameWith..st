creation-system
makePackageNameWith: aTag
	^ String
		streamContents: [ :s | 
			s << packageName.
			aTag ifNotEmpty: [ :tag | s << $- << aTag ] ]