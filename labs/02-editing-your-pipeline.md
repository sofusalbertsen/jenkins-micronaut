
# Editing your pipeline

To generate a step snippet with the Snippet Generator:

    Navigate to the Pipeline Syntax link (referenced above) from a configured Pipeline, or at ${YOUR_JENKINS_URL}/pipeline-syntax.

    Select the desired step in the Sample Step dropdown menu

    Use the dynamically populated area below the Sample Step dropdown to configure the selected step.

    Click Generate Pipeline Script to create a snippet of Pipeline which can be copied and pasted into a Pipeline.



## Replay an old pipeline

Typically a Pipeline will be defined inside of the classic Jenkins web UI, or by committing to a Jenkinsfile in source control. Unfortunately, neither approach is ideal for rapid iteration, or prototyping, of a Pipeline. The "Replay" feature allows for quick modifications and execution of an existing Pipeline without changing the Pipeline configuration or creating a new commit.

### Tasks

To use the "Replay" feature:

* Select a previously completed run in the build history.
* Click "Replay" in the left menu
* Make modifications and click "Run".
* Check the results of changes

Once you are satisfied with the changes, you can use Replay to view them again, copy them back to your Pipeline job or Jenkinsfile, and then commit them using your usual engineering processes

## Building on different machines

### Tasks
Agents
Stash and unstash



* post steps
* credentials
* env variable
* test reports

