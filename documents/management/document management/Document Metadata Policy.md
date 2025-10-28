# Document Metadata Policy


This document normalizes the document's metadata to be applied for all document in this repository.

It's follows the principles that a document must be easily searchable , their original structure (template) identifiable and their revision tracked.

This policy have the purpose to make easily for a user to locate a document, understand their purpose using their structure information and separate the baseline revisions from the development revision.

The section [Metadata](#Metadata) informs the main metadata structures to be implemented for each document.

 A template to be used for their implementation is defined in the [Template](#Template) section.


Is expected that all documents conforms the this policy defined here.

## Metadata

All documents must have conforms to the following sections:

**Dublin Core:** 

Describes the document identity using a selected of [Dublin Core](https://www.dublincore.org/specifications/dublin-core/dcmi-terms/) terms.

**Template:**
Describing the document original structure (template)

**Document:** 
Informs the document revision and the document's state.

**Maturity:** 
Describing the document maturity model conformance.

The two main maturity models are:

- Metadata: That conforms to this policy
- CMMI-Based: That conforms the [CMMI Based Document Maturity Model](../../../support/repositories/standards/maturity%20models/CMMI%20Based%20Document%20Maturity%20Model.md).

More maturity models conformance information can  be added if the document needed it. 

For each maturity model the revision information must be set, and if the maturity model requires the additional information referencing their maturity level.


### Template

```yaml
dublin core:
 identifier: 
 title:
 subject: []
 creator:
 contributor:
 created: {{date:YYYY-MM-DD}} {{time:HH:mm:ss Z}}
 license: private
 audience: internal
 language: en-uk
 abstract:

template:
 id:
 schema: 
 name:
 version:
 
document:
 revision:
 state:

maturity:
 Metadata: { 'revision': 1 }
 CMMI-Based: { 'revision': 1 , 'level': 1 }


```