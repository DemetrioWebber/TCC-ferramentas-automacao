* Settings *
Documentation       Arquivo base do projeto

Library             Browser     timeout=30s


* Variables *
${IMPLICIT_TIMEOUT}       10
${BASE_URL}               http://automationpractice.com/index.php


* Keywords *
Start Application
    New Browser           chromium        false
    New Page              ${BASE_URL}
   #Set Viewport Size       1920    1080