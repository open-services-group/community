# Steps to create a new subproject under SIG-Data-Science:


## Step 1:
Make sure you have met all the prerequisites needed for a subproject:


### Prerequisites:
* A Github repo within any organization
* A Github project board within any organization
* Project Owners defined in Repo's [OWNERS file](https://www.kubernetes.dev/docs/guide/owners/)
* Agreement in an earlier SIG-Data-Science meeting that the subproject should move forward as noted in meeting notes.

## Step 2:

Create a feature branch on your fork of `open-services-group/community` and make changes to the following two files:
* [`sig-data-science/README.md`](README.md)
* [`sigs.yaml`](../sigs.yaml)

### `sig-data-science/README.md`

In `sig-data-science/README.md` make an update to the “Details about SIG-Data-Science Subprojects” section with the title and a short description of the subproject.

```markdown
<!-- BEGIN CUSTOM CONTENT -->

# Details about SIG-Data-Science Subprojects

## Example Subproject 1

Description ...

## Example Subproject 2

Description ...

<!-- END CUSTOM CONTENT -->

```

### `sigs.yaml`
In `sigs.yaml` under `sigs` → `dir:sig-data-science` find the `meetings` section and add a weekly recurring meeting for the new subproject

```yaml
meetings:
  - description: Data Science SIG meeting
    day: Wednesday
    time: "10:00"
    tz: ET (East Time)
    frequency: bi-weekly
    url: meet.google.com/ufs-hgvi-oni

 - description: Example Subproject
    day: Day of Week
    time: "Time"
    tz: ET (East Time)
    frequency: weekly
    url: google meet link
```

Under `sigs` → `dir:sig-data-science` find the `subprojects` section and add the new subproject name, description and link to the original repo's OWNERS file.

_NOTE_: The README.md will be auto-generated from this file, so please be sure to add the `description` field as it is seen below, so that it will add the correct link to the description you wrote above in your changes to the README.

```yaml
subprojects:
- name: example-subproject
    description: '[Described below](#example-subproject)'
    owners:
    - https://raw.githubusercontent.com/<subproject-repo>/OWNERS


```

## Step 3:

Push your changes to your GitHub fork and open a PR in the upstream repo https://github.com/open-services-group/community.
