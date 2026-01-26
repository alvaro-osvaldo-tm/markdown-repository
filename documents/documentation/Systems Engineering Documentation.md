# Systems Engineering Documentation

## System Context

![context-diagram](../engineering/images/contexts%20diagrams/context-diagram.svg)

## Main Documents Diagram

```mermaid


flowchart 

subgraph EnterpriseLevel["Enterprise Level"]
	EnterpriseArchitecure["Enterprise  Architecture"]
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
	DocumentManagement["Document Management"]
end

subgraph SystemLevel["System Level"]
direction TB
	
		subgraph SystemRequirementsSpecification["System Requirements Specification"]
				
		SystemBoundaryContext["System Boundary Context"]
		FunctionalBaseline["Functional Baseline"]		
		SystemLifeCycle["System Life-Cycle"]
	end

	

end


EnterpriseLevel --> BusinessLevel
StatementOfWork --> ManagementLevel

StatementOfWork --> SystemLevel

```

## Enterprise Level

- [Enterprise Documentation](Enterprise%20Documentation.md)
	- [Enterprise Metamodel](../enterprise/architecture/Enterprise%20Metamodel.md)
	- [Enterprise View](../enterprise/architecture/Enterprise%20View.md)

## Business Level

- [Statement of Work](../enterprise/agreements/Statement%20of%20Work.md)
	- [Concept of Operations](../engineering/Concept%20of%20Operations.md)

## System Level

- [System Requirements Specification](../engineering/specifications/System%20Requirements%20Specification.md):
	- [Functional Baseline](../engineering/Functional%20Baseline.md)
	- [System Life-Cycle](../engineering/System%20Life-Cycle.md)

## Level Management

- [Management Document](../management/Management%20Document.md)
	- [Document Management](../management/document%20management/Document%20Management.md)
	- [Project Management Document](../management/project%20management/Project%20Management%20Document.md)
		- [Project Life-Cycle](../management/project%20management/Project%20Life-Cycle.md)

## Catalogues

- [Metamodels Catalog](../engineering/catalogs/Metamodels%20Catalog.md)
