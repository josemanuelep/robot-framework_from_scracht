# Firts steps in Robot Framework


## Util commands
- Inlcude Tags : `-e exmapleTag`
- Particular test case : `-t testCase`
- Test Suite (or folder with tests cases) : `-s Folder`

### Save reports


`robot -r ./Report/report.html -o ./Report/output.xml -l ./Report/logs.html`

### Usefull Links

1. https://robocorp.com/docs/languages-and-frameworks/robot-framework/for-loops
2. https://medium.com/@lokeshsharma596/robot-framework-01-enviorment-setup-in-linux-and-running-test-scripts-e8a2063ed4d8
3. https://migueldoctor.medium.com/run-mysql-phpmyadmin-locally-in-3-steps-using-docker-74eb735fa1fc

### Commands to instance local enviroment to execute tests

`source /home/jomanuepa/robot/bin/activate`

### Execute with no logs and reports

`robot --report NONE --log NONE --output NONE`

### Execute with docker

`docker run --rm -v $(pwd):/workspace -w /workspace robotvozybase:latest python3 -m robot --outputdir ./Report .`

`docker run --rm -v $(pwd):/workspace -w /workspace vozy:latest python3 -m robot .`

### Local chorme driver instance for robot .

Open Chrome Browser
    ${disabled}    Create List    Chrome PDF Viewer
    ${prefs}    Create Dictionary    download.default_directory=${OUTPUT DIR}     plugins.plugins_disabled=${disabled}
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome options}    add_experimental_option    prefs    ${prefs}
    Create Webdriver    driver_name=Chrome    alias=google    chrome_options=${chrome_options}   
    Go To    ${URL}
    Maximize Browser Window
    
    Set Selenium Speed          ${selenium_speed}
    
    Set Selenium Implicit Wait  ${selenium_wait}
    
    Set Selenium Timeout	    ${selenium_wait}
    
    
### Chormedriver path windows default

**C:\Users\palac\AppData\Local\Programs\Python\Python39**

