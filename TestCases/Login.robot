*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.

Resource    resource.robot

*** Test Cases ***
Valid Login in Gitlab
    Open Browser To Login Page
    Input Username    josemanuelep
    Input Password    3103331899jose
    Submit Credentials
    [Teardown]    Close Browser


