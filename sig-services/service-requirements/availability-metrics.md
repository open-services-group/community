---
title: Availability metrics

persona: Service-owner, Service-consumer

phase: Service-development, Service-consumption
---

Availability metrics indicate whether the service or some component of the service is active for use or not. The service owner and the service consumer should have easy access to these metrics if they want to check the status of the service. These metrics could also describe the probability that your service will perform as expected in the future. The metrics defined for availability should help in compliance to the Service Level Agreements and reduce downtime by a faster root cause analysis. 

## Requirements

* Identify the critical components involved in running the service
* For each component, define what availability means i.e availability could be measured as the percentage of time your component is available
* Create an environment where these metrics can be consumed by the stakeholders

## Example Metrics

Based on your business goals, make sure to choose an appropriate availability target that best suits your needs. Some example of metrics that indicate availability are:

* **Service Uptime** - This metric tells you how long your system was available. You can calculate this as time duration or percentage. This metric can be used to tell your customers how well you provide a service.
* **Downtime duration** - This metric gives you the time for which the service is down. This metric can help you understand the efficiency of your incident response management
* **Downtime frequency** - This metric tells you how often the service is down. 
* **Number of successful requests** -  This metric indicates the number of successful user requests made to the service 
