*ASTC-Builder
realClassOrIfAbsent: aBlock

    ^ [ realClass ifNil: [ self class environment at: self fullName  ] ] on: KeyNotFound do:[ aBlock ]