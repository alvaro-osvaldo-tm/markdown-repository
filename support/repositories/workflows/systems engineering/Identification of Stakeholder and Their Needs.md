# Identification of Stakeholder and Their Needs

## Description

This workflow is destined to elicit stakeholders needs and agree about a common baseline to satisfy these needs.

This a fundamental effort to get a big picture of who are the involved and what they need to solve. Without it, is risk to not consider all related stakeholders or to start a systems development that will not meet the stakeholder needs and expectations.

For then, this workflow have the purpose to:

- Identify all related stakeholder , both internal and external, including from users, management and hostiles.
- Understand what the stakeholders wants from the system from the business perspective.
- Agree a foundational baseline to delivery and support the system in their life-cycle.

The main work products to be generated are:

- The formal [Problem Agreement](../../../../documents/enterprise/agreements/Problem%20Agreement.md)
- A preliminary version of the [Statement of Work](../../../../documents/enterprise/agreements/Statement%20of%20Work.md), that contains system scope
- A preliminary version of the [Concept of Operations](../../../../documents/engineering/Concept%20of%20Operations.md), that contains the expected operation to solve needs.

## Guidelines

- [Using documents to reduce change overhead](../../Artefacts/Markdown%20Repository/Technical%20References/guidelines/Using%20documents%20to%20%20reduce%20change%20overhead.md)

## Prerequisites

The stakeholders need the motivation and a partial informal agreement to solve a problem or participate a requirements elicitation processes.

## Principles

- **Context diagram as big picture:** Always keep the [Context Diagram](../../../../documents/engineering/Context%20Diagram.md) updated during the stakeholder meetings, it serves to create a common ground for all stakeholders and enable better communication.
- **Concept Only:** This workflow is to determine the foundational concepts gathered from stakeholders and the expected outcome. No solutions or technical details should be discussed.

## Events

- **When a new concept for the system context emerges:** Improve the [Context Diagram](../../../../documents/engineering/Context%20Diagram.md) and revise the the [Enterprise Metamodel](../../../../documents/enterprise/architecture/Enterprise%20Metamodel.md)
- **When a technical concept or feature need to be registered or preliminary explored during stakeholder interactions:** Avoid develop a technical solution in this workflow because the focus is to develop the system concept, however, If you need to register such concept, use the [Discovery Catalog](../../discovery/Discovery%20Catalog.md).

## Course of Actions

1. **Identify the related stakeholders and their needs:**
   1. Execute the [Needs Catalogue Creation Workflow](Needs%20Catalogue%20Creation%20Workflow.md)
2. **Agree with stakeholders the problem that prevents the needs to be solved:**
   1. Execute the [Problem Agreement Workflow](Problem%20Agreement%20Workflow.md).
3. **Agree with the stakeholders the business perspective of their needs:**
   1. Execute the [System Statement Concept Workflow](System%20Statement%20Concept%20Workflow.md)
4. **Agree with the stakeholders the foundational operations to solve their needs:**
   1. Execute the '[Concept of Operation Concept Workflow](Concept%20of%20Operation%20Concept%20Workflow.md)
5. **Agree with stakeholder how the solution will be delivered:**
   1. Execute the [Solution Deliverable Concept Workflow](Solution%20Deliverable%20Concept%20Workflow.md)
6. **Review:**
   1. Execute the [Set Baseline Activity](#Set%20Baseline%20Activity)
   2. <span class="iteraction">Until the review is acceptable</span>
      1. Review the [Context Diagram](../../../../documents/engineering/Context%20Diagram.md), the [Enterprise Metamodel](../../../../documents/enterprise/architecture/Enterprise%20Metamodel.md), the [Business Model](../../../../documents/business/Business%20Model.md) to reflect the current discussions.
      2. Review the [Statement of Work](../../../../documents/enterprise/agreements/Statement%20of%20Work.md)
      3. Execute the [Set Baseline Activity](#Set%20Baseline%20Activity)

## Support Activities

The support activities is to be called from the the [Course of Actions](#Course%20of%20Actions).

### Set Baseline Activity

1. Define as baselines the catalogues:
   1. [Needs Catalog](../../../../documents/enterprise/catalogs/Needs%20Catalog.md)
2. Define as baselines the diagrams:
   1. [Context Diagram](../../../../documents/engineering/Context%20Diagram.md)
   2. [As-Is Diagram](../../../../documents/engineering/As-Is%20Diagram.md)
3. Define as baselines the documents:
   1. [Problem Agreement](../../../../documents/enterprise/agreements/Problem%20Agreement.md)
   2. [Statement of Work](../../../../documents/enterprise/agreements/Statement%20of%20Work.md)
   3. [Concept of Operations](../../../../documents/engineering/Concept%20of%20Operations.md).

---

9. <span class="iteraction">Until the system solution baseline is acceptable</span>
   1. Define a preliminary [System Life-Cycle](../../../../documents/engineering/System%20Life-Cycle.md) to discuss the foundational technical aspects for the system life.
   2. Develop the preliminary 'Services' and 'Use Cases', to be served by the system and registry in the  [Functional Baseline](../../../../documents/engineering/Functional%20Baseline.md).
      1. - > [!constraint] Each 'Service' and 'Use Case' must satisfy the traceability rules defined by the [Enterprise Metamodel] (e.g., must be traced to a 'Capability').
   3. Refine the  [Business Model](../../../../documents/business/Business%20Model.md) with Measure of Effectiveness (MoE) e Success Criteria for the Capabilities suportadas.
   4. Refine the [Functional Baseline](../../../../documents/engineering/Functional%20Baseline.md) with the 'Acceptance Criteria' and 'System Verification Methods' for the registered 'Services' and 'Use Cases'.
   5. Update the [System Requirements Specification](../../../../documents/engineering/specifications/System%20Requirements%20Specification.md) attaching:
      1. The [System Life-Cycle](../../../../documents/engineering/System%20Life-Cycle.md)
      2. The [Functional Baseline](../../../../documents/engineering/Functional%20Baseline.md)

10. <span class="iteraction">Until a allocated baseline is acceptable</span>
    - If the stakeholder need to explicit define a non-functional parameters for the system
      - Develop a preliminary quality model for the system with the elements of interests to stakeholders and registry in the [Allocated Baseline](../../../../documents/engineering/Allocated%20Baseline.md).
      - Develop the preliminary 'system performance' and 'characteristics' to be served by the system and registry in the [Allocated Baseline](../../../../documents/engineering/Allocated%20Baseline.md)
    - Update the [System Requirements Specification](../../../../documents/engineering/specifications/System%20Requirements%20Specification.md) attaching:
      - The [Allocated Baseline](../../../../documents/engineering/Allocated%20Baseline.md) even if is empty.

11. Review the [System Requirements Specification](../../../../documents/engineering/specifications/System%20Requirements%20Specification.md)
