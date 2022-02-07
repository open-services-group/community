# Use OWNERS to determine roles in a project/repository

* Status: proposed

Technical Story: we want to have approvers and reviewers for every repository we maintain on GitHub

## Context and Problem Statement

As we want to conduct code reviews, we want to implemente a reviewer-approver pattern (as seen in Kubernetes, Operate-First, or Thoth Station),
therefore we need to maintain theres roles on GitHub. As Prow (specifically peribolos) is our janitor, we need to declare
the roles within each repository and/or within the organization.

## Decision Drivers <!-- optional -->

* clarity and easy tracability

## Considered Options

* OWNERS-teams-mix - we can use the OWNERS file in each repository to declare reviews/approver roles by referencing a GitHub team
* OWNERS-only - we can use the OWNERS file to explicitly declare the roles

## Decision Outcome

Chosen option: "OWNERS-only", because is removes one layer of complexity when declaring or understanding the team structured.

### Positive Consequences <!-- optional -->

* as the roles are explicitely declared, we can instantly understand them

## Pros and Cons of the Options <!-- optional -->

### OWNERS-teams-mix

* Good, because GitHub teams could be reused for other purposes
* Bad, multiple levels of reference, see <https://github.com/kubernetes/api/blob/master/OWNERS> which assumes that one knows about <https://github.com/kubernetes/org/blob/7906d4fc01cc0789af09138184b8a4940f811a98/config/kubernetes/org.yaml#L1335>

<!-- markdownlint-disable-file MD013 -->
