---
Document Management:
 kind: foundational
 maturity:
  CMMI-Based: { "revision": 1, "level": 2 }
---

# CMMI Based Document Maturity Model

This maturity model is used to determine the document's development stage, referenced as 'document's journey'.

The main philosophy is based in the CMMI-Dev Maturity Model, adding a perspective that allow visualize many documents under a common perspective described in the section '[Criteria](#Criteria)'.

This maturity model is [Foundational Document](../../Artefacts/Markdown%20Repository/Technical%20References/Concepts/Document%20Management/Foundational%20Document.md) it's means is intended to be extended with another maturity model. Following the [Document Metadata Policy](../../../../documents/management/document%20management/Document%20Metadata%20Policy.md), any additional maturity model must be registered following these policy.

## Criteria

The critéria is a perspective that helps view the documents's maturity under a common structure.

The 'Layers' are conceptually similar to the TOGAF Enterprise Continuum concept, it define the attachment of the level in the organisation architecture's layer, it's also helps to understand the maturity level focus in the organisation internal needs.

The 'Characteristics' are unique trait that make the document part of these level, it need to be filled all these defined traits to be considered from these level.

In other maturity levels that extend this one, the extensions is expected to occour defining the 'characteristics' for the layer that the other maturity levels applies.

### Layers

- **Foundation:** Generic criteria that provides a foundation structure for the upper layers.
- **Common Systems:** An integration of the foundation components that solve a common domain problems to be used as reusable building blocks for the upper layers.
- **Industry Specific:** An integration of the common systems solving problems related to a specific stakeholder problems related to a specific industry.
- **Organisation Specific:** An integration of the industry specific layer to create the exclusive outcome the of the organisation.

### Characteristics

The characteristics are the unique traits that is expected that the documents contains or is related. It's differentiate each maturity level.

- **Identification:** The trait to create a identity unique for the repository.
- **Governance:** The policies and processes that govern the document life-cycle.
- **Quality:** The accuracy, consistency, and completeness of content.
- **Integration:** The ability to use the document operable with other systems.
- **Standards:** The adoption of common schema and structures.
- **Culture and Skills:** The organizational awareness and capabilities related to the document.

## Maturity Levels

### Level 01 - Ad Hoc

The documents exists without a clearly life cycle process, scope or management. Only their form is considered as specified.

#### Principles

- **If exists, is counting:** If the document exists, is the bare minimum to consider. Every document have a start, this is the one.

#### Purpose

All documents have a defined form and a title for title for conceptual meaning

#### Goals

- Sinalizes that the document exists and have a form.

#### Criteria

- **Foundation**
  - **Identification**
    - The document have a title

### Level 02 - Managed

#### Principles

- **Small steps:** It's an introduction to the document's maturity journey , better starts with small steps that introduces the document into the management system.
- **Automated level:** This level is not to increase the manually work , but to be supported by automated tools, so manually steps must be avoided for this level.

#### Purpose

All documents have an defined structure and can be identified among other documents. Allowing being indexed or manipulated by document management systems.

#### Goals

- Identify the document among all documents and their original template
- Associate the document with a high level workflow
- Flag the the document status

#### Criteria

- **Foundation**
  - **Identification**
    - The document have dublin-core metadata defining:
      - Their document ID
      - Their license
      - Their title
    - The document have metadata defining their template properties:
      - Their template ID
      - Their template name
  - **Process**
    - There is at last one processes to initiate the document
  - **Quality**
    - There is a review procedure for the document
  - **Status**
    - The document have their status identified

### Level 03 - Defined

#### Principles

- **Event-Oriented:** The document must be governed by a event orient model that describe the document state and trigger reactions after their changes.

#### Purpose

All documents have a well defined scope and life cycle processes, and their events can be integrated to other information systems.

#### Goals

- Have a well defined scope for the document
- Associate the document with specific workflows for their life-cycle
- Trigger behaviours in the organisation based in the document's change
- Baselines are defined and managed

#### Criteria

- **Foundation**
  - **Process**
    - There is at least one process to update the document.
    - Changes in the document trigger events in the organisation.
  - **Quality**
    - There is guidelines for the document life-cycle
    - There is a clearly definition of the purpose, inputs, entry criteria, activities, roles, measures, verification steps, outputs, and exit criteria for the document.

### Level 04 - Quantitatively Managed

#### Principles

- **Organisation oriented:** The document formalises and incorporate organisation specific characteristics that allow to make part of large document systems.
- **Always verified:** The documents is automated verified at each change and manually revised if needed at each baseline. Serving as source of truth in their domain.

#### Purpose

- Define organisation-specific criteria and purpose for the document
- Changes are traced to a driver and statically reported
- Support automated verification
- Baselines are revised

### level 05 - Optimizing

#### Principles

- **Continuous Improvement:** The document is a evolving part in a bigger system, then it require being refined when needed.

#### Purpose

Registry Issues and suggested improvements for consideration in the document's revision cycles.
