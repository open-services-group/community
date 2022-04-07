---
title: Role-based access control policy
persona: Service-owner
phase:  Service-development
---

Role-based access control (RBAC) is an approach for restricting service access to authorized users. For most services, the end user or the consumer, the developer, the operator, and the admin interact with different components. The service should clearly demarcate between these different roles. The rbac policy document should list all the roles and their respective privileges.

## Requirements
- Define different roles that interact with the service
- For each role, specify the privileges or access that its user gets
  - For example, the admin can make changes to the core of a service
- For each role, specify the responsibilities that its user gets
  - For example, the admin has to be careful not to delete the service

## Reasoning

Role-based access control policy document specifies the roles that interact with the service and the access each role gets. This document makes sure that both the consumer and the provider understand how they can use and change the service. It mitigates the risk of accidental access of restricted components of the service.
