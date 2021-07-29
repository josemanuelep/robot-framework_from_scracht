*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Suite Setup    Login in Page
Resource    resource.robot

*** Test Cases ***
#Valid Login in Gitlab
    Login in Page
    [Teardown]    Close Browser

Filter repos
 Filter own repositories by    Private


