# Stakeholder Catalog

These are the stakeholders identified for this framework, the stakeholders that is framework is designed for are the [End-user personas](#End-user%20personas), other stakeholders are related to the project management and life-cycle.

## End-user personas

 These are the users the framework is designed for.

- [Markdown Editor Linux User Persona](stakeholders/Markdown%20Editor%20Linux%20User%20Persona/Markdown%20Editor%20Linux%20User%20Persona.md)
	- A user without python programming skills that need keep a set of markdown documents under a governance, they can act in some governance configurations but will not do python programming.
	- They desire to apply governance configurations or checks from terminal or scripts.
	- If need to do changes or queries using terminal, it will desire to use some kind of know query language as XPath or JSONPath
	- **Vision:**
		- They sit in the computer, open a linux terminal and execute the framework's applications to do some queries and transformations in markdown documents.
		- Also have some bash scripts that automatizes some tasks and read documents and file lists com pipelines.
		- Due collaboration with [Python Developer Persona](stakeholders/Python%20Developer%20Persona.md), also have some python application that
	- **Frustrations:**
		- They don't like to manually edit a bunch documents to meet governance and quality documents criteria, as check the sections or metadata integrity
		- The catalogues and indexes are always deprecated and require manual intervention.
	- **Principles:**
		- **Document checking is for machines:** The rules checking should be delegated to machines because can execute iteratively the same checks without possibility of fatigue or boring.
	- **Needs:**
		- **Catalogues and indexes always updated:** Create Markdown catalogues and indexes automatically based in a query or some external data.
		- **Information extraction:** Extract some document entities in terminal or scripts, using some python code or language query .
		- **Automate governance policies:** Automate document's governance policies and rules, as keeping the metadata updated and checked, sections filled and documents maturity verified.
	- **Concerns:**
		- How to ensure metadata quality
		- How to keep catalogues and indexes always updated
		- How to run automated governance policies
	- **Related Problem**
		- Automate the document checking and governance.
- [Python Developer Persona](stakeholders/Python%20Developer%20Persona.md)
	- A user with Python programming knowledge, they wants to create applications that transforms many markdown documents at once, apply governance and configurations settings , extract content.
	- Also want to import and export markdown repositories from different platform as WikiJS to the filesystem, including their attachments.
	- They main cases is to ensure python code and markdown documentation is synchronised , so business personal can always read updated documentation , and if need change the document in some collaborative platform as a Wiki, Google Drive or other as needed. Then the changes are synchronised to the markdown documents that serve as source of truth and trigger software changes. Or the opposite, changes in the python code documentation or python data structures trigger changes in the markdown documents. The important is to keep both business and technical personal at same page.
	- **Vision:**
		- The markdown repositories are many , but there is no problem, governance and configuration settings para implemented in python code and distributed to the projects need it.
		- They can count on the [Markdown Editor Linux User Persona](stakeholders/Markdown%20Editor%20Linux%20User%20Persona/Markdown%20Editor%20Linux%20User%20Persona.md) to execute the applications or put in the GitOps workflow to ensure consistence.
		- Both business and technical personal are at same page, with documents acting as interface for changes for business personal, as when a change in tables values trigger events that update the python configuration. It make a lot easier to keep software configuration updated because it the document now serves as an configuration repository.
	- **Frustrations:**
		- **Broken links:** When working markdown documents between directories or platforms, all linked files are lost.
		- **Business document integrity lost:** when business, technical and python source code comments are desynchronized.
		- **Lack of support to maintain business documents integrity:** When a document's change not trigger events that help implement the code in source code. Or in opposite, when a change in source code comment or data structure not trigger events to update the documentation.
	- **Principles:**
		- **All personal at same page:** Changes in business rules documents , comments in source code, or data-structure
	- **Needs:**
		- **Deploy governance document implementations:** Document's must me managed following governance rules, these rules must be deployed to many repositories to be executed when events triggers or must be used to validate these repositories manually.
		- **Business and python application document must be syncronized:** When business personal changes a document, it need to trigger procedures that changes python applications behaviour. The opposites also must happen, when technical personal changes  python application comment or datastructure, it need to trigger procedures that changes the business documents.
		- **Keep documents Integrity:** When operating documents, as transferring from a platform to another , changing directory , the change must carry their linked documents and attachments. The document integrity must not be loosed.
	- **Concerns:**
		- How to keep business and technical personal with same information
		- How to operate documents safety
		- How to use a documents as rule database.
		- How to create extensions
	- **Related Problem**
		- Keep business and technical personal at same page using documents.
	- **Roles:**
		- Contributor Role
	- **Discovered Concepts**
		- [Google Docs Integration Discovery Case](../../engineering/discovery/cases/Google%20Docs%20Integration%20Discovery%20Case.md)

## Cybersecurity persona

Interested in understand the vulnerabilities and risks that the framework will introduce.

- [Cybersecurity Analyst Persona](stakeholders/Cybersecurity%20Analyst%20Persona.md)
	- A professional in cybernetic security , no necessary need to govern documents using this framework, but need to evaluate what security implications framework introduction in the organisation stack will mean and what method are used to handle the identified threats.
	- **Vision:**
		- They open the framework documentation , in the cybersecurity section can see the treat model and measures used to prevent they to act.
	- **Frustrations:**
		- **No basic report:** Lack of basic security policies is really a a bad signal, means the engineering team even considered the security implications or know it exists. It put all effort in securiting the software into the cybersecurity team.
		- **No basic prevention:** Even when the engineering team knows the security implications, the lack of understanding the basic practices to protected the software make it , at least, unreliable.
	- **Principles:**
		- **Better the basic than nothing:** Security is challenging , but the basic prevention is always better than nothing, and a basic good prevention opens the door for more specialised prevention. And it's good to talk with a engineering team that recognises these needs and are open for improvement.
	- **Needs:**
		- **Risk analysis:** Understand the risks and vulnerabilities exists in framework, their licenses, the methods used to handle threats and other security implications for the organisation.
		- **Openness for discussion:** Security it's not a single-team work, it need to exists a open channel for questions and suggestions.
	- **Concerns:**
		- What methods is used to handle threats.
		- What is the threat model in the framework
		- What vulnerabilities exists in the framework
		- What licenses is used in the framework
		- How can I contact the engineering team for security issues.
		- How to audit the framework internal events that can indicates an 'Indicator of Compromise'
		- How to log behaviours that could indicate an 'Indicator of Compromise'.
	- **Roles:**
		- [Contributor Role](../roles/Contributor%20Role.md)
	- **Related Problem**
		- The framework can be a vulnerability issue
	- **Discovered Concepts**
		- **Release reporting using python 'Bandit' framework:** The vulnerability assessment can be released for each stable commit to be a available for the stakeholder.
		- **Standardised security practices for python:** The improvements and processes made for this framework can be standardised for usage in other software developments.
		- **Implementing a Secure Development Lifecycle:** The concept of Secure Development Lifecycle can be integrated in the system's life-cycle
		- **Python Audit Hook:** Is possible to enable personalised security constraints in the framework with [python's audit features](https://docs.python.org/3/library/audit_events.html).
		- **Centralised and distributed logs:** Is possible to split logs from application and from 'Audit Hook' into to two separated stream , allowing log processing for security purpose and log processing for performance metrics purpose

## Hostile persona

Interested in violate the framework default behaviour to propagate malware.

- [Hostile Actor Persona](stakeholders/Hostile%20Actor%20Persona.md)
	- Is an external actor that can act or not in behalf of the framework development or use another person as middleman.
	- Their purpose is to use the framework as a vector for their hostile actions.
	- **Vision:**
		- The framework acts in organisation's backend processing systems, possible engineering or financial organisations. It's an opportunity to inject malware, capture their systems and blackmail for ransom. Or simple use their hardware for my purposes.
	- **Frustrations:**
		- **Well established security processes:** Opportunity is key, ignorance is an ally, if the engineering team have implemented processes in framework development to catch my actions and prevent the vulnerability increasing , then it only make my work harder.
		- **Disposable and limited runtime:** Compromise a system is triumph, make the persistence is an important step , if the system's runtime is disposable (as a container) and limited in tools and vulnerabilities, it could make the work a lot harder, it's not fun.
		- **Strong security workgroup:** Hack systems is not necessary difficult. Difficult is hack the security workgroup mindset , if the framework have a strong workgroup culture that includes security personal , it's better to act in a more vulnerable framework, soon or late it will become more difficult to compromise the framework.
	- **Principles:**
		- **Swift and friendly:** Great compromise don't need to be a cinematic show, act simple, act friendly, and put some vulnerability or payload in their dependencies or direct in the framework.
		- **Open to opportunities:**  Framework with lack of investment normally with extensions support opens the doors for free-exploiting.
	- **Needs:**
		- **Confidentiality compromise:** I want to get data from the user and send it to my infrastructure.
		- **Integrity compromise:** I want to access the internal framework behaviour and states to control their operations in favor of my purposes.
		- **Availability compromise:** I want to overload the user infrastructure to make unfeasible the framework processing.
		- **Supply Chain Attack Compromise:**
			- I want the framework uses my compromised list of dependencies or the user install my compromised extension.
			- I want to install my code directly into the framework or in their CI/CD infrastructure to use as malware vector.
	- **Concerns:**
		- How to create or compromise extensions for malware purposes
		- If the framework is prepared to handle data using some integrity or confidentiality capability
	- **Related Problem**
		- Using the framework to gain access to customer infrastructure
	- **Discovered Concepts**
		- [Vulnerabilities Assessment Discovery](../../engineering/discovery/assessments/Vulnerabilities%20Assessment%20Discovery.md)

## Enterprise personas

Ensure the framework development will archive the expected organisation outcome.

- [Enterprise Architect Persona](stakeholders/Enterprise%20Architect%20Persona.md)
	- This stakeholder ensure the framework is relevant for the organisation perspective , contributing that will contribute to the organisation outcome.
	- **Vision:**
	- **Frustrations:**
	- **Principles:**
	- **Needs:**
	- **Concerns:**
	- **Roles:**
		- [Product Owner Roles](../roles/Product%20Owner%20Roles.md)
	- **Related Problem**
	- **Discovered Concepts**

## Engineering personas

Ensure the correctly practices for the framework life-cycle to archive the expected system outcome.

- [Systems Engineer Persona](stakeholders/Systems%20Engineer%20Persona.md)
	- This stakeholder ensure the framework will be made using systems engineering method and best practices adapted
	- **Vision:**
	- **Frustrations:**
	- **Principles:**
	- **Needs:**
	- **Concerns:**
	- **Roles**
		- [Requirement Manager Role](../roles/Requirement%20Manager%20Role.md)
	- **Related Problem**
	- **Discovered Concepts**

- [Git Repository Contributor Persona](../stakeholders/Git%20Repository%20Contributor%20Persona.md)
	- {description | case description}
	- **Vision:**
	- **Frustrations:**
	- **Principles:**
	- **Needs:**
	- **Concerns:**
	- **Related Problem**
	- **Roles**
		- [Contributor Role](../roles/Contributor%20Role.md)
	- **Discovered Concepts**

## Management personas

Similar to the [Enterprise personas](#Enterprise%20personas), these stakeholder focuses in ensure the organization outcome will be translated into the operations.

- [Git Maintainer Persona](../stakeholders/Git%20Maintainer%20Persona.md)
	- {description | case description}
	- **Vision:**
	- **Frustrations:**
	- **Principles:**
	- **Needs:**
	- **Concerns:**
	- **Related Problem**
	- **Roles**
	- **Discovered Concepts**

- [Document Manager Persona](stakeholders/Document%20Manager%20Persona.md)
	- {description | case description}
	- **Vision:**
	- **Frustrations:**
	- **Principles:**
	- **Needs:**
	- **Concerns:**
	- **Related Problem**
	- **Roles**
	- **Discovered Concepts**

- [Project Manager Persona](stakeholders/Project%20Manager%20Persona.md)
	- {description | case description}
	- **Vision:**
	- **Frustrations:**
	- **Principles:**
	- **Needs:**
	- **Concerns:**
	- **Related Problem**
	- **Roles**
	- **Discovered Concepts**

- [Enterprise Architect Persona](stakeholders/Enterprise%20Architect%20Persona.md)
	- {description | case description}
	- **Vision:**
	- **Frustrations:**
	- **Principles:**
	- **Needs:**
	- **Concerns:**
	- **Related Problem**
	- **Roles**
	- **Discovered Concepts**

<!--

Template

- {stakeholder}
	- {description | case description}
	- **Vision:**
	- **Frustrations:**
	- **Principles:**
	- **Needs:**
	- **Concerns:**
	- **Related Problem**
	- **Roles**
	- **Discovered Concepts**

-->