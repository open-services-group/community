---
title: Testing the service
persona: service-owner
phase: service-development
---

The range of testing done should cover all combinations of interactions a user might have with the service. These tests must be integrated with the
service's continuous integration (CI).


## Requirements

Tests must cover the following areas:
- Integration testing: all micro-service interactions and third party interactions are covered
- End to end testing: common user scenarios including cases when user should have access to only subset of features are covered
- A test suite for testing user facing interactions: verify that all service aspects are accessible
- A test suite for testing subscription plan migrations, upgrades, transitions, and downgrades
- Service's scalability
- Stress testing: to define and verify capacity and performance targets
- Security testing: security scan of all images and deployments

Optional tests to include:
- Status dashboard for test results
- Penetration test approval/regular testing


## Reasoning

The range of tests described ensure that the service will not fail in most user interactions. The testing areas chosen highlight use cases where
possible errors or outages may occur opposed to prioritizing unit testing.



