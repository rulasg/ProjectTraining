# Project Demo Scripts

## Install Project Demo Module

```ps
    Install-Module -Name ProjectDemo -AllowPrerelease
```

## Build a demo environment in one shot

Run the following lines to create an environment all in one

```ps
    # Set Environment variables for the demo
    $owner = "orgname"
    $name = "demoname"

    # Create repo and projects
    New-ProjectDemo    -Owner $owner -Name $name
    Open-ProjectDemo   -Owner $owner -Name $name
    Get-ProjectDemo    -Owner $owner -Name $name

    # Add project issues as items to the project
    Add-ItemsToProject -Owner $owner -Name $name

    # Get project number 
    $projectNumber = Get-ProjectNumber -Name $name -Owner $owner
    
    # Update status field with vale. Default is empty
    Update-FieldValueWithSingleSelect -Owner $owner -ProjectNumber $projectNumber -FieldName Status

    # Add custom fields to the project and them values for the existing items    
    Add-CommentFieldToProject -owner $owner -ProjectNumber $projectNumber -Update
    Add-PriorityFieldToProject -owner $owner -ProjectNumber $projectNumber -Update
    Add-SeverityFieldToProject -owner $owner -ProjectNumber $projectNumber -Update
    Add-TimeTrackerFieldToProject -owner $owner -ProjectNumber $projectNumber -Update
    Add-StoryPointsFieldToProject -owner $owner -ProjectNumber $projectNumber -Update

```

## Steps to build the ProjectDemo environment

Set Owner and Name for the demo environment

```ps
$owner = "orgname"
$name = "demoname"
```

### Create the project and the repos

```ps
> New-ProjectDemo -Owner $owner -Name $name
..
https://github.com/orgs/orgname/projects/161
https://github.com/orgname/demoname-repo-front
https://github.com/orgname/demoname-repo-back
...........
...........
.
......
.
......
.

```

### Open on browser the two repos and the project
Open-ProjectDemo

```ps
> Open-ProjectDemo -Owner $owner -Name $name
```

### Add the issues on repos to project

```ps
> Add-ItemsToProject -Owner $owner -Name $name
.....
.....
```

### Figure out the project number. Used for later commands

```ps
> $pn = Get-ProjectNumber -Owner $owner -Name $name
> $pn
161
```

## Update Status on the project

Fill with a random value a custom field of all items added to the project
The following command will update the `Status` field for all items in the project 

```ps
> Update-FieldValueWithSingleSelect -ProjectNumber $pn -FieldName Status
.....................
```

## Add custom fields to the project

The following commands will create custom fields `Priority`, `Severity`, `TimeTracker` and `StoryPoints` to the project



```ps
> Add-FieldSingleSelectToProject -ProjectNumber $pn -FieldName "Priority" -Options "🔥Critical,🥵High,😊Normal,🥶Low"
Add Priority to project 161

> Add-FieldSingleSelectToProject -ProjectNumber $pn -FieldName "Severity" -Options "Critical⭐️⭐️⭐️⭐️,Important⭐️⭐️⭐️,Needed⭐️⭐️,Nice⭐️" 
Add Severity to project 161

> Add-FieldNumber $pn "TimeTracker"
Add TimeTracker to project 161

> Add-FieldNumber $pn "StoryPoints"
Add StoryPoints to project 161

```


## Update the values of priority, severity and StoryPoints

```ps
> Update-FieldValueWithSingleSelect -ProjectNumber $pn -FieldName Priority
.....................

> Update-FieldValueWithSingleSelect -ProjectNumber $pn -FieldName Severity
.....................

> Update-FieldValueWithNumber -ProjectNumber $pn -FieldName TimeTracker -min 15 -max 300
.....................

> Update-FieldValueWithNumberFibonacci $pn "StoryPoints"
.....................

```

## Open the project on the browser

```ps 
Find-ProjectDemo -Owner $owner -Name $name
```

## Remove the project and the repos

```ps
Remove-ProjectDemo -Owner $owner -Name $name
```
