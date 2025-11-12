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

2. <span class="iteraction">Until the problem meaning for the business is acceptable</span>
	- > [!constraint] The [Context Diagram](../../../../documents/engineering/Context%20Diagram.md) always should reflect the 'System Vision' section, a change in any the diagram or in the section will require an update in the another.
	- > [!constraint] The  [As-Is Diagram](../../../../documents/engineering/As-Is%20Diagram.md) always should reflect the '[Problem Agreement](../../../../documents/enterprise/agreements/Problem%20Agreement.md)' environment, any change in diagram or in the environment description will require an update in the another.
	-  > [!constraint]  All discussion in this iteration will be about the selected needs, even it's not explicit defined in the activities.
	1. Select some preliminary needs in the [Needs Catalog](../../../../documents/enterprise/catalogs/Needs%20Catalog.md) to be discussed in this iteration.
		- > [!note] Always explains why these needs was selected
	2. Agree with the stakeholders the problem to be solved and their impact in the organisation in the [Problem Agreement](../../../../documents/enterprise/agreements/Problem%20Agreement.md) 
		1. > [!constraint] The described problem must be related to the Stakeholder needs, update these needs if the problem clarify these needs.
		2. > [!note]  The [As-Is Diagram](../../../../documents/engineering/As-Is%20Diagram.md) and the agreed 'Problem Statement' ara both important to create a shared mental model among the participants.
		3. After elicited the problem, ensure a common understanding agreeing with the stakeholders a single and small 'Problem Statement'.
		4. Update the [As-Is Diagram](../../../../documents/engineering/As-Is%20Diagram.md) reflecting the current 'As-Is' situation described in the agreement.
		   
3. <span class="iteraction">Until the 'System Statement' is acceptable</span>
	- > [!note] If become hard to develop the 'System Statement', develops preliminary the system vision to create context for the mission discussion and if need back the [Problem Agreement](../../../../documents/enterprise/agreements/Problem%20Agreement.md) or the 'stakeholder needs'.
	1. Based in the [Problem Agreement](../../../../documents/enterprise/agreements/Problem%20Agreement.md), define the 'System Mission'.
	2. Elicit or refine the 'System Vision' and registry in the [Statement of Work](../../../../documents/enterprise/agreements/Statement%20of%20Work.md).
		1. > [!note] You can use the [Context Diagram](../../../../documents/engineering/Context%20Diagram.md) and the storytelling approach to create the vision.
		2. >[!note] The system vision development is an iterative work, do not expect a 'single-shot' approach to develop a mature vision.
		3. >[!constraint] The 'System Vision' must follow the 'System Mission' structure.
		4. Update the [Context Diagram](../../../../documents/engineering/Context%20Diagram.md) to reflect the system vision.
	3. Extract or refine the 'System Purpose' based in the 'System Vision'
	4. Extract or refine the 'System Goals' based in the 'System Purpose'
	5. If necessary refine both the [Context Diagram](../../../../documents/engineering/Context%20Diagram.md) and the [As-Is Diagram](../../../../documents/engineering/As-Is%20Diagram.md)
	6. Identify internal and external constraints, and limitations, both for the project and the solution  that can affect the needs, and registry it in the [Statement of Work](../../../../documents/enterprise/agreements/Statement%20of%20Work.md)
		- >[!note] This will help to constraint the problem agreement
	7. Refine the 'System Statement' in the [Statement of Work](../../../../documents/enterprise/agreements/Statement%20of%20Work.md) :
		1. >[!constraint]:  The 'System Vision' must describe an high view of the interactions with the users, the environment, operations and limitations.
		2.  > [!constraint] The 'System Mission' must describe the fundamental, enduring purpose of the system, focusing on its core strategic contribution and reason for existence.
		3.  > [!constraint] The 'System Purpose' must describe an high view course of action to satisfy the 'System Mission'.
		4.  > [!constraint] The 'System Goals' must describe an high view steps to satisfy the 'System Purpose'
		5.  > [!constraint] The 'System Vision' must be directly traceable to and clearly demonstrate how the system will fulfill the 'System Mission'.
		6.  > [!constraint] The 'System Vision' must be structured to encompass the course of action defined by the 'System Purpose' and the key achievements outlined in the 'System Goals'.

4. <span class="iteraction">Until the work definitions are acceptable </span>
	1. In the [Statement of Work](../../../../documents/enterprise/agreements/Statement%20of%20Work.md) agree with the stakeholders:
		1. The project [Principles](../../../../documents/enterprise/agreements/Statement%20of%20Work.md#Principles)
		2. The project Expected Outcome and Return of Investments
		3. The preliminary Project Goals
		4. The Project Constraints, Limitations, Assumptions and Uncertainties.
		5. A preliminary '[Project Deliverables and Acceptance](../../../../documents/enterprise/agreements/Statement%20of%20Work.md#Project%20Deliverables%20and%20Acceptance)' information with 'Major Deliverables'.
	2. If necessary back the iteration to refine or update the 'System Statement' to reflect the updates made.
	3. Update the [Statement of Work](../../../../documents/enterprise/agreements/Statement%20of%20Work.md) attaching:
		1. The [Context Diagram](../../../../documents/engineering/Context%20Diagram.md)
		2. The [Problem Agreement](../../../../documents/enterprise/agreements/Problem%20Agreement.md)

5. <span class="iteration">Until the 'Concept of Operations' is acceptable</span>
	1. Identify the main [Concept of Operations](../../../../documents/engineering/Concept%20of%20Operations.md) that the system will be exposed and act and the 'Project Acceptance Criteria' to be registered in the [Statement of Work](../../../../documents/enterprise/agreements/Statement%20of%20Work.md)
	2. Use the [Enterprise Metamodel](../../../../documents/enterprise/architecture/Enterprise%20Metamodel.md) to design a preliminary [Business Model](../../../../documents/business/Business%20Model.md)  reflecting the system 'value stream', 'capabilities' and their interaction with the business. Or to show where the system fit in the enterprise achitecture.
	3. Update the [System Requirements Specification](../../../../documents/engineering/specifications/System%20Requirements%20Specification.md) attaching:
		1. The [Concept of Operations](../../../../documents/engineering/Concept%20of%20Operations.md)
	4. Define a preliminary [Project Life-Cycle](../../../../documents/management/project%20management/Project%20Life-Cycle.md) to discuss the system delivery to the business
		1. Update the [Problem Agreement](../../../../documents/enterprise/agreements/Problem%20Agreement.md) attaching:
			1. The [As-Is Diagram](../../../../documents/engineering/As-Is%20Diagram.md).
		2. Define both [Statement of Work](../../../../documents/enterprise/agreements/Statement%20of%20Work.md) and [Problem Agreement](../../../../documents/enterprise/agreements/Problem%20Agreement.md) as baselines.

6. <span class="iteraction">Until the system solution baseline is acceptable</span> 
	1.  Define a preliminary [System Life-Cycle](../../../../documents/engineering/System%20Life-Cycle.md) to discuss the foundational technical aspects for the system life. 
	2.  Develop the preliminary 'Services' and 'Use Cases', to be served by the system and registry in the  [Functional Baseline](../../../../documents/engineering/Functional%20Baseline.md). 
		1. - >[!constraint] Each 'Service' and 'Use Case' must satisfy the traceability rules defined by the [Enterprise Metamodel] (e.g., must be traced to a 'Capability'). 
	3.  Refine the  [Business Model](../../../../documents/business/Business%20Model.md) with Measure of Effectiveness (MoE) e Success Criteria for the Capabilities suportadas. 
	4.  Refine the [Functional Baseline](../../../../documents/engineering/Functional%20Baseline.md) with the 'Acceptance Criteria' and 'System Verification Methods' for the registered 'Services' and 'Use Cases'. 
	5.  Update the [System Requirements Specification](../../../../documents/engineering/specifications/System%20Requirements%20Specification.md) attaching: 
		1.  The [System Life-Cycle](../../../../documents/engineering/System%20Life-Cycle.md) 
		2. The [Functional Baseline](../../../../documents/engineering/Functional%20Baseline.md)

7. <span class="iteraction">Until a allocated baseline is acceptable</span>
	- If the stakeholder need to explicit define a non-functional parameters for the system
		- Develop a preliminary quality model for the system with the elements of  interests to stakeholders and registry in the [Allocated Baseline](../../../../documents/engineering/Allocated%20Baseline.md).
		- Develop the preliminary 'system performance' and 'characteristics' to be served by the system and registry in the  [Allocated Baseline](../../../../documents/engineering/Allocated%20Baseline.md)
	- Update the [System Requirements Specification](../../../../documents/engineering/specifications/System%20Requirements%20Specification.md) attaching:
		- The [Allocated Baseline](../../../../documents/engineering/Allocated%20Baseline.md) even if is empty.

8. <span class="iteraction">Until the review is acceptable</span>
	1. Review the [Context Diagram](../../../../documents/engineering/Context%20Diagram.md), the [Enterprise Metamodel](../../../../documents/enterprise/architecture/Enterprise%20Metamodel.md), the [Business Model](../../../../documents/business/Business%20Model.md) to reflect the current discussions.
	2. Review the [Statement of Work](../../../../documents/enterprise/agreements/Statement%20of%20Work.md)
	3. Review the [System Requirements Specification](../../../../documents/engineering/specifications/System%20Requirements%20Specification.md)
