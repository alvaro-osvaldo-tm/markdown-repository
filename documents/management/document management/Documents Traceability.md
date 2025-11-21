# Documents Traceability


## Description 

This document defines the repository's documents needs that satisfy , their purposes, related stakeholders and concerns.

## Promotional Documents

**Needs:**

- Promote and describe the project for the stakeholders
- Indicate basic instructions for stakeholders
- Serves as documentation stakeholder entrypoint


**Purpose:**

-  Indicate how to do to basic usage
-  Indicate how to do to basic build and installation
-  Links the main documents

**Stakeholders:**

- [Markdown Editor Linux User Persona](../../enterprise/stakeholders/Markdown%20Editor%20Linux%20User%20Persona/Markdown%20Editor%20Linux%20User%20Persona.md)	
- [Python Developer Persona](../../enterprise/stakeholders/Python%20Developer%20Persona.md)
- [Systems Engineer Persona](../../enterprise/stakeholders/Systems%20Engineer%20Persona.md)
- [Cybersecurity Analyst Persona](../../enterprise/stakeholders/Cybersecurity%20Analyst%20Persona.md)
- [Hostile Actor Persona](../../enterprise/stakeholders/Hostile%20Actor%20Persona.md)

**Documents:**

- [README](../../../README.md)
	- How to uses the framework in bash scripts and terminal
	- How the framework can be integrated into python applications
	- How the framework ensures minimal cybersecurity
	- How malware can be inject for distribution

## Entry point Documents

**Needs:**

- Serves as an entry point for each stakeholder in repository

**Purpose:**

**Stakeholders:**

- [Markdown Editor Linux User Persona](../../enterprise/stakeholders/Markdown%20Editor%20Linux%20User%20Persona/Markdown%20Editor%20Linux%20User%20Persona.md)
- [Cybersecurity Analyst Persona](../../enterprise/stakeholders/Cybersecurity%20Analyst%20Persona.md)
- [Python Developer Persona](../../enterprise/stakeholders/Python%20Developer%20Persona.md)
- [Enterprise Architect Persona](../../enterprise/stakeholders/Enterprise%20Architect%20Persona.md)
- [Project Manager Persona](../../enterprise/stakeholders/Project%20Manager%20Persona.md)
- [Systems Engineer Persona](../../enterprise/stakeholders/Systems%20Engineer%20Persona.md)

**Documents:**

- [End-User Documentation](../../documentation/End-User%20Documentation.md)
	- What are the main framework's use cases 
- [Cybersecurity Documentation](../../documentation/Cybersecurity%20Documentation.md)
	- What cybersecurity considerations was taken for the framework.
- [Developer Documentation](../../documentation/Developer%20Documentation.md)
	- How to develop new extensions for the framework
	- How to develop new features in the framework
	- How to test and commit in the the framework's repository
- [Architecture Documentation](../../documentation/Architecture%20Documentation.md)
	- What is the framework's internal architecture
- [Enterprise Documentation](../../documentation/Enterprise%20Documentation.md)
	- What outcomes the framework brings to the organisation
- [Systems Engineering Documentation](../../documentation/Systems%20Engineering%20Documentation.md)
	- What systems engineering practices the are being applied in the framework

## End-User Documents

**Needs:**

**Purpose:**

**Stakeholders:**



## Enterprise Documents

**Needs:**

- Describe the framework motivation to exists and problem to solve.

**Stakeholders:**

**Documents:**

## Engineering Documents

**Needs:**

- Specify how the system will be build and maintained during their life-cycle

**Purpose:**

- Define the system specification
- Define the system life-cycle concept
- Define the project life-cycle concept

**Stakeholders:**

- [Project Manager Persona](../../enterprise/stakeholders/Project%20Manager%20Persona.md)
- [Systems Engineer Persona](../../enterprise/stakeholders/Systems%20Engineer%20Persona.md)
- [Python Developer Persona](../../enterprise/stakeholders/Python%20Developer%20Persona.md)

**Documents:**

- [Functional Baseline](../../engineering/Functional%20Baseline.md)
	- What are the main capabilities and services the framework must implement
	- What are the main quality and characteristics framework must implement
	- What are the main operational concepts the framework must implement
	- What are the main requirements framework must implement
- [System Life-Cycle](../../engineering/System%20Life-Cycle.md)
	- What is the framework life-cycle
- [Concept of Operations](../../engineering/Concept%20of%20Operations.md)
	- **Viewpoint**
		- The desired user experience with the system under the expected environments and conditions
	- **Concerns**
- How the expected system meaning for the enterprise will be translated into operations.
- How the user or actors engage the system
	- What are the system entrypoints or triggers that the actors can use to start the system.
- How good the system must respond to the users
	- What are the operational goals and system characteristics to satisfy the system default operations.
- What the system need to do to satisfy the 'system vision', 'system purpose' and 'system goals':
	- What are the key operational scenarios that the system must satisfy
- What environments the system will operate
- What operational modes the system will support
- What are the operational constraints and limitations




## Governance Documents:

**Needs:**

- Define the base principles about how this project will archive their outcome.

**Purpose:**

- Define the main project artefact's principles

**Stakeholders:**


**Documents:**

- [Statement of Work](../../enterprise/agreements/Statement%20of%20Work.md)
	- **Stakeholders**
		- [Markdown Editor Linux User Persona](../../enterprise/stakeholders/Markdown%20Editor%20Linux%20User%20Persona/Markdown%20Editor%20Linux%20User%20Persona.md)
		- [Python Developer Persona](../../enterprise/stakeholders/Python%20Developer%20Persona.md)
	- **Viewpoint:**
		- Product contract and project governance
	- **Concerns:**
		- What meaning the product  will bring to the enterprise 
			- What outcome in the enterprise is expected from the framework
			- What outcome in operation is expected from the framework
		- What will be done
			- What is the product scope
			- What the product not need do
			- What is the product the acceptance criteria
		- How the product will be done
			- What Critical Milestones need be delivered
			- What approach will be used for their project life-cycle
		- Who are the responsible for the framework
			- Who is responsible for the change management
	- **Guidelines**
		- **Creating a System Statement**
- [Document Management](Document%20Management.md)
	- How the documents are governed
- [Documents Traceability](Documents%20Traceability.md)
	- How the documents are related to stakeholders.
- [Project Life-Cycle](../project%20management/Project%20Life-Cycle.md)
	- What is the project life-cycle
- [Problem Agreement](../../enterprise/agreements/Problem%20Agreement.md)
	- **Viewpoint:**
		- Agreement Need
		- Problem Context
	- **Concerns:**
		- **Governance**
			- Who agree about the problem definition
			- What was agreed as a problem to be solved.
		- [Problem Definition](../../enterprise/agreements/Problem%20Agreement.md#Problem%20Definition)
			- Why it's a problem
			- What are the problem boundaries
			- Who is affected
			- Why the solution is need
			- What consequences exists if the problem is not solved
			- What defense mechanisms are failing
		- [Symptoms and Consequences](../../enterprise/agreements/Problem%20Agreement.md#Symptoms%20and%20Consequences)
			- What are the triggers that activate the problem
			- What are the problem consequences.
			- What happens to the organisation when the problem occur.
			- What solutions was done before and failed
		- [Problem Diagnosis](../../enterprise/agreements/Problem%20Agreement.md#Problem%20Diagnosis)
			- What are the problem root-cause
		-  **Guidelines**
			- **Discovering problems:**
				- Look for the entities, what their purposes and why it's not accomplishing.

- [As-Is Diagram](../../engineering/As-Is%20Diagram.md)
	- **Viewpoint:**
		- Problem Context
	- **Concerns:**
		- What are the problem's context
