# Identification of Stakeholder and Their Needs


## Description

This workflow is destined to elicitate stakeholders needs and agree about a common baseline line to satisfy these needs.

This a fundamental step for a requirements effort to get a big picture of who are the involved stakeholders and what they need to solve. Without it, is risk to not considere all related stakeholders or to start a systems development that will not meet the stakeholder needs and expectativas.

For then, this workflow have the purpose to:

- Identify all related stakeholder , both internal and external, including from users, management and hostiles.
- Understand what the stakeholders wants from the system from the business perspective.
- Agree a foundational baseline to delivery and support the system in their life-cycle.

The main work product to be generated is a preliminar version of the [Statement of Work](../../../../documents/enterprise/agreements/Statement%20of%20Work.md), that contains system scope and their related documents.

## Guidelines

## Prerequisites

The stakeholders need the motivation and a partial informal agreement to solve a problem or participate a requirements elicitation processes.

## Principles

- **Context diagram as big picture:** Always keep the [Context Diagram](../../../../documents/engineering/Context%20Diagram.md) updated during the stakeholder meetings, it serves to create a common ground for all stakeholders and enable better communication.
- **Concept Only:** This workflow is to determine the foundational concepts gathered from stakeholders and the expected outcome. No solutions, technical details should be discussed.

## Events

- **When a new concept for the system context emerges:** Improve the  [Context Diagram](../../../../documents/engineering/Context%20Diagram.md) and revise the the [Enterprise Metamodel](../../../../documents/enterprise/architecture/Enterprise%20Metamodel.md)
- **When a technical concept or feature need to be registered or preliminary explored during stakeholder interactions:** Avoid develop a technical solution in this workflow because the focus is to develop the system concept, however, If you need to register such a concept, use the  [Discovery Catalog](../../discovery/Discovery%20Catalog.md).

## Course of Actions

- <span class="iteraction">Until the stakeholder identification is acceptable</span>
	1. Meet the stakeholders, registry each one in the [Stakeholder Catalog](../../../../documents/enterprise/catalogs/Stakeholder%20Catalog.md) identifying preliminary their vision, frustrations, principles, needs and concerns.
		- > [!note] It's also an opportunity to gather the some concepts for operational scenarios.
		- > [!constraint] To avoid "floating" stakeholders, each one must be related to a problem. 
	2. Identify the roles that support the stakeholders or need to be created and registry into the [Roles Catalog](../../../../documents/enterprise/catalogs/Roles%20Catalog.md)
	3. Compile the stakeholders needs and registry in the [Needs Catalog](../../../../documents/enterprise/catalogs/Needs%20Catalog.md)

- <span class="iteraction">Until the system meaning for the business is acceptable</span>
	1. Select some preliminary needs in the [Needs Catalog](../../../../documents/enterprise/catalogs/Needs%20Catalog.md) to be discussed in this iteration.
		1. >[!constraint] All discussion in this iteration will be about the selected needs, event it's explicit defined in the activities.
	2. Identify the main project, enterprise, and external constraints and limitations, both project and that can affect the needs, and registry it in the [Statement of Work](../../../../documents/enterprise/agreements/Statement%20of%20Work.md)
		1. >[!note] This will help to constraint the problem agreement
	3. Agree with the stakeholders the problem to be solved in the [Problem Agreement](../../../../documents/enterprise/agreements/Problem%20Agreement.md).
	4. Agree with the stakeholders the principles, the systems purpose and goals  the must be archive, the final timeline and other constraints, and registry in the [Statement of Work](../../../../documents/enterprise/agreements/Statement%20of%20Work.md)
	5. Identify the main [Operational Scenarios](../../../../documents/engineering/Operational%20Scenarios.md) that the system will be exposed and act.
	6. Agree with the stakeholders the main measure of effectiveness for the system and registry preliminary in the [Functional Baseline](../../../../documents/engineering/Functional%20Baseline.md).
	7. Update the [Statement of Work](../../../../documents/enterprise/agreements/Statement%20of%20Work.md) attaching:
		1. The [Problem Agreement](../../../../documents/enterprise/agreements/Problem%20Agreement.md)
		2. The [Operational Scenarios](../../../../documents/engineering/Operational%20Scenarios.md)
		3. The [Functional Baseline](../../../../documents/engineering/Functional%20Baseline.md)

- <span class="iteraction">Until the system baseline is acceptable</span>
	1. Define a preliminary [Project Life-Cycle](../../../../documents/management/project%20management/Project%20Life-Cycle.md)
	2. Define a preliminary [System Life-Cycle](../../../../documents/engineering/System%20Life-Cycle.md)
	3. Develop the preliminary capability and services, and system performance and characteristics, to be served by the system and registry in the  [Functional Baseline](../../../../documents/engineering/Functional%20Baseline.md).
	4. Refine the [Functional Baseline](../../../../documents/engineering/Functional%20Baseline.md) with the measure of effectiveness for the registered capabilities and services and agree with stakeholders
	5. Update the [Context Diagram](../../../../documents/engineering/Context%20Diagram.md) and revise the the [Enterprise Metamodel](../../../../documents/enterprise/architecture/Enterprise%20Metamodel.md) to reflect the organisation administration structure, and the last updates.
	6. Update the [Statement of Work](../../../../documents/enterprise/agreements/Statement%20of%20Work.md) attaching:
		1. The [Context Diagram](../../../../documents/engineering/Context%20Diagram.md)
		2. The [Problem Agreement](../../../../documents/enterprise/agreements/Problem%20Agreement.md)
		3. The [Functional Baseline](../../../../documents/engineering/Functional%20Baseline.md)
		4. Both [System Life-Cycle](../../../../documents/engineering/System%20Life-Cycle.md)
		5. The [Project Life-Cycle](../../../../documents/management/project%20management/Project%20Life-Cycle.md)


