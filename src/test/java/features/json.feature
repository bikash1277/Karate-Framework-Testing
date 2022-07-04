Feature: json feature 

Scenario: json parsing
 
* def jsonObject = 
"""
[
{
	"name" : "Bikash",
	"city" : "Wroclaw",
	"Age" : 28
}, 
{
	"name" : "Shaun",
	"city" : "krakow",
	"Age" : 30
}
]
"""

* print jsonObject
* print jsonObject[1]
* print jsonObject[1].name + jsonObject[1].Age


Scenario: json parsing complex
 
* def jsonObject = 
"""
{"menu": {
  "id": "file",
  "value": "File",
  "popup": {
    "menuitem": [
      {"value": "New", "onclick": "CreateNewDoc()"},
      {"value": "Open", "onclick": "OpenDoc()"},
      {"value": "Close", "onclick": "CloseDoc()"}
    ]
  }
}}
"""

* print jsonObject
* print jsonObject.menu
* print jsonObject.menu.id
* print jsonObject.menu.popup
* print jsonObject.menu.popup.menuitem
* print jsonObject.menu.popup.menuitem[0].value
* print jsonObject.menu.popup.menuitem[0].onclick

