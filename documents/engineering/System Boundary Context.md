# System Boundary Context

This document explains the context that this project is based upon.

The image below describes the graphically these context, the section [Context Boundaries](#Context%20Boundaries) describes the boundaries that compartment the related entities.

The section [Context Interactions](#Context%20Interactions) describe how these boundaries interacts with each other.

The Entities and Actors described in the diagram is not explained because it's considered common knowledge in framework domain.

![context-diagram](../../support/repositories/images/context-diagram.svg)

## Context Boundaries

### User Application Environment

Refers the environment where the internal organisation and user works to operate the internal business rules, operations and activate the applications and systems that implements the framework.

### Framework Environment

Is the internal framework software published by this repository plus the extensions and repository abstractions that enables user inject behaviours in the framework.

### External Documents Environment

These are infrastructure where the documents are stored , it can be the User's filesystem or any kind of storage or systems software.

## Context Interactions

The [User Application Environment](#User%20Application%20Environment) interacts with the [Framework Environment](#Framework%20Environment)by applications that initialise or incorporate the framework.

The [Framework Environment](#Framework%20Environment) interacts with the [External Documents Environment](#External%20Documents%20Environment)by the 'Repository Abstraction' that abstract the document's infrastructure and allow the framework to interact with the documents.
