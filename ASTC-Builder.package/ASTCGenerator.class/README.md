I represent a generator for an AST (for the C language)

I visit a FamixMetamodelGenerator and generate classes and their content.

I interact with an AST Builder (here ASTCBuilder), and use it's informations for my generation.



For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- #generate  "Generate the project described in ASTCBuilder'
- #generate (Class Side) "shortcut for previous message"

-For developers:
	#visitSomething: "Walked visit by the order defined in FmxMBWalkerVisitor. Everything starts from there."

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	astPrinterVisitor:		<Class> "keep a reference for the astPrinterVisitor class we're generating throughout the visit"
	astVisitorClass:		<Class> "keep a reference for the astVisitorClass class we're generating throughout the visit"
	astWalkerVisitorClass:		<Class> "keep a reference for the astWalkerVisitor class we're generating throughout the visit"
	builder:		<FamixMetamodelGenerator> "refer to the visited builder"
	collectionsType:		<Class> "Configuration attributes. Defines what class of collections the aggregations will be transformed to."
	currentClass:		<Class> "Which class we're currently visinting, while visiting properties and relationShipSide"
	packageName:		<String>	"package defined in the builder"
	parentPropertyName:		<String> "configuration attribute. Name of the attribute parent in #Node in the generation"
	prefix:		<String> "prefix defined in the builder"


    Implementation Points