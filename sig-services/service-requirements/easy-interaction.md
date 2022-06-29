---
title: Easy to interact with a service
persona: Service owner, service user
phase: Service development
---

Service should be simple to use. If a process in the service is complicated, it should utilize automation to make it easier (for example, installation). If a process needs some time to finish, it should inform the user about its state. Service should assume a reasonable standard configuration that users can easily modify. Interaction patterns should make the learning curve shallow, meaning the expertise needed for the user to operate the service should not need to be on the same level as the maintainer. If the API is exposed, it should follow established standards. For example follow [OpenAPI Specification](https://spec.openapis.org/oas/v3.1.0), use versioning etc. .

## Requirements

- Service should be easy to use
- Complex processes should be simplified using automation
- Default configuration should be reasonable, well explained, and easy to modify
- Service should use good interaction patterns to make the learning curve shallow
- Expertise needed to operate service for the user should be low
- If the API is exposed, established standards are followed

## Reasoning

The guidelines help make the service easy to use and leads to users learning how to use the service effectively faster. It also leads to higher user satisfaction because they don't have to review the documentation to utilize basic functionality.
