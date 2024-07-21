# swiftqe

SwiftQE is a Swift Apache Arrow native Query Engine.  This is currently under development and there are many example queries under the Tests folder. 

## Build:
This repo uses submodules and in order to build the arrow submodule will need to be pulled.  

## Operations currently available:
- SELECT 
- FROM
- WHERE
- GROUP BY

### Supported Joins:
- INNER JOIN
- RIGHT JOIN
- LEFT JOIN

### Project Math operators:
- Addition
- Multiplication
- Substraction
- Division

### Where predicate operators:
- Equals
- Not Equals
- Less Than (Equals)
- Greater Than (Equals)

### Aggregate Funcs:
- SUM
- AVG
- MIN
- MAX
- STDDEV

## Engine Config Options:

### failOnSqlParseError: 
- default is currently false

### Filter Types:
- Row: executes predicate per row
- Col: executes each predicate over columns
- ColP: executes each predicate over columns in parallel
- All: predicate is not executed and all rows are returned
