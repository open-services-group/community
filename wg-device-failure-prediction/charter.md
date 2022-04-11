# Device Failure Prediction

## Scope

A collaborative space for interested parties to contribute
to a generalized disk drive failure prediction model based on
device statistics collected from running drives, and methodologies
for collecting and massaging more data to aid in model training

### In scope

* Discuss past and current modeling efforts
* Gather and define requirements and constraints from user stories
* Data collection efforts and drawbacks in available data
* APIs for integration with storage systems
* Output mechanism/format for ease of integration into monitoring systems
* Prototyping new models/collection utilities

Design issues:

* Nature, availability, and suitability of training data
* Modeling methodology
* Coping with missing labels in collected data
* Nonuniformity of API/output requirements for external consumers

### Out of Scope

* Creating a production software product

## Deliverables

The artifacts the group is supposed to deliver include:

* A plan for future work in modeling device behavior
* At least one working failure prediction model
* Recommendations on usage of T13 [SMART] and Seagate [FARM] data in modeling, and potential future modifications to drive vendor telemetry standards
* proposal for a productization roadmap (if predictive modeling turns out to be sufficiently useful)

[SMART]:http://t1.daumcdn.net/brunch/service/user/axm/file/zRYOdwPu3OMoKYmBOby1fEEQEbU.pdf
[FARM]:https://github.com/Seagate/openSeaChest_LogParser/blob/develop/docs/FARM_Specification.pdf

## Stakeholders

* Dan Mick (Ceph Storage)
* Yaarit Hatuka (Emerging Technologies)
* Yehuda Sadeh-Weinraub (Ceph Storage)
* Erik Erlandson (Open Services Group)
* Michael Clifford (Open Services Group)
* Michael Renella (Seagate)

## Disband criteria

When the WG decide all features described in the `In Scope` section are complete and no more discussions and investigations are needed in this WG, they may decide to disband this WG.
