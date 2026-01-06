# Systems Engineering Documentation

## System Context

![context-diagram](../../support/repositories/images/context-diagram.svg)

## Main Documents Context

```mermaid


flowchart 
direction TB

subgraph EnterpirseLevel["Enterpirse Level"]
	EnterpriseMetamodel["Enterprise Metamodel"]
end

subgraph BusinessLevel["Business Level"]

	subgraph StatementOfWork["Statement of Work"]
		ProblemAgreement["Problem Agreement"]	
		ConceptOfOperations["Concept of Operations"]
	end
	
end

subgraph ManagementLevel["Management Level"]
	subgraph ProjectManagementDocument["Project Management Document"]
	   ProjectLifeCycle["Project Life-Cycle"]
	end
end

subgraph SystemLevel["System Level"]

SystemBoundaryContext["System Boundary Context"]
	

	subgraph SystemRequirementsSpecification["System Requirements Specification"]
	
		FunctionalBaseline["Functional Baseline"]		
		SystemLifeCycle["System Life-Cycle"]
	end
	

end

EnterpirseLevel --> BusinessLevel

StatementOfWork --> ManagementLevel
ConceptOfOperations --> SystemLevel

```

## Enterprise Level

- [Enterprise Metamodel](../enterprise/architecture/Enterprise%20Metamodel.md)

## Business Level

- [Statement of Work](../enterprise/agreements/Statement%20of%20Work.md)
- [Concept of Operations](../engineering/Concept%20of%20Operations.md)

## System Level

- [System Requirements Specification](../engineering/specifications/System%20Requirements%20Specification.md):
	- [Functional Baseline](../engineering/Functional%20Baseline.md)
	- [System Life-Cycle](../engineering/System%20Life-Cycle.md)

## Level Management

- [Document Management](../management/document%20management/Document%20Management.md)
- [Project Management Document](../management/project%20management/Project%20Management%20Document.md)
	- [Project Life-Cycle](../management/project%20management/Project%20Life-Cycle.md)

## Catalogs

- [Metamodels Catalog](../engineering/catalogs/Metamodels%20Catalog.md)
