# mstest
behat based testing for the complete idiot

## Install and run
- git clone https://github.com/ctrees/mstest.git
- cd mstest
- curl -sS https://getcomposer.org/installer | php
- php composer.phar install
- Start Selenium server (if ones not running in a new terminal)
    - ./bin/selenium-server-standalone
	- should see: RemoteWebDriver instances should connect to: http://127.0.0.1:4444/wd/hub
    - should see: INFO - Selenium Server is up and running
- Run the test
    - bin/behat
- Should open Chrome browser and test wikipedia.org

## From Scratch
- Create this repo https://github.com/ctrees/mstest
- git clone https://github.com/ctrees/mstest.git
- cd mstest
- From http://behat.readthedocs.org/en/v2.5/quick_intro.html method #1
    - vi composer.json
	- curl -sS https://getcomposer.org/installer | php
	- php composer.phar install --prefer-source
	- bin/behat --init
	- bin/behat (to run... should get No scenarios / No steps)
- From http://mink.behat.org/en/latest/
    - mod composer.json with snipits from https://github.com/Behat/MinkExtension/blob/master/composer.json
	- php composer.phar update
- From https://packagist.org/packages/se/selenium-server-standalone
    - mod composer.json to add "se/selenium-server-standalone": ">=2.45.0"
	- php composer.phar update
- From https://github.com/Behat/MinkExtension-example
    - add feature test
	- have not gotten this to work yet I've got directory issues I think