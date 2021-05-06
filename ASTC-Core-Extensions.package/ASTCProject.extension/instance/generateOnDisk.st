*ASTC-Core-Extensions
generateOnDisk
	"At this point, everything should be where they should be.
	We are generating the support c files, the makefiles, & printing everything."
	self addSupportCFile.	
	self generateMakefiles.
	cFiles do: [ :aCFile | aCFile generateOnDiskPath: self path ].