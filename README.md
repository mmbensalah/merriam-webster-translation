# README

## Merriam Webster API
As I enjoy language and translation, I decided to use the Merriam Webster bidirectional English/Spanish Translation API. The JSON data that is returned after inputting a word in English or Spanish for translation is abundant. For example, inputting the source word "bear" into the API yields nearly 1,950 lines of JSON data in response. For a user who simply wants to see possible translations for their input word, I have created a SourceWordFacade, which is initialized with the word you would like to translate, i.e. 

+ `SourceWordFacade.new("owl")` 
+ `SourceWordFacade.new("owl").translations` - Then you can call the "translations" method to return a list of translations picked out of the API data

The MerriamWebsterService file makes the request to the Merriam Webster API using the Faraday gem. The SourceWordFacade calls the MerriamWebsterService file and then creates a SourceWord object with the relevant data returned from the MerriamWebsterService.


## Set Up
Download the RoR project. Enter into the project's directory. 
+ Run `bundle` from the CLI. 
+ Run `rails c` to enter the rails console. 
+ Run `SourceWordFacade.new("owl").translations` - The output in the console will be a SourceWord object. The Spanish translations for the English word "owl" are stored as the SourceWord object's "translation" attribute.
+ Run `MerriamWebsterService.get_translation("owl")` to see original JSON data output from Merriam Webster Translation API.

## Gems
+ Faraday - to process the request
+ Figaro  - creates an application.yml in which to secretly store the API key
+ RSpec - create basic tests to ensure all portions functioning
