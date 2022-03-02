# Steps to create a new subproject under SIG-Data-Science

1. Follow [`subproject-lifecycle.md`](../subproject-lifecycle.md), without submitting the PR. Our SIG requires further adjustments
2. In `sig-data-science/README.md` make an update to the “Details about SIG-Data-Science Subprojects” section with the title and a short description of the subproject.

   ```markdown
   <!-- BEGIN CUSTOM CONTENT -->

   # Details about SIG-Data-Science Subprojects

   ## Example Subproject 1

   Description ...

   ## Example Subproject 2

   Description ...

   <!-- END CUSTOM CONTENT -->
   ```

3. Change your subproject description in [`sig.yaml`](../sigs.yaml) so it links to the description added in the step 2:

   ```yaml
   subprojects:
     - name: example-subproject
       description: '[Described below](#example-subproject)'
       owners:
         - https://raw.githubusercontent.com/<subproject-repo>/OWNERS
   ```

4. Commit your changes and open as a PR
