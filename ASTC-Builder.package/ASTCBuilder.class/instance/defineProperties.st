definition
defineProperties 
	super defineProperties.
	
	"define the properties of the classes following the FmxNG syntax."
	"Having some kind of type check on those would be nice, generated in the debug visitor."
	
	cFile property: #fileName type: #String.
	cFile property: #isHeader type: #Boolean.
	
	node property: #pharoNode type: #RBNode.
	node property: #comment type: #String.

	functionDeclaration property: #qualifiers type: #OrderedCollection.

	identifier property: #id type: #String.

	"removing the type might be a good idea"
	literal property: #value type: #String.
	
	rawCCode property: #cCode type: #String.
	rawDeclaration property: #rawDeclaration type: #String.
	rawDeclaration property: #varName type: #String.

	type property: #type type: #TypeConstraint.

	preprocessorInclude property: #name type: #String.
	