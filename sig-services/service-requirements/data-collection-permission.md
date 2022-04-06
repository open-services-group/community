---
Title: Data Collection and Permissions
Persona: service consumer, service provider/owner
Phase: service-operational
---

If service relies on social login for user identity, it should describe why and what information it collects from third party identity providers. Social login is a single sign-on (SSO) technology that allows users to authenticate themselves on various applications and sites by connecting through social media site rather then typing a separate ID and password on each website.

It should also clearly state the reason behind getting the data priviledges in order to impersonate on their behalf.

## Requirements

- A file / page is created which describes the guidelines for social login
  - how the data obtained in social login stored and used?
  - what kind of data are collected, e.g. GH id, name, GH org admin priviledges, browser session info, etc.
- The description should be easy to read and understand by end user.

## Reasoning

Defining a social login manages expectations of both the service consumer and the provider transparently. It clearly defined the kind of information service owner gets from the service consumer.

A well defined social login also mitigates the risk of any misunderstandings between the consumer and the provider which may otherwise lead to a conflict.
