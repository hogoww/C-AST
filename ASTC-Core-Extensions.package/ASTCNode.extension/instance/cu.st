*ASTC-Core-Extensions
cu
	" convinience method to be able to get the correspomnding compilationUnit from anywhere "
	self isCompilationUnit ifFalse: [ ^ parent ifNotNil: [ parent cu ] ifNil: [self error: 'projects don''t have compilation units' ]].
	^ self 