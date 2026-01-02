# Concept of Operations

## Introduction

## System Purpose and Scope

The the system purpose and scope is defined in the [Statement of Work](../enterprise/agreements/Statement%20of%20Work.md) document.

## Operational Context

The systems context is defined in the [System Boundary Context](System%20Boundary%20Context.md) document.

## Stakeholders , Users and Actors

## Operational Goals

- **Reliability:** Achieve a high probability of successful file downloads according to the schedule (e.g., > 95% success rate for available files).

- **Timeliness:** Execute downloads within a defined window relative to the scheduled time (e.g., within 5 minutes of the scheduled start).

- **Efficiency:** Minimize network bandwidth consumption and processing power during downloads.

- **Usability:** Provide a user-friendly interface for defining download tasks and monitoring their status.

- **Maintainability:** Allow for easy configuration updates and troubleshooting.

## Operational Environment

- Application Terminal Desktop environment
- Embedded Application environment

## Operational Capabilities

## Operational Characteristics and Qualities

Based in the 'system statement' and the stakeholders agreement the product will conforms the following characteristics based in the ISO-25010 and [Q42 Quality Model](https://quality.arc42.org/).

- **Adaptable**
	1. Git hooks can activate the product to apply the governance rules in changed documents.
	2. The product can be integrated into a document processing workflow.
	3. The product can interact with non-makdown based platforms as wiki using the same operations related to the Markdown documents.
	4. The system can convert Markdown documents from JSON.
	5. The system can read JSON documents and interact with it as a Markdown document.
- **Disposable**
- **Documented**
- **Efficient**
	1. The product must use near-zero human labor
	2. The product must be able to process a minimum 1000 documents using efficient memory usage.
- **Extensible**
	1. The product must get extensions from 'Pypi', 'Github' or other 'Git' based repositories.
	2. The user can define operation to transform documents
- **Flexible**
	1. The user can load python functions into the processing workflow to handle specific documents identified by their relative path in the repository or other document criteria.
- **Maintainable**
- **Managed**
- **Monitored**
	1. The product can sendo log information to a logging platform in an standardised format.
- **Observed**
	1. The user can follow the operations progress when running in terminal
- **Operable**
- **Reliable**
- **Safe**
	1. No document is lost due a software error.
	2. When a document is moved from a directory to another, all related links are updated.
	3. When a document is moved from a repository to another, all related attachments are moved together.
- **Secure**
	1. External extensions have no means to compromise the computing node where the product is running.
- **Suitable**
- **Usable**
	1. The product can change sections, titles, paragraphs and words styles (bold, italic)
	2. The product can change list and 'tasks lists'.
	3. The product can operate html tags.
	4. The product can operate document's tables.
	5. Some capabilities are avaliable as cli-application
	6. The user can build applications using the product.

### Efficiency and Performance

### Safety and Security

### Maintainability and Supportability

## Operational States

## Information Architecture

### Signals

### Inputs

### Outputs

### Data Objects

## Operational Scenario

### Aplicar Dublin Core

- **Trigger:**  O usuário possui uma série de documentos para aplicar operações básicas com os metadados Dublin Core.
- **Actors:** [Markdown Editor Linux User Persona](../enterprise/stakeholders/Markdown%20Editor%20Linux%20User%20Persona/Markdown%20Editor%20Linux%20User%20Persona.md)
- **Actor Objective:**
- **Business Value**
- **Pre-Conditions**
- **Pos-Conditions**
- **Main Flow:**
	- O usuário inicia a aplicação pelo terminal configurando para aplicar a goverança de Dublin Core
- **Alternative Flow:**
- **Success Criteria:**
	- A governaça básica do padrão Dublin Core foi aplicada corretamente a todos os documentos
- **Failures Modes:**
	- Corrupted Repository
- **Related Production Validation**

## Constraints

## Limitations

## Validation

### Measure of Performance

### Measures of Effectiveness

### Acceptance Criteria
