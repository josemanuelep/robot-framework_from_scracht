*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library    Selenium2Library

*** Variables ***
${BROWSER}        Chrome
${DELAY}          0.5
${VALID USER}     demo
${VALID PASSWORD}    mode
${LOGIN URL}      https://github.com/login

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    title should be    Sign in to GitHub · GitHub

Input Username
    [Arguments]    ${username}
    Input Text    id=login_field    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    id=password    ${password}

Submit Credentials
    Click Button    name=commit

Login in Page
    Input Username    josemanuelep
    Input Password    3103331899jose
    Submit Credentials

Open View Profile and More Toggle Menu
    Click Element    xpath=//summary[contains(@aria-label, 'View profile and more')]
    set browser implicit wait    5
    wait until element is visible    xpath=//a[contains(text(),'Your repositories')]
    Click Element    xpath=//a[contains(text(),'Your repositories')]
    title should be    Your Repositories

Filter by
    [Arguments]    ${filter}
    wait until element is visible  xpath=//details[@id='type-options']
    click element  xpath=//details[@id='type-options']
    set selenium implicit wait    5s
    wait until element is visible    //span[contains(@class, 'text-normal') and text() = '${filter}']
    click element    //span[contains(@class, 'text-normal') and text() = '${filter}']

Filter own repositories by 
    [Arguments]    ${filter}
    Open View Profile and More Toggle Menu
    Filter by  ${filter}

