visiting
visitCFile: aCFile

	[ super visitCFile: aCFile ]
		on: AssertionFailure
		do: [ errors := errors + 1 ]