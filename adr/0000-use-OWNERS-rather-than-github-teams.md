# Define roles in a project/repository/SIG

* Status: proposed

Technical Story: we want to have approvers and reviewers for every repository we maintain on GitHub, and we want
to address/mention subsets of people within our organization on GitHub.

## Context and Problem Statement

As we want to conduct code reviews, we want to implemente a reviewer-approver pattern (as seen in Kubernetes, Operate-First, or Thoth Station),
therefore we need to maintain theres roles for each repository we maintain on GitHub. As Prow (specifically peribolos)
is our janitor, we need to declare the roles within each repository and/or within the organization. As we also want to
address subsets of org members, we need to declare GitHub teams too. Both (OWNERS, OWNER_ALIASES and Teams) might be
used in a mix and might be hard to keep synchronized.

## Decision Drivers <!-- optional -->

* clarity and easy tracability/understandablity
* minimal points of configuration/declaration/documentation

## Considered Options

* OWNERS-teams-mix - we can use the OWNERS file in each repository to declare reviews/approver roles by referencing a
GitHub team, this team could be used to address members too
* OWNERS-only - we can use the OWNERS file to explicitly declare the roles, without any team configuration, we can only
address individual users
* GitHub-only - we can configure GitHub's 'Access' and 'Code and automation' per repository manually; esentially moving
away from Prow.

## Decision Outcome

Chosen option: "OWNERS-team-mix", because is will enable use to implement a reviewers-approvers code review pattern, we
can reference GitHub teams in OWNERS file, and at the same time use OWNER_ALIASES generated from the sigs.yaml file, we
can address SIG, WG, SP roles (via the generated aliases or teams).

### OWNERS-teams-mix

* Good, because GitHub teams could be reused for other purposes
* Bad, multiple levels of reference, see <https://github.com/kubernetes/api/blob/master/OWNERS> which assumes that one knows about <https://github.com/kubernetes/org/blob/7906d4fc01cc0789af09138184b8a4940f811a98/config/kubernetes/org.yaml#L1335>

<!-- markdownlint-disable-file MD013 -->
