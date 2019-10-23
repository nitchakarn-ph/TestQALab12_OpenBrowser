*** Setting ***
Library    SeleniumLibrary

*** Variables ***
${SEVERR}    localhost:7272
${BROWSER}    Chrome
${TRIANGLE URL}    http://www.google.co.th 
${DELAY}    0.1

*** Test Cases ***
1. Open BROWSER
    OPEN BROWSER    ${TRIANGLE URL}    ${BROWSER}
	Set Selenium Speed    ${DELAY}
	Capture Page Screenshot
	
2. InputURL
	OPEN BROWSER    ${TRIANGLE URL}    ${BROWSER}
	Input Text    q    www.cs.kku.ac.th
	Click Button    btnK
	Page Should Contain    CS KKU 
	Close Browser
	