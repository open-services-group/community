---
title: Support process
persona: service provider/owner, service consumer
phase: service-development, service-design
---

An open service should have a support process defined. A support process is a way for users to reach out to the service owner/provider or developers and report any possible issues that might arise from the service e.g. service outage, feature request, or bug report. The support process should be transparent so that other users can see already solved issues and prevent duplicates and also see the progress of the reported issues. Response time to requests/reports shouldn't exceed the agreed time to respond and leave the user waiting for an answer, especially if the support process is also transparent. If the reported issue is a feature request or a bug the issue should not be closed before the change is available to the user in the next version.

If a user needs to send any confidential information that is required for the issue, there should exist a way for the user to ensure confidentiality of the information, for example with some kind of encryption. The support process mustn't include a way to report vulnerabilities and security issues.

A well defined support process amongst other things can found here: https://github.com/operate-first/sre/blob/main/sre_maturity.md

## Requirements

- Define a contact point for the support process (GitHub issues, email, ...)
  - It should be transparent or confidential depending on the use case
  - It should have templates prepared for common support issues
  - A severity scale should be present so that the issues can be easily prioritized
  - Document the support process and explain how can the user use it, for example in the service documentation or a GitHub readme
- Define a SLA-agreed time for the maximum response time to an issue report
- Define a way to communicate confidential information, for example using gpg public key encryption

## Reasoning

A support process is very important during a service lifetime because it is the main channel of communication between the users and the service owner/developers. It gathers feedback from users, which helps improve the service and also allows users to ask for help with problems they might have during their use of the service. It also creates a single point of entry for all the user feedback.
