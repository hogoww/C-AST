I represent a stateless Trait used to print metamodels.

I just offer a primitive that will print myself in diverses ways.

I can interact with a metamodel builder, that is subclassing FamixMetamodelGenerator.

- toText : prints the metamodel on the Transcript
- message two  : returns a text which you can use with PlantUML to genearte a representation of the model in UML. (print it (ctrl+p) and copy/paste in the necessary file.)

Try me ! 
ASTCBuilder new toUML.