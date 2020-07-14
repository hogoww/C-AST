accessing
description
	^ String streamContents:[:s|
		s print: keyword;
			<< ' is reserved a reserved keyword in C.'
		 ].