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

@SC_58565
Scenario Outline: saving scenario data to TTS with Direct mode
Given I'm logged in as <user>
And Direct mode is selected
And I'm on page Editor
When I created new scenario
And I clicked on button 'Save'
Then I see scenario in Jira
When I added steps to scenario
And I clicked on button 'Save'
Then I see changed scenario in Jira
When I added tags to scenario
And I click on button 'Save'
Then I see changes is Jira
When I added description
And I clicked on button 'Save'
Then I see changes in Jira
When I added example table to scenario
And I clicked on button 'Save'
Then I see changes in Jira

Examples: 
|user|
|DO|
|PM|

@SC_58566
Scenario Outline: Requiring Confirmation mode
Given I'm logged in as <user>
And I selected Requiring Confirmation mode
And I'm on page Editor
When I performed changes is Relime
Then I can't find changes in GIT
And I can't find changes in Jira
When I navigate to page Feature Management
And I click on button 'Export data from Relime to GIT'
Then I see changes in GIT
When I click on button 'Export data from Relime to Jira'
Then I see changes in

Examples: 
|user|
|DO|
|PM|

@SC_58567
Scenario: Requiring Confirmation save mode for TM user
Given I'm logged in as TM
And I see Requiring Confirmation mode is selected
And I'm on Editor page
When I changed feature
And I clicked on confirmation button
Then I don't see updates in GIT
And I don't see updates in Jira
And I see tab Feature Management is unavailable
When I changed scenario
And I clicked on button 'Save'
Then I don't see updates in GIT
And I don't see updates in Jira
And I see tab Feature Management is unavailable