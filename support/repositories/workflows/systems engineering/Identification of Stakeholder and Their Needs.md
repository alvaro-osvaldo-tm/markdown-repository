# Identification of Stakeholder and Their Needs


## Description

This workflow is destined to elicit stakeholders needs and agree about a common baseline line to satisfy these needs.

This a fundamental step for a requirements effort to get a big picture of who are the involved stakeholders and what they need to solve. Without it, is risk to not considere all related stakeholders or to start a systems development that will not meet the stakeholder needs and expectativas.

For then, this workflow have the purpose to:

- Identify all related stakeholder , both internal and external, including from users, management and hostiles.
- Understand what the stakeholders wants from the system from the business perspective.
- Agree a foundational baseline to delivery and support the system in their life-cycle.

The main work product to be generated is a preliminar version of the [Statement of Work](../../../../documents/enterprise/agreements/Statement%20of%20Work.md), that contains system scope and their related documents.

## Guidelines

### Reducing change overhead with documents

To make the 'Agile/Lean' practices more easily, this workflow is organised to divide the effort in the the 'business perspective' and the 'systems engineering' perspective. Each one have a main document that serves as hub for their related documents.

It serves to condense the discussions and limit the change effort in each perspective.

For the business perspective the main document is the [Statement of Work](../../../../documents/enterprise/agreements/Statement%20of%20Work.md) , and for the engineering perspective is the [System Requirements Specification](../../../../documents/engineering/specifications/System%20Requirements%20Specification.md).

So when changing any documents content, avoid to put any content in these main documents, because their serves as 'hub' and not as replication document.


## Prerequisites

The stakeholders need the motivation and a partial informal agreement to solve a problem or participate a requirements elicitation processes.

## Principles

- **Context diagram as big picture:** Always keep the [Context Diagram](../../../../documents/engineering/Context%20Diagram.md) updated during the stakeholder meetings, it serves to create a common ground for all stakeholders and enable better communication.
- **Concept Only:** This workflow is to determine the foundational concepts gathered from stakeholders and the expected outcome. No solutions, technical details should be discussed.

## Events

- **When a new concept for the system context emerges:** Improve the  [Context Diagram](../../../../documents/engineering/Context%20Diagram.md) and revise the the [Enterprise Metamodel](../../../../documents/enterprise/architecture/Enterprise%20Metamodel.md)
- **When a technical concept or feature need to be registered or preliminary explored during stakeholder interactions:** Avoid develop a technical solution in this workflow because the focus is to develop the system concept, however, If you need to register such concept, use the  [Discovery Catalog](../../discovery/Discovery%20Catalog.md).

## Course of Actions

1. <span class="iteraction">Until the stakeholder identification is acceptable</span>
	1. Meet the stakeholders, registry each one in the [Stakeholder Catalog](../../../../documents/enterprise/catalogs/Stakeholder%20Catalog.md) identifying preliminary their vision, frustrations, principles, needs and concerns.
		- > [!constraint] To avoid "floating" stakeholders, each one must be related to a problem or opportunity that need be explored. 
		- > [!note] It's also an opportunity to gather the some concepts for operational scenarios.
	2. Identify the roles that support the stakeholders or need to be created and registry into the [Roles Catalog](../../../../documents/enterprise/catalogs/Roles%20Catalog.md)
	3. Compile the stakeholders needs and registry in the [Needs Catalog](../../../../documents/enterprise/catalogs/Needs%20Catalog.md)

2. <span class="iteraction">Until the system meaning for the business is acceptable</span>
	- > [!constraint] The [Context Diagram](../../../../documents/engineering/Context%20Diagram.md) always should reflect the 'System Vision', any change in any of them will require an update another.
	- > [!constraint] The  [as-is-diagram](../../images/as-is-diagram.svg) always should reflect the '[Problem Agreement](../../../../documents/enterprise/agreements/Problem%20Agreement.md)' environment, any change in any of them will require an update another.
	1. Select some preliminary needs in the [Needs Catalog](../../../../documents/enterprise/catalogs/Needs%20Catalog.md) to be discussed in this iteration, starting to showing why it was selected.
		-  > [!constraint]  All discussion in this iteration will be about the selected needs, even it's not explicit defined in the activities.
	2. Elicit or refine the 'System Vision' and registry in the [Statement of Work](../../../../documents/enterprise/agreements/Statement%20of%20Work.md).
		1. > [!note] You can use the [Context Diagram](../../../../documents/engineering/Context%20Diagram.md) and the storytelling approach to create the vision.
		2. >[!note] The system vision development is an iterative work, do not expect a 'single-shot' approach to develop a mature vision.
		3. Update the [Context Diagram](../../../../documents/engineering/Context%20Diagram.md) to reflect these system vision.
	3. Agree with the stakeholders the problem to be solved in the [Problem Agreement](../../../../documents/enterprise/agreements/Problem%20Agreement.md).
		1. > [!note] You can use the stakeholder associated problem and their needs  defined in the [Stakeholder Catalog](../../../../documents/enterprise/catalogs/Stakeholder%20Catalog.md) to determine the problem to be solved.
		2. Update the [as-is-diagram](../../images/as-is-diagram.svg) diagram reflecting the current 'As-Is' situation described in the agreement.
	4. Identify internal and external constraints, and limitations, both for the project and the solution  that can affect the needs, and registry it in the [Statement of Work](../../../../documents/enterprise/agreements/Statement%20of%20Work.md)
		- >[!note] This will help to constraint the problem agreement
	5. Agree with the stakeholders the principles, the systems purpose and goals  the must be archive, the final timeline and other constraints, and registry in the [Statement of Work](../../../../documents/enterprise/agreements/Statement%20of%20Work.md)
	6. Identify the main [Operational Scenarios](../../../../documents/engineering/Operational%20Scenarios.md) that the system will be exposed and act.
	7. Use the [Enterprise Metamodel](../../../../documents/enterprise/architecture/Enterprise%20Metamodel.md) to design a preliminary [Business Model](../../../../documents/business/Business%20Model.md)  reflecting the system 'value stream', 'capabilities' and their interaction with the business. Or to show where the system fit in the enterprise achitecture.
	8. Update the [System Requirements Specification](../../../../documents/engineering/specifications/System%20Requirements%20Specification.md) attaching:
		1. The [Operational Scenarios](../../../../documents/engineering/Operational%20Scenarios.md)
	9. Define a preliminary [Project Life-Cycle](../../../../documents/management/project%20management/Project%20Life-Cycle.md) to discuss the system delivery to the business
	10. Update the [Statement of Work](../../../../documents/enterprise/agreements/Statement%20of%20Work.md) attaching:
		1. The [Context Diagram](../../../../documents/engineering/Context%20Diagram.md)
		2. The [Business Model](../../../../documents/business/Business%20Model.md)
		3. The [Problem Agreement](../../../../documents/enterprise/agreements/Problem%20Agreement.md)
		4. The [System Requirements Specification](../../../../documents/engineering/specifications/System%20Requirements%20Specification.md)
	11. Update the [Problem Agreement](../../../../documents/enterprise/agreements/Problem%20Agreement.md) attaching:
		1. The [as-is-diagram](../../images/as-is-diagram.svg)

3. <span class="iteraction">Until the system solution baseline is acceptable</span> 
	1.  Define a preliminary [System Life-Cycle](../../../../documents/engineering/System%20Life-Cycle.md) to discuss the foundational technical aspects for the system life. 
	2.  Develop the preliminary 'Services' and 'Use Cases', to be served by the system and registry in the  [Functional Baseline](../../../../documents/engineering/Functional%20Baseline.md). 
		1. - >[!constraint] Each 'Service' and 'Use Case' must satisfy the traceability rules defined by the [Enterprise Metamodel] (e.g., must be traced to a 'Capability'). 
	3.  Refine the  [Business Model](../../../../documents/business/Business%20Model.md) with Measure of Effectiveness (MoE) e Success Criteria for the Capabilities suportadas. 
	4.  Refine the [Functional Baseline](../../../../documents/engineering/Functional%20Baseline.md) with the 'Acceptance Criteria' and 'System Verification Methods' for the registered 'Services' and 'Use Cases'. 
	5.  Update the [System Requirements Specification](../../../../documents/engineering/specifications/System%20Requirements%20Specification.md) attaching: 
		1.  The [System Life-Cycle](../../../../documents/engineering/System%20Life-Cycle.md) 
		2. The [Functional Baseline](../../../../documents/engineering/Functional%20Baseline.md)

4. <span class="iteraction">Until a allocated baseline is acceptable</span>
	- If the stakeholder need to explicit define a non-functional parameters for the system
		- Develop a preliminary quality model for the system with the elements of  interests to stakeholders and registry in the [Allocated Baseline](../../../../documents/engineering/Allocated%20Baseline.md).
		- Develop the preliminary 'system performance' and 'characteristics' to be served by the system and registry in the  [Allocated Baseline](../../../../documents/engineering/Allocated%20Baseline.md)
	- Update the [System Requirements Specification](../../../../documents/engineering/specifications/System%20Requirements%20Specification.md) attaching:
		- The [Allocated Baseline](../../../../documents/engineering/Allocated%20Baseline.md) even if is empty.

5. <span class="iteraction">Until the review is acceptable</span>
	1. Review the [Context Diagram](../../../../documents/engineering/Context%20Diagram.md), the [Enterprise Metamodel](../../../../documents/enterprise/architecture/Enterprise%20Metamodel.md), the [Business Model](../../../../documents/business/Business%20Model.md) to reflect the current discussions.
	2. Review the [Statement of Work](../../../../documents/enterprise/agreements/Statement%20of%20Work.md)
	3. Review the [System Requirements Specification](../../../../documents/engineering/specifications/System%20Requirements%20Specification.md)
