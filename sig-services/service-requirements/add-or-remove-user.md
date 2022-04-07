---
title: Easy to add or remove user
persona: Service-Consumer (subscribed) with Service-Admin role (ACL)
phase: Service-operational
---

Users should be able to subscribe to and unsubscribe from a service easily. Both processes should be made as accessible to users as possible.

The subscription process should be as simple as registering via a single button while filling in the required minimum amount of user identification data. When subscribing to the service, users are not required to share more personally identifiable information than the mandatory identification or billing data. The subscription process is automated, and the user is approved and cleared to consume the service promptly.

Termination of a subscription is handled in a similar fashion. The button is clearly visible and accessible to the user. It's also a simple process. Remember that hiding the unsubscribe button from users or making the process more complicated than necessary doesn't raise customer's satisfaction with the service.

When a user unsubscribes from the service, it is guaranteed that all linked accounts are removed from the system instantly, and the user account is fully removed. All the user data is forever deleted from the service data store, and it is ensured the same happens with the user's data passed to any third-party service.

## Requirements

- User is able to subscribe to the service by clicking a single button. Authentication can be delegated to a third party, but only mandatory identification and billing data is required from the user.
- User is able to unsubscribe from the service by clicking a single button (a single confirmation layer is possible). The process is simple, and the button is accessible and easy to find in the service settings.
- When a user unsubscribes from the service, all linked accounts are removed from the service.
- When a user unsubscribes from the service, all user data is ensured to be deleted.

## Reasoning

Users should be able to quickly onboard to the service and easily remove themselves from the service. This ensures that users can start using services immediately. And when they wish to stop using the service, they don't have to worry about their data being stored after unsubscribing from the service.
