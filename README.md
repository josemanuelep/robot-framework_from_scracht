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

### Execute with docker

docker run --rm -v $(pwd):/workspace -w /workspace robotvozybase:latest python3 -m robot --outputdir ./Report .

