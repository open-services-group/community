# Lifecycle of a subprojects

## Prerequisites

We recognize 2 options how a subproject can be created in OSG. Either this is a preexisting workstream that members want to transfer under SIG governance or it is a brand new workstream which a member thinks that it should be governed by a SIG in OSG.

### Create a new subproject

1. Establish a relation with a SIG that takes patronage over your subproject idea. This SIG will become subproject's owner.
   - Either get a verbal agreement on a SIG meeting, documented in SIG meeting notes
   - Or file an issue in open-services-group/community with subproject details and get a SIG lead approval on the issue
2. Define and declare scope of the subproject and end goal

### Import a workstream to this organization as a subproject

1. Establish a relation with a SIG that takes patronage over your subproject idea. This SIG will become subproject's owner.
   - Either get a verbal agreement on a SIG meeting, documented in SIG meeting notes
   - Or file an issue in open-services-group/community with subproject details and get a SIG lead approval on the issue
2. Communicate the transfer to all the current owners of the workstreams
3. There must be existing GitHub repository for the workstream
4. Declare project owners in [OWNERS file](adr/0000-use-OWNERS-rather-than-github-teams.md)

## Process

### Add a new subproject

1. Fork `open-services-group/community`
2. Checkout a feature branch named after your project
3. Update [`sigs.yaml`](./sigs.yaml) file with following:
    1. Locate the SIG entry in `sigs` top level key, it has a property `dir: sig-<NAME>`.
    2. If your subproject has regular meetings, update the `.meetings` section with:

       ```yaml
       meetings:
         - description: "Description containing the subproject name"
           day: "[Monday,Tuesday,...]"
           time: "HH:MM"
           tz: "[UTC|ET (East Time)|CET (Central Europe Time)|...]"
           frequency: "[weekly|bi-weekly]"
           url: https://meet.google.com/...
       ```

    3. Add your subproject to the `.subprojects` section:

       ```yaml
       subprojects:
         - name: <NAME>
           owners:
             - https://raw.githubusercontent.com/<ORG>/<REPO>/main/OWNERS  # Do not panic if the repository doesn't exist yet
       ```

4. Update [`github-config.yaml`](./github-config.yaml) file:
    1. If you are creating a brand new subproject, please initialize a new repository as:

       ```yaml
       orgs:
         open-services-group:
           repos:
             <REPOSITORY_NAME>:
               description: Describe the subproject in one sentence.
               has_projects: false
               has_wiki: false
               ...
       ```

    2. Newly created repositories needs to grant `admin` role to `SrcOps` team. Add a new line to `.teams.SourceOps.repos`:

       ```yaml
       orgs:
         open-services-group:
           teams:
             SourceOps:
               ...
               repos:
                 <REPOSITORY_NAME>: admin
       ```

    3. Optionally you can create new GitHub team to maintain this repository:

       ```yaml
       orgs:
         open-services-group:
           teams:
             sp-<NAME>-maintainers:
               description: Maintainers Team for the <NAME> sub-project
               maintainers:
                 - list of GitHub handles
               members:
               privacy: closed
               repos:
                 <REPOSITORY_NAME>: admin
       ```

5. Run the generators via `podman run --rm --volume $(pwd):/workdir:Z quay.io/open-services-group/community-tooling:v0.1.0-dev` command
6. If a SIG has specific requirements for a subproject be sure to check their `sig-<NAME>/subproject-lifecycle.md` and respect the requirements
7. Commit your changes and open as a PR
8. Ensure the `https://github.com/<ORG>/<REPO>/main/OWNERS` file is populated in your subproject repository. If you are creating a new repository, it should be created by automation for you as of now.

### Retire existing subproject

1. Update your subproject repository `README.md` with an archival notice stating the repository is not maintained anymore.
2. Fork `open-services-group/community`
3. Checkout a feature branch named after your project
4. Update [`sigs.yaml`](./sigs.yaml) file and cleanup following sections:
    1. Locate the SIG entry in `sigs` top level key, it has a property `dir: sig-<NAME>`.
    2. If your subproject had regular meetings, delete it from the `.meetings` section.
    3. Remove your subproject from the `.subprojects` section.
5. Update [`github-config.yaml`](./github-config.yaml) file:
    1. Locate your repository and mark it as archived:

       ```yaml
       orgs:
         open-services-group:
           repos:
             <REPOSITORY_NAME>:
               archived: true
       ```

6. Run the generators via `podman run --rm --volume $(pwd):/workdir:Z quay.io/open-services-group/community-tooling:v0.1.0-dev` command
7. If a SIG has specific requirements for a subproject be sure to check their `sig-<NAME>/subproject-lifecycle.md` and respect the requirements
8. Commit your changes and open as a PR
