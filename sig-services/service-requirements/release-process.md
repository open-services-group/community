---
title: Release process
persona: service provider/owner
phase: service-design, service-operational
---

A release process should follow a defined versioning numbering scheme, which means each new version will be identified by a unique number. Every released version should be documented in a changelog.

A changelog contains chronologically ordered list of notable changes for each version of a project. These changes should at least include what was removed, deprecated, added (new features), and fixed. When a new version is released it should map to the live service so that the changes are available to the users. If a release introduces a feature or fixes a bug that was requested/reported by a user via the support process (see the support process guideline), the user should be notified of the change.

It should also have CI/CD (Continuous Integration/Continuous Deployment) pipelines defined to automate the release process. CI/CD pipelines should also include test cases that must pass before a new version is released to the users.

## Requirements

- Define or reuse a versioning numbering scheme and stick to it
  - Example of a well-defined scheme: https://semver.org
- Define a changelog, for example, a markdown document
  - One possible way of writing a changelog can be found here: https://keepachangelog.com/en/1.0.0
- Define CI/CD pipelines which include running tests
- A new release should ensure easy/automated migration of users and user settings.

## Reasoning

Defining/following a single versioning numbering scheme and a changelog allows users and contributes to see what notable changes have been made between each version of the service. CI/CD pipelines enable automation of the release process.
