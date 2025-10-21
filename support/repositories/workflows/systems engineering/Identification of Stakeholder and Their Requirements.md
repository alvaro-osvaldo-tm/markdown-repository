# Identification of Stakeholder and Their Requirements


## Description

## Prerequisites

## Principles

- **Context diagram as big picture:** Always keep the [Context Diagram](../../../../documents/engineering/Context%20Diagram.md) updated during the stakeholder meetings, it serves to create a common ground for all stakeholders and enable better communication.
- **Concept Only:** This workflow is to determine the foundational concepts gathered from stakeholders and the expected outcome. No solutions, technical details should be discussed.

## Events

- **When a new concept for the system context emerges:** Improve the  [Context Diagram](../../../../documents/engineering/Context%20Diagram.md) and revise the the [Enterprise Metamodel](../../../../documents/enterprise/architecture/Enterprise%20Metamodel.md)
- **When a technical concept or feature need to be registered or preliminary explored during stakeholder interactions:** Avoid develop a technical solution in this workflow because the focus is to develop the system concept, however, If you need to register such a concept, use the  [Discovery Catalog](../../discovery/Discovery%20Catalog.md).

## Course of Actions

- <span class="iteraction">Until the stakeholder identification is acceptable</span>
	1. Meet the stakeholders, registry each one in the [Stakeholder Catalog](../../../../documents/enterprise/Stakeholder%20Catalog.md) identifying preliminary their vision, frustrations, principles , needs and concerns.
		- > [!note] It's also an opportunity the main operational scenarios.
		- > [!constraint] To avoid "floating" stakeholders, each one must be related to a problem. 
		- > [!constraint] If some technical item emerges during this workflow, it must be put in the stakeholder document in a section related to their operation or need to be further processed.
	2. Prioritise the identified needs (e.g., using MoSCoW).
	3. Finalize the Problem Statement and gain formal approval on the '[Problem Agreement](../../documents/enterprise/agreements/Problem%20Agreement.md)' document, establishing initial need traceability.
	4. Update the  [Context Diagram](../../../../documents/engineering/Context%20Diagram.md)and revise the the [Enterprise Metamodel](../../../../documents/enterprise/architecture/Enterprise%20Metamodel.md) to reflect the organisation administration structure,