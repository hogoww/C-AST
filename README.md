# C-AST

A C AST for C code generation in Pharo.

To build the C-AST you need to use a Moose image with the FamixMetamodelGenerator.
Those dependencies are only for one package : 'ASTC-Builder'.

You can edit the ast metamodel in : ASTCBuilder
And generate the code using : `ASTCGenerator generate`.
A Graphical representation can be obtained using Famix : FmxMBPlantTextVisitor (Also available by using `ASTCBuilder new toUML`)

The generated code is in ASTC-gen, and the latest version is uploaded in this repository.
When regenerating the metamodel code, every package depending on it will be reloaded.
Methods added to the ASTC-gen code should be put in the ASTC-Gen-Extensions package.