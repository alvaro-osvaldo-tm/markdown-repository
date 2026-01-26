# System Boundary Context

This document explains the context that this project is based upon.

The image below describes the graphically these context, the section [Context Boundaries](#Context%20Boundaries) describes the boundaries that compartment the related entities.

The section [Context Interactions](#Context%20Interactions) describe how these boundaries interacts with each other.

The Entities and Actors described in the diagram is not explained because it's considered common knowledge in framework domain.

![context-diagram](images/contexts%20diagrams/context-diagram.svg)

## Context Boundaries

### User Application Environment

Refers the environment where the internal organisation and user works to operate the internal business rules, operations and activate the applications and systems that implements the framework.

### Framework Environment

Is the internal framework software published by this repository plus the extensions and repository abstractions that enables user inject behaviours in the framework.

### External Documents Environment

These are infrastructure where the documents are stored , it can be the User's filesystem or any kind of storage or systems software.

## Context Interactions

The [User Application Environment](#User%20Application%20Environment) interacts with the [Framework Environment](#Framework%20Environment) by applications that initialise or incorporate the framework.

The [Framework Environment](#Framework%20Environment) interacts with the [External Documents Environment](#External%20Documents%20Environment)by the 'Repository Abstraction' that abstract the document's infrastructure and allow the framework to interact with the documents.

## Domains Metamodels

### Markdown Document Metamodel

The markdown document metamodel conform to the structure defined

The Markdown Document is 

- **Markdown Document**: The whole Markdown document
	- **Template**
		- The template that can conform or originate the markdown document.
	- **Metadata:**
		- The document metadata
	- **Meta Content:**
		- References: The union of link , and image referentes to another documents.
	- **File:** The file-system oriented document attributes
		- Encoding: The document's character encoding.
		- Path: The document physical or logical location
		- File Attributes: The specific file-system oriented document attributes.
	- **Content:** The structural elements defined in the Markdown Specification.
		- **Basic Syntax:** The basic sintax defined in the [Markdown Guide](https://www.markdownguide.org/basic-syntax/)
			- Heading: Any heading level
			- Paragraph
			- Line Break
			- Emphasis
			- Blockquote
			- List
			- Code
			- Horizontal Rule
			- Link
			- Image
			- Escaping Characters
			- HTML Tag
			- HTML Comment
		- **Extended Syntax**
			- Table
			- Code Blocks
			- Footnotes
			- Heading:
				- Heading ID
			- Definition Lists
			- Strikethrough
			- Task Lists
			- Emoji
			- Highlight
			- Subscript
			- Superscript
