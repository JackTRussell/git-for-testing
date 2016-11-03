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