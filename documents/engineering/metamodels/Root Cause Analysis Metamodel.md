# Root Cause Analysis Metamodel


## Concerns

- **What is happening:**
	- What needs are not satisfied 
	- What's is the theory that  explains why the problem prevents the needs to be solved
- **What organisational elements are affected**
	- What are the related organisational behaviours
	- What are the related organisational entities
- **Where is happening:**
	- What is the environment where it's happening
	- When it's the problem is happening
- **The Bounded contexts:**
	- What are the bounded contexts in scenario
- **The Issues**
	- What is the relation between causes and their symptoms


## Metamodel


```mermaid

flowchart TD

%% Elementos do Problema (AS-IS)
Needs
Problem
Time
Environment
subgraph Issue
    Causes
    Symptoms
end

%% Relações do Problema
Needs -- not satisfied by --> Problem
Problem -- caused by --> Causes
Causes -- manifest as --> Symptoms
Symptoms -- observed in --> Environment
Time -- frames --> Problem

%% Transição para Solução (Particionamento)
Issue -- forces partitioning of --> Environment
Environment -- is partitioned into --> ConflictDomain
ConflictDomain -- requires a clear --> BoundedContext

subgraph ConflictDomain["Conflict Domain"]
    Behaviour
    Entities
    Actors
end


BoundedContext -- defines the scope of --> ConflictDomain

```
