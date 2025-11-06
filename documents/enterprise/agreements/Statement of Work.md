# Statement of Work


## System Statement

**System Vision:**

The user are satisfied, both readers and editors, because readers can get updated documentation and editors can use their specialised tools to write the documentation.

Therefore, all markdown documents are now managed in many systems , each system contribute with their functional advantages. Some systems have no Markdown support, and no system contains the governance tools to keep all documents normalised.

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

**Problem Definition:**

<!--
automation:
This section should be auto-generated based in the 'Problem Agreement' document.
-->

The problem is based in the need to keep the need to automate the documents checking and governance and to keep the business and technical personal at 'same page' using documents.

A more detailed explanations exists in the document [Problem Agreement](Problem%20Agreement.md).

**System Mission:**

{Describes the value the system brings to organisation and limits the space solution}

**System Purpose:**

In order to satisfy the needs to archive the expected outcome, the system have the purpose:

1. {Purpose item}

## Scope

### Stakeholders

### Principles

### Constraints

### Limitations

### Assumptions

### Uncertainties

## Goals

  - [ ] **{what need be delivered} ... {how much must be delivered}

## Expected Outcome

### Enterprise Outcome

### Return of Investments

## Project Deliverables and Acceptance

### Major Deliverables

- {Deliverable}

### Critical Milestones

### Acceptance Criteria

- **Functional:**
	- {Criteria}
- **Performance:**
	- {Criteria}
- **Operational**
	- {Criteria}

## Governance

{An high level declaration of the expected governance }

### Governance Structure

### Change Governance

### Risk Governance

## Management

{An high level declaration of the expected management }

### Project Management

{A simple project management introduction, with their 'project life-cycle' brief explanation and the main project management document reference}

- {Project Life-Cycle}
- {Project Management Main Document}


### Communication

{A brief communication plan explanation, with the document reference}

### Technical Management Areas

{A brief reference to other more technical management areas that could be in interest as listed below}

- **Configuration Management:**
- **Operations Management:**
-  **Maintenance and System Monitoring:**
-  **Security Management:**
-  **Knowledge Management:**
- - **Document Management:**


## Validations

- **Expected Outcome:**  
  - {Outcome}
  - **Success Criteria:**
    - {Success criteria}
  - **Measures of Effectiveness**
    - {Effectiveness criteria}
  - **Failure Criteria:**
    - {Failure criteria}


