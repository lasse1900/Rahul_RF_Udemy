*** Settings ***
Library        SeleniumLibrary

*** Variables ***


*** Test Cases ***


Basic Test Case
    log     Basic Test case
    open browser    https://gmail.com    chrome
    set selenium implicit wait    10 seconds
    log title
    input text    id:identifierId       trainer@way2automation.com
    click element    //*[@id="identifierNext"]/div/button/span
   # sleep     3
    wait until element is visible    //*[@id="password"]/div[1]/div/div[1]/input
    input text      //*[@id="password"]/div[1]/div/div[1]/input     asldkfsdfs
    # wait until keyword succeeds    5x    2s    click element    //*[@id="passwordNext"]/div/button/span
    wait until element is visible    //*[@id="passwordNext"]/div/button/span
 
    # ${text}=    get text    //*[@id="view_container"]/div/div/div[2]/div/div[1]/div/form/span/section/div/div/div[1]/div[2]/div[2]/span
    close browser