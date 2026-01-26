# Statement of Work

## Context Diagram

![context-diagram](../../engineering/images/contexts%20diagrams/context-diagram.svg)

## System Statement

### Problem Definition

<!--
automation:
This section should be auto-generated based in the 'Problem Agreement' document.
-->

The problem is that the amount of required resources to apply changes in documents is not affordable for the organisation.

Was observed that:

- For every changes or transfer, someone need to manually  find the related documents and information systems to apply these changes, aborting the processes if more changes come before finished the previous.

As consequence:

- The information in documents and systems loose their integrity or are left obsolete  and mistes are made in the manual changes, resulting in need more changes need.

The root cause discovered is that for each major change in the documents require more resources than is available in organisation to  complete safety due the increasing required manual work for each change.

A more detailed explanations exists in the document [Problem Agreement](Problem%20Agreement.md).

### System Vision

The user are satisfied, both readers and editors, because readers can get updated documentation and editors can use their specialised tools to write the documentation.

The system acts as and intermediate layer between document systems and the users, applying governance rule transparently at each document change or when an specific event trigger the governance application.

Also, thanks their capabilities to act as a platform for document-based information integration and document generation, both business and technical team work seamless, the [Document Manager Persona](../stakeholders/Document%20Manager%20Persona.md) integrated workflows in the organisation pipelines that capture information from the documents. These captured information automatically updates systems and other documents.

The opposite also occurs when business rules change in external systems or sources; in this case, the pipelines activate the system that ensures the documents reflect these changes.

Documents then become a source of truth where accurate information is made available to the entire organization, as well as serving as an interface for uploading and publishing information.

Therefore, all markdown documents are now managed in many systems , each system contribute with their functional advantages. Some systems have no Markdown support, and no system contains the governance tools to keep all documents normalised by their own.

But there is no problem, the framework can connect to each one , apply the same governance rules and even transfer documents from one system to another.

The document integrity is guarantee to be preserved where a document is moved from one system to another, or when is moved from a directory to another. Because the framework update and transfer the document's links and  attachments.

We use the framework's abstraction called 'Repository' to handle the different systems as all be the same, so no matter in what system the document is stored or if have full Markdown features support, we all talk to manage a  'Repository' abstraction.

This allow the same governance rules to be applied to all systems, ensuring conformance across all systems.

Terminal users can interact with the framework with a cli terminal application , that is deployed as standard with the framework to realize some queries or apply some standard governance policies as the 'Dublin Core' metadata usage that  is deployed with the framework.

Applications can be made using the framework, enabling more tools for the users to handle the repositories.

Onde of these applications allow to use the documents  as 'source-of-truth' for both business and technical personal. As the framework can extract and update content from documents.

This allowed to create applications that extract content from the repositories, the save the result in JSON to be used for other applications.

Other applications keep the documents always updated, gathering data from external sources and updating the document's content and tables.

 As the framework can be extended as needed,  Python Programmers can code internal organisation document's policies in extensions, and deploy to be available the framework is activated by an external document governance pipeline.

The 'governance pipeline' is an external system, that activate the framework when needed to ensure each documentation baseline conform the governance, significantly reducing manual governance effort through a continuous, automated compliance pipeline.

And when the organisation policy changes, there is no problem, the Python Programmer releases a new update for the extension and the governance pipeline can update the documents again.

### System Mission

The system have the following the general mission:

1. Continue to apply the document's governance and keep both business and technical documents relevant for their audience, with an automated product that uses near-zero human labor.
2. Promote the initiative in the community with the product published as open-source in 'Pypi' and 'GitHub'.

Based in the their [Problem Partitions](Problem%20Agreement.md#Problem%20Partitions), the system have the following specific missions:

- **Governance Implementation:**
	1. Support the document's governance implementation life-cycle for the supported documents for the supported storage platform.
- **Information Integrity:**
	1. Provides the capabilities to process that ensure that information in document's and information system are both equivalent.
- **Links Integrity:**
	1. Guard the document's links integrity , supervising attachments transfer and documents location moving, blocking actions that corrupt the document's state.

### System Purpose and Goals

In order to satisfy the system mission outcome, the system have the following purpose as described below.

1. Acts as intermediate layer between the documents systems and the users to transparently apply governance rules and extract document information
	1. Transform non-normalised documents into normalised documents

2. Acts as a platform for document-based information integration and document generation.
	1. Convert unstructured content from documents into semi or structured content.
	2. Execute document transformation operations.

## Scope

### Stakeholders

### Principles

- [Lean Project Management](https://en.wikipedia.org/wiki/Lean_project_management)

### Constraints

- **Niche market:** The framework is not intended to satisfy a widely document management market , but it's to focus in Python platform and Markdown document processing users.
- **Do not compete with mature tools:** The product purpose is not to replace mature libraries and framework, but to increase their capabilities when these alternatives lacks. For then, incorporating or interoperate with these alternatives is allowed, but no functional replacement.

### Limitations

- **The project must be published as an open-source product the [GPL 3](https://www.gnu.org/licenses/gpl-3.0.en.html):** This ensure that derived works will follows the same license , make more easily for the community to get the source product.
- **The project must be made in Python Programming Language:** To offer the framework for the Python Programming language market.
- **The product can contains document formatting capabilities only if is uses an external library:** The product purpose is not to replace mature tools as NodeJS runtime document formatting tools, but can use external (including from different runtime) libraries to provide these capabilities.
- **The product should not contain schedule capabilities:** The product could be integrated into schedule or workflow  framework (as Luigi), but must not contains these capabilities.

### Assumptions

- **No great difficulty for software development:** Is not expected that the software development be challenged, because the basic Python libraries for Markdown document manipulation and generation yet exists and are mature.

### Uncertainties

- **No time to end:** There is no certainties about the cost development and time required for the framework to reach maturity.

## Goals

  - Develop the framework concept and design to support the [Concept of Operations](../../engineering/Concept%20of%20Operations.md).
  - Produce a product that support the operations described in the [Concept of Operations](../../engineering/Concept%20of%20Operations.md).
  - Implement the product to transform the current situation described in the  [As-Is Diagram](../../engineering/As-Is%20Diagram.md) to the situation described in the [System Boundary Context](../../engineering/System%20Boundary%20Context.md).
  - Publish the framework as an Open-Source Python Package in Pypi.

## Expected Outcome

### Enterprise Outcome

- The metadata and document governance applied with near zero human effort
- The main organisation documents and business rules integrated wit near zero human effort.
- Get relations with the open-source community due the framework open-source publication.

### Return of Investments

With the documents integrated using near zero human effort the enterprise alignment with all teams must increase assertiveness and reduce costs due the misalignment and tactical mistakes.

With the assertiveness increase and the documents integration, decision and changes in business rules could be made with less effort or updated in few minutes instead hours, enabling better agility.

With better agility will be possible to dedicate resources to more high value initiatives.

## Validations

Is expected that the product enable all outcomes defined below , their criterias organisation is based in the ISO-25010 and [Q42 Quality Model](https://quality.arc42.org/)

1. [The document's governance rules applied with an automated product that uses near-zero human labor.](../../management/project%20management/validations/The%20document's%20governance%20rules%20applied%20with%20an%20automated%20product%20that%20uses%20near-zero%20human%20labor..md)
	- **Success Criteria:**
		- **Adaptable:**
			- During the governance application rules the product can interact with external sources (as requesting a new 'id' for a new document).
		- **Reliable**
			1. The product can transform all necessary documents from a non-conformant 'Dublin Core' metadata standard to 'conformant' based in the organisation policies.
		- **Flexible:**
			1. The product can load governance rules from external sources in any non-standardised format.
			2. The product can enable or disable rules from a configuration files, enabling configurations per repository or per specific files.
			3. The product can report what rules will apply in the document without change the files. Allowing audit and reporting in read-only repositories.
		- **Efficient:**
		- **Usable**
		- **Safe**
		- **Secure**
		- **Suitable**
		- **Operable:**

	- **Failure Criteria:**
		- Any of 'Success Criteria' was not meet

2. [Both business and technical documents relevant for their audience, with an automated product that uses near-zero human labor.](../../management/project%20management/validations/Both%20business%20and%20technical%20documents%20relevant%20for%20their%20audience,%20with%20an%20automated%20product%20that%20uses%20near-zero%20human%20labor..md)
	- **Success Criteria:**
		- **Adaptable**
			1. A change in a document section or content can dispatch an event to be know to other systems or the own product.
		- **Disposable**
		- **Documented**
		- **Efficient**
		- **Extensible**
			1. The user can define operations to generate documents based in external information
		- **Flexible**
			1. The product can to evaluate if all information are available to start to operate the documents.
		- **Maintainable**
		- **Managed**
		- **Monitored**
		- **Observed**
		- **Operable**
		- **Reliable**
		- **Safe**
			1. After collecting data from documents, the system can send the information to external system as an transaction.
		- **Secure**
		- **Suitable**
		- **Usable**
			1. The documents can be used as source-of-truth
	- **Failure Criteria:**
		- Any of 'Success Criteria' was not meet

3. [The community interacting with the product published as open-source.](../../management/project%20management/validations/The%20community%20interacting%20with%20the%20product%20published%20as%20open-source..md)
	- **Success Criteria:**
		1. The product is published in 'Pypi' and 'Github'
		2. The documentation is published in a website using MkDocs frameworks.
		3. The issues and proposed changes is available at 'Github' for discussion.
	- **Failure Criteria:**
		1. Any of 'Success Criteria' was not meet

## Project Deliverables and Acceptance

### Major Deliverables

These are the 'Major Deliverables' agreed, organised in according the [Project Life-Cycle](../../management/project%20management/Project%20Life-Cycle.md) in the phases 'Pre-Mission', 'Mission' and 'Post-Mission'

- **Pre-mission Phase:** The artefacts to be delivered before the mission to ensure the efforts are aimed to stakeholder expectation
	- [Statement of Work](Statement%20of%20Work.md): This document , with the stakeholders agreement and problem definition.
	- Stakeholder Requirements Document: The main product and project main document's consolidation.
- **Mission Phase:** The internal applications that enable the enterprise capabilities and full-fill the system mission.
	- **[Minimal Markdown Governance Application](../../management/project%20management/deliverables/Minimal%20Markdown%20Governance%20Application.md):** The minimal organisation and system capabilities implementation.
	- **[Full Markdown Governance Application](../../management/project%20management/deliverables/Full%20Markdown%20Governance%20Application.md):** The full scope organisation and system capabilities implementation.
	- **[The package published in the 'PyPi' repository](../../management/project%20management/deliverables/The%20package%20published%20in%20the%20'PyPi'%20repository.md)**: The first operational release published in conformance with 'PyPi' repository, including their 'GitHub' source code and community guidelines release.
- **Post-Mission Phase:** The artefacts to be delivered after the mission completion or after the mission deliverables being released.
	- [Product Package](../../management/project%20management/deliverables/Product%20Package.md): The full project and product packed for the application life-cycle management.

### Critical Milestones

- **Pre-mission Phase**
	- Review Baseline: When the review activity releases their baseline document allowing the project to evolve into a next life-cycle activity.
	- Stakeholder Requirements Document Baseline: When the 'Stakeholder Requirements Document' was formally released as baseline.
- **Mission Phase**
	- **D+30:** [The package published in the 'PyPi' repository](../../management/project%20management/deliverables/The%20package%20published%20in%20the%20'PyPi'%20repository.md)
	- **[Release 0.0.1](../../management/project%20management/deliverables/Release%200.0.1.md):** The framework with the feature to open user file-system directories as repositories.
	- **[Release 0.1.0](../../management/project%20management/deliverables/Release%200.1.0.md):** The framework with the feature to automatically apply standard 'Dublin Core' metadata policies.
	- **[Release 1.0.0](../../management/project%20management/deliverables/Release%201.0.0.md):** The framework completely supporting the [Concept of Operations](../../engineering/Concept%20of%20Operations.md)  and acceptance criteria validated.
- **Post Mission Phase**

### Acceptance Criteria

- **Functional:** The product must satisfy all [Validations](#Validations) criterias
- **Performance:**  The product must satisfy all [Characteristics](#Characteristics) criterias
- **Operational:** The product and their artefacts must be packed to be delivered to the 'Application Life-Cycle Management'.

## Governance

{An high level declaration of the expected governance }

### Governance Structure

### Change Governance

### Risk Governance

## Management

{An high level declaration of the expected management }

### Project Management

{A simple project management introduction, with their 'project life-cycle' brief explanation and the main project management document reference}

- [Project Life-Cycle](../../management/project%20management/Project%20Life-Cycle.md)
- [Project Management Document](../../management/project%20management/Project%20Management%20Document.md)

### Communication

{A brief communication plan explanation, with the document reference}

### Technical Management Areas

{A brief reference to other more technical management areas that could be in interest as listed below}

- **Configuration Management:**
- **Operations Management:**
- **Maintenance and System Monitoring:**
- **Security Management:**
- **Knowledge Management:**
- **Document Management:**
