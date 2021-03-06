@ST_26494
Feature: bdd

@SC_107046
Scenario: Check editable fields for DO user on page 'Project settings'
Given I am logged in Relime as DO user
When I navigate to page 'Project settings'
Then I see editable field 'Name'
And I see editable field 'Description'
And I see editable field 'Project type'
And I see editable field 'GIT account'
And I see editable field 'Jira path'
And I see editable field 'Jira account'
And I see editable field 'Save mode'

@SC_107047
Scenario: Check not editable fields for DO user on page 'Project settings'
Given I am logged in Relime as DO user
When I navigate to page 'Project settings'
Then I see not editable field 'Key'
And I see not editable field 'GIT path'

@SC_107048
Scenario: Check editable fields for PM user on page 'Project settings'
Given I am logged in Relime as PM user
When I navigate to page 'Project settings'
Then I see editable field 'Description'
And I see editable field 'GIT account'
And I see editable field 'Jira path'
And I see editable field 'Jira account'
And I see editable field 'Save mode'

@SC_107049
Scenario: Check not editable fields for PM user on page 'Project settings'
Given I am logged in Relime as PM user
When I navigate to page 'Project settings'
Then I see not editable field 'Name'
And I see not editable field 'Key'
And I see not editable field 'Project type'
And I see not editable field 'GIT path'

@SC_107050
Scenario: Check editable fields for TM user on page 'Project settings'
Given I am logged in Relime as TM user
When I navigate to page 'Project settings'
Then I see editable field 'GIT account'
And I see editable field 'Jira account'

@SC_107051
Scenario: Check not editable fields for TM user on page 'Project settings'
Given I am logged in Relime as TM user
When I navigate to page 'Project settings'
Then I see not editable field 'Name'
And I see not editable field 'Key'
And I see not editable field 'Description'
And I see not editable field 'Project type'
And I see not editable field 'GIT path'
And I see not editable field 'Jira path'
And I see not editable field 'Save mode'

@SC_107052
Scenario: Check that all fields are not editable for not subscribed user in public project on page 'Project settings'
Given I am logged in Relime as TM user
When I navigate to public project as not subscribed user
Then I see that all fields are not editable