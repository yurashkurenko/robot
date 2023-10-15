*** Settings ***
Documentation     Insert the sales data for the week and export it as a PDF.
Library           SeleniumLibrary
#${BROWSER}        Chrome

*** Variables ***
${LOGIN URL}      http://localhost:7272
${BROWSER}        Chrome

*** Tasks ***
Insert the sales data for the week and export it as a PDF
    Open the intranet website

*** Keywords ***
Open the intranet website
#    Open Browser	http://yandex.ru     
    Open Browser    file:///C:/bot/st2/ex2/seleniumlibrary.html      ${BROWSER} 
    Set Window Size     100     100
#     Wait           5
#    Close Browser
