@ST_13977
Feature: Saving mode

@SC_58559
Scenario Outline: Direct mode for TTS
Given I’m logged in as <user>
And Direct mode is selected
And I'm on page Editor
But I can't see tab 'Feature Management' on left panel
When I added new feature
Then I see it in Jira
When I renamed feature
And I clicked on confirmation button
Then I see changes in Jira
When I changed tags in feature
And I clicked on confirmation button
Then I see changes in Jira
When I changed feature description
And I clicked on confirmation button
Then I see changes in Jira
#comment

Examples: 
|user|
|DO|
|PM|
|TM|

@SC_58560
Scenario Outline: Saving mode item on Project Settings page
Given I'm logged in as <user>
When I'm on page Project Settings
Then I see item 'Saving mode' under all items
And mode 'Direct' is selected by default

Examples: 
|user|
|DO|
|PM|
|TM|

@SC_58561
Scenario Outline: Control to choose saving mode
Given I'm logged in as <user>
And I'm on page Project Settings
When I click on Saving mode control
Then I see <action>

Examples: 
|user|action|
|DO|dropdown is expanded|
|PM|dropdown is expanded|
|TM|control is unclickable|

@SC_58562
Scenario Outline: Saving mode tooltips
Given I’m logged as <user>
And I’m on page Project Settings
When I expanded Saving mode dropdown
And hover Direct mode
Then I see tooltip "Feature and scenario changes are sent to VCS and TTS at once"
When I hover Requiring Confirmation mode
Then I see tooltip "Feature and scenario changes made by user would be saved to Relime DB only. The changes should be approved and sent to VCS and TTS by PM only"

Examples: 
|user|
|DO|
|PM|

@SC_58563
Scenario Outline: Direct mode for VCS
Given I’m logged in as <user>
And I selected Direct mode
And I’m on page Editor
But I can't see tab 'Feature Management' on left panel
When I added new folder
Then I see it in GIT
When I renamed folder
And I clicked on confirmation button
Then I see changes in GIT
When I added new feature in the folder
Then I see it in GIT
When I renamed feature
And I clicked on confirmation button
Then I see changes in GIT
When I changed tags in feature
And I clicked on confirmation button
Then I see changes in GIT
When I changed feature description
And I clicked on confirmation button
Then I see changes in GIT
When I moved created feature from folder
Then I see changes in GIT
When I deleted feature
Then I see it was deleted from GIT

Examples: 
|user|
|DO|
|PM|
|TM|

@SC_58564
Scenario Outline: Saving scenario data to VCS with Direct mode
Given I'm logged in as <user>
And Direct mode is selected
And I'm on page Editor
When I created new scenario
And I clicked on button 'Save'
Then I see scenario in GIT
When I added steps to scenario
And I clicked on button 'Save'
Then I see changed scenario in GIT
When I added tags to scenario
And I click on button 'Save'
Then I see changes is GIT
When I added description
And I clicked on button 'Save'
Then I see changes in GIT
When I added example table to scenario
And I clicked on button 'Save'
Then I see changes in GIT

Examples: 
|user|
|DO|
|PM|
|TM|