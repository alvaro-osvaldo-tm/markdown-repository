# Systems Engineering Documentation

## System Context

![context-diagram](../../support/repositories/images/context-diagram.svg)

## Main Documents Hierarchy

```mermaid
flowchart 

subgraph BusinessLevel["Business Level"]
	ProblemAgreement["Problem Agreement"]
	StatementOfWork["Statement of Work"]
	ConceptOfOperations["Concept of Operations"]
end

subgraph SystemLevel["System Level"]

	FunctionalBaseline["Functional Baseline"]
	
end

ProblemAgreement --> StatementOfWork
StatementOfWork --> ConceptOfOperations
ConceptOfOperations --> SystemLevel

```


## Catalogs

- [Metamodels Catalog](../engineering/catalogs/Metamodels%20Catalog.md)

## System Specification


### Specifications

- [Functional Baseline](../engineering/Functional%20Baseline.md)

### System Life-Cycle

[System Life-Cycle](../engineering/System%20Life-Cycle.md)



## Project Management

[Project Life-Cycle](../management/project%20management/Project%20Life-Cycle.md)


## Management

[Document Management](../management/document%20management/Document%20Management.md)
[Project Management Document](../management/project%20management/Project%20Management%20Document.md)
