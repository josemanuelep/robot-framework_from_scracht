*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Test Setup     Open Browser To Login Page
Test Teardown  Close Browser
Resource  resource.robot

*** Test Cases ***
# Filter repos 
#     [Template]  Filter Own Repositories By ${filter}
#     Private    
#     Public     
  

Filter repos
    Login in Page
    Filter own repositories by  Private

     
