# Script to run during the session

```ps
# Create the 2 repos and project
New-ProjectDemo

#Open on browser the two repos and the project
Open-ProjectDemo

# Add the issues on repos to project
Add-ItemsToProject

# firgure out the porject number. Used for later commands.
$pn = Get-ProjectNumber 

# Update Status on the project
Update-FieldValueWithSingleSelect -ProjectNumber $pn -FieldName Status

# Add Priority, Severtity and StoryPoints to the project
Add-FieldSingleSelectToProject -ProjectNumber $pn -FieldName "Priority" -Options "🔥Critical,🥵High,😊Normal,🥶Low"
Add-FieldSingleSelectToProject -ProjectNumber $pn -FieldName "Severity" -Options "Critical⭐️⭐️⭐️⭐️,Important⭐️⭐️⭐️,Needed⭐️⭐️,Nice⭐️" 
Add-TimeTrackerFieldToProject -ProjectNumber $pn
Add-FieldNumber $pn "TimeTracker"

# Update the values of priority, severity and StoryPoints
Update-FieldValueWithNumberFibonacci $pn "StoryPoints"

Find-ProjectDemo 
Remove-ProjectDemo 

```