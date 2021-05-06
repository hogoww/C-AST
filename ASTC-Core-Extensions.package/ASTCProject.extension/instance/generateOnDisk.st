*ASTC-Core-Extensions
generateOnDisk
	"At this point, everything should be where they should be.
	We are generating the makefiles, & printing everything."
	self generateMakefiles.
	cFiles do: [ :aCFile | aCFile generateOnDiskPath: self path ].
	self flag: #todo. "this should be put in a CFile"
	MAIlliciumTranslator generateTestSupport.