I represent a (partial) metamodel for the C language.

I only represent the metamodel, I don't define any behavior on it.
I use a Trait that offer the possibilities to see me as text (in the Transcript) or as a UML Diagram with PlantUML.
You could also generate me with the FmxMB classes by using the following message:
ASTCBuilder new generate. 
(which won't work in the current state of this program, since we use a slightly different semantic to be used with another generator. See ASTCGenerator.)

You can interact with me with a visitor, by subclassing FmxMBVisitor (cf for documentation).
 
These instances variables are there to keep the references to the classes we create along the way, by using FmxNG
    Instance Variables
	block:		<Object>
	compilationUnit:		<Object>
	declaration:		<Object>
	declarationsContainerTrait:		<Object>
	expression:		<Object>
	expressionStatement:		<Object>
	expressionsContainerTrait:		<Object>
	functionCall:		<Object>
	functionDefinition:		<Object>
	identifier:		<Object>
	if:		<Object>
	literal:		<Object>
	node:		<Object>
	operator:		<Object>
	project:		<Object>
	return:		<Object>
	statement:		<Object>
	statementsContainerTrait:		<Object>
	type:		<Object>