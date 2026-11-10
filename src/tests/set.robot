*** Settings ***
Resource  resource.robot
Suite Setup  Run Keywords  Open And Configure Browser  AND  Reset Counter
Suite Teardown  Close Browser

*** Test Cases ***
When counter is set to a value the value is shown
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  10
    Click  button >> text=aseta
    Get Text  body  *=  nappia painettu 10 kertaa

When counter is set and button pressed the counter continues from the set value
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  10
    Click  button >> text=aseta
    Click  button >> text=Paina
    Get Text  body  *=  nappia painettu 11 kertaa
