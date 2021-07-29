*** Settings ***
Documentation     A test suite with a single Gherkin style test.
...
...               This test is functionally identical to the example in
...               valid_login.robot file.
Resource          resource.robot
Test Teardown     Close Browser

*** Test Cases ***
Valid Login
    Given browser is opened to login page
    When user "demo" logs in with password "mode"
    Then Login Page Should Be Open

Scenario: eating cucumbers
    [Template]  Scenario Outline: eating cucumbers
# Examples:
#    start  eat  left
    12       5    7
    20       5    15
    33       11   22
    35       15   20

*** Keywords ***
Scenario Outline: eating cucumbers
    [Arguments]  ${start}  ${eat}  ${left}
    Given there are ${start} cucumbers
    When I eat ${eat} cucumbers
    Then I should have ${left} cucumbers

*** Keywords ***
Browser is opened to login page
    Open browser to login page

User "${username}" logs in with password "${password}"
    Input username    ${username}
    Input password    ${password}
    Submit credentials

