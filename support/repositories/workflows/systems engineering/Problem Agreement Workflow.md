[Back](Identification%20of%20Stakeholder%20and%20Their%20Needs.md)
# Problem Agreement Workflow

## Description

This workflows is to capture a problem that must be surpassed for the stakeholders needs satisfactions and to categorize the 'Problem-Space' to be used in further activies.

The 'course of actions' gets the stakeholders needs collected in the [Needs Catalog](../../../../documents/enterprise/catalogs/Needs%20Catalog.md) and transform into a [Problem Agreement](../../../../documents/enterprise/agreements/Problem%20Agreement.md) that is refined and formal interpretation of problem and their 'root-causes' that interfere with the stakeholder performance.

For then, this workflow have the purpose to:

- Select those needs that will discussed
- Describe the environment where these needs and the problem apply.
- Agree with the stakeholder the problem that previne these needs to be satisfied.
- Realize a diagnosis to understand the problem symptoms, consequences and origins
- Define the 'Problem-Space' categories.
- Agree with the stakeholders a common understanding about the problem.

The work products are:

- [Problem Agreement](../../../../documents/enterprise/agreements/Problem%20Agreement.md)
- [As-Is Diagram](../../../../documents/engineering/As-Is%20Diagram.md)

## Prerequisites

The stakeholder identification was made.

## Principles

- **Foundational Document:** The [Problem Agreement](../../../../documents/enterprise/agreements/Problem%20Agreement.md) document is a foundational document that will interfere in the whole project life-cycle, there is a need for careful workflow operation and respectful stakeholder collaboration for their success.
- **Organic document:** This document's operation can enhance the system concept understanding, it can require some other documents review.

## Events

No events was defined for this workflow.

## Course of Actions

1. > [!iteration] Until the problem meaning for the business is formally coherent and the stakeholder signed the document
   - > [!constraint] The 'selected needs category' apply to each activity and the document information must be organised according even there is no statement in the activity.
   - > [!constraint] If the related activity document is not explicit, it must be interpreted as the [Problem Agreement](../../../../documents/enterprise/agreements/Problem%20Agreement.md) document:
   1. **Scope Selection:**
      1. Select some preliminary needs in the [Needs Catalog](../../../../documents/enterprise/catalogs/Needs%20Catalog.md) to be discussed in this iteration.
      2. Explain and agree with the stakeholder why these needs are important for the current iteration discussion, if no agreement is made consider change in the selected needs.
   2. **Environment Mapping:**
      1. Observe the stakeholder environment and agree to determine the environment's entities and structure that will be discussed.
      2. Draw the agreed entities in the [As-Is Diagram](../../../../documents/engineering/As-Is%20Diagram.md) and attach in the [Environment Description](../../../../documents/enterprise/agreements/Problem%20Agreement.md#Environment%20Description) section.
   3. **Problem Analysis:**
      - > [!constraint] Every symptom should be be traceable back to at least one 'Unsatisfied Need' in Problem Origin.
      1. Refine the needs and the 'selected needs categories' for better document organisation and registry in the [Problem Origin](../../../../documents/enterprise/agreements/Problem%20Agreement.md#Problem%20Origin)
      2. Define the [Problem Partitions](../../../../documents/enterprise/agreements/Problem%20Agreement.md#Problem%20Partitions) based in the [Problem Origin](../../../../documents/enterprise/agreements/Problem%20Agreement.md#Problem%20Origin) , explaining the each partition's scope.
      3. Identify the observed [Symptoms and Consequences](../../../../documents/enterprise/agreements/Problem%20Agreement.md#Symptoms%20and%20Consequences) and their triggers , classifying it partitions described in the [Problem Partitions](../../../../documents/enterprise/agreements/Problem%20Agreement.md#Problem%20Partitions) section.
      4. Abstract the partitioned [Symptoms and Consequences](../../../../documents/enterprise/agreements/Problem%20Agreement.md#Symptoms%20and%20Consequences)
   4. **Evidence Gathering:**
      1. Collect some problems evidences to be used for discussion and further problem's proof, and attach as an 'annex' or in a repository.
   5. **Synthesis:**
      - > [!note] A better understand of the 'Problem' can lead a return to the 'Problem Analysis' activity.
      - > [!constraint]: Ensure the definition separates the "Core Problem" from "Symptoms".
      1. Introduces the problem-related business context and their 'main undesired business impact' in the [Problem Definition](../../../../documents/enterprise/agreements/Problem%20Agreement.md#Problem%20Definition) section.
      2. Specify the 'main undesired business impact' and the desired state and the needs that are not satisfied and their consequences in the [Problem Definition](../../../../documents/enterprise/agreements/Problem%20Agreement.md#Problem%20Definition) section in partitions defined in the [Problem Partitions](../../../../documents/enterprise/agreements/Problem%20Agreement.md#Problem%20Partitions) section.
   6. **Agreement & Diagnosis:**
      1. > [constraint] If possible use 'Causal Analysis' to proof and analyse the problem .
      2. Agree with the stakeholders a single and simple statement about the problem in the [Problem Statement](../../../../documents/enterprise/agreements/Problem%20Agreement.md#Problem%20Statement) section.
      3. Elaborate and define the problem 'root-cause' in the [Problem Diagnosis](../../../../documents/enterprise/agreements/Problem%20Agreement.md#Problem%20Diagnosis) section.
   7. **Refine:**
      1. Refine the [Problem Partitions](../../../../documents/enterprise/agreements/Problem%20Agreement.md#Problem%20Partitions).
      2. Refine [Problem Partitions](../../../../documents/enterprise/agreements/Problem%20Agreement.md#Problem%20Partitions) usage in the [Problem Origin](../../../../documents/enterprise/agreements/Problem%20Agreement.md#Problem%20Origin) , [Problem Definition](../../../../documents/enterprise/agreements/Problem%20Agreement.md#Problem%20Definition) and the [Symptoms and Consequences](../../../../documents/enterprise/agreements/Problem%20Agreement.md#Symptoms%20and%20Consequences) sections.
      3. Refine the [Problem Agreement](../../../../documents/enterprise/agreements/Problem%20Agreement.md) content.
   8. **Sign:**
      1. Endorse the [Problem Partitions](../../../../documents/enterprise/agreements/Problem%20Agreement.md#Problem%20Partitions) with the stakeholders
      2. Collect the stakeholder's sign in the [Stakeholders](../../../../documents/enterprise/agreements/Problem%20Agreement.md#Stakeholders) section.
      3. Define the [Problem Agreement](../../../../documents/enterprise/agreements/Problem%20Agreement.md) as baseline.
