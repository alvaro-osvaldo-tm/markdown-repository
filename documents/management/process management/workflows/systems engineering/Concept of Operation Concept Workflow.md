[Back](Identification%20of%20Stakeholder%20and%20Their%20Needs%20Workflow.md)

# Concept of Operation Concept Workflow

## Description

This workflow is to elicit from the user perspective how the system will be operated in the related environment to satisfy the stakeholders needs.

The [Concept of Operations](../../../../engineering/Concept%20of%20Operations.md) must be based in the [Problem Partitions](../../../../enterprise/agreements/Problem%20Agreement.md#Problem%20Partitions) structure, clarifying how each problem partition is expected to be solved from the user and business perspective.

Due the possibility that the 'Problem Partitions'  will require on [Concept of Operations](../../../../engineering/Concept%20of%20Operations.md) for each one partition , many 'Concept of Operations' can exists.

To make more easily to find these documents, each new [Concept of Operations](../../../../engineering/Concept%20of%20Operations.md) document must be attached in the [System Requirements Specification](../../../../engineering/specifications/System%20Requirements%20Specification.md).

Also as is expected that all these documents share some information, as the 'Systems States' , the information consolidation must be available in the [Requirements Analysis](Requirements%20Analysis.md) document too.


For then, this workflow have the purpose to:

- Identify the users
- Describe the system from the user perspective and their states.
- Describe the environment where the system will operate from the user perspective.
- Elicit the goal that the user want operating the system.
- Elicit the operational capability that the system will deliver that interest the user.
- Describe the user operation and their required information to meet the goal
- Elicit the required operational characteristics and quality to attend the user operational needs and goals.
- Elicit the validations that prove the user's operational success

The main work product to be generate is:

- A  [Concept of Operations](../../../../engineering/Concept%20of%20Operations.md) document attached in the [System Requirements Specification](../../../../engineering/specifications/System%20Requirements%20Specification.md).

## Prerequisites

The [Statement of Work](../../../../enterprise/agreements/Statement%20of%20Work.md) is mature and baseline.
The [Problem Agreement](../../../../enterprise/agreements/Problem%20Agreement.md) is mature and baseline with [Problem Partitions](../../../../enterprise/agreements/Problem%20Agreement.md#Problem%20Partitions).

## Principles

- **The User Journey:** Focus in the user journey from a problem, to the operate the system to solve the problem and ends with the validation that prove the solution was correct, not the functionalities.

## Events

## Course of Actions

- > [!iteration] Until the [Concept of Operations](../../../../engineering/Concept%20of%20Operations.md)'is acceptable
	1. **Prepare:**
		1. Agree with stakeholders and users the operational bounded context the [Concept of Operations](../../../../engineering/Concept%20of%20Operations.md) , and the 'Problem Partition' to be prioritised it for the whole workflow iteration.
		2. Based in the [Problem Agreement](../../../../enterprise/agreements/Problem%20Agreement.md), identify the [Stakeholders , Users and Actors](../../../../engineering/Concept%20of%20Operations.md#Stakeholders%20,%20Users%20and%20Actors) related to the Concept of Operations.
	2. **Describe the System:**
		1.  Reference the [System Purpose and Scope](../../../../engineering/Concept%20of%20Operations.md#System%20Purpose%20and%20Scope) to the [Statement of Work](../../../../enterprise/agreements/Statement%20of%20Work.md) that will conform the current [Concept of Operations](../../../../engineering/Concept%20of%20Operations.md)
		2. Reference the [System Boundary Context](../../../../engineering/System%20Boundary%20Context.md) in the [Operational Context](../../../../engineering/Concept%20of%20Operations.md#Operational%20Context) describing the other systems that the system in discussion will interact or be affected.
	3. **Elicit the Environment:**
		> [!note] The affected entities metamodel is critical to ensure the operation is understand on what is operating.
		1. Elicit the [Operational Environment](../../../../engineering/Concept%20of%20Operations.md#Operational%20Environment) more specifically than the [System Boundary Context](../../../../engineering/System%20Boundary%20Context.md) describing where the system will operate and the entities metamodel of the system will operate.
	4. **Elicit the user's operational goals and their validation:**
		- >[!constraint] The goals must be organised according the 'Problem Partitions'.
		1. Elicit the [Operational Goals](../../../../engineering/Concept%20of%20Operations.md#Operational%20Goals) that the [Stakeholders , Users and Actors](../../../../engineering/Concept%20of%20Operations.md#Stakeholders%20,%20Users%20and%20Actors) want to archive that is from business interests.
		2. Elicit the [Validation](../../../../engineering/Concept%20of%20Operations.md#Validation) that will determine the goal's performance, effectiveness and acceptances criteria.
	5. > [!loop] *For each goal in the [Operational Goals](../../../../engineering/Concept%20of%20Operations.md#Operational%20Goals), do:*
		1. **Refine the system description:**
			1. Elicit the [Operational States](../../../../engineering/Concept%20of%20Operations.md#Operational%20States) that the system will act.
		2. **Elicit how the system will archive the discussed goal:**
			1. Elicit the [Operational Capabilities](../../../../engineering/Concept%20of%20Operations.md#Operational%20Capabilities) that permits the goals be satisfied
			2. Elicit the [Operational Scenario](../../../../engineering/Concept%20of%20Operations.md#Operational%20Scenario) that enables the [Operational Capabilities](../../../../engineering/Concept%20of%20Operations.md#Operational%20Capabilities)related to the goal.
			3. Elicit the [Operational Characteristics and Qualities](../../../../engineering/Concept%20of%20Operations.md#Operational%20Characteristics%20and%20Qualities) that satisfy the user goal expectation.
		3.  **Limit the Goal space solution:**
			1. Elicit the the [Constraints](../../../../engineering/Concept%20of%20Operations.md#Constraints) for the selected goal.
			2. Elicit the the  [Limitations](../../../../engineering/Concept%20of%20Operations.md#Limitations)for the selected goal.
	6.  **Update the [System Requirements Specification](../../../../engineering/specifications/System%20Requirements%20Specification.md):**
			1. Attach the [Concept of Operations](../../../../engineering/Concept%20of%20Operations.md) in the [System Requirements Specification](../../../../engineering/specifications/System%20Requirements%20Specification.md).
