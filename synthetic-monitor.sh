#!/bin/bash

PAYLOAD=$(cat <<EOF
{
  "frequencyMin": 5,
  "anomalyDetection": {
    "outageHandling": {
      "globalOutage": true,
      "localOutage": true,
      "localOutagePolicy": {
        "affectedLocations": 1,
        "consecutiveRuns": 3
      }
    },
    "loadingTimeThresholds": {
      "enabled": true,
      "thresholds": [
        {
          "type": "TOTAL",
          "valueMs": 100,
          "requestIndex": 1
        }
      ]
    }
  },
  "type": "BROWSER",
  "name": "$1: $2",
  "locations": [
    "GEOLOCATION-9999453BE4BDB3CD"
  ],
  "enabled": true,
  "script": {
    "type": "clickpath",
    "version": "1.0",
    "events": [{
        "type": "navigate",
        "wait": {
            "waitFor": "page_complete"
        },
        "description": "Loading of \"http://${PUBLIC_IP}:$3\"",
        "url": "http://${PUBLIC_IP}:$3"
    }, {
        "type": "click",
        "wait": {
            "waitFor": "page_complete"
        },
        "target": {
            "locators": [{
                "type": "css",
                "value": "a:contains(\"Login\")"
            }, {
                "type": "css",
                "value": ".btn:eq(0)"
            }, {
                "type": "css",
                "value": "html body:nth-child(14) div:nth-child(2) div p:nth-child(5) a"
            }, {
                "type": "css",
                "value": "body div.container-fluid div.jumbotron p.lead a.btn:eq(0)"
            }]
        },
        "button": 0,
        "description": "click on \"Login\""
    }, {
        "type": "click",
        "target": {
            "locators": [{
                "type": "css",
                "value": "#id_username"
            }, {
                "type": "css",
                "value": "input[type=\"text\"][name=\"email\"]"
            }, {
                "type": "dom",
                "value": "document.forms[0][\"email\"]"
            }, {
                "type": "css",
                "value": "html body:nth-child(2) div:nth-child(2) div div form div:nth-child(2) div:nth-child(2) div input:nth-child(2)"
            }, {
                "type": "css",
                "value": "#id_username"
            }]
        },
        "button": 0,
        "description": "click on \"id_username\""
    }, {
        "type": "click",
        "wait": {
            "waitFor": "network"
        },
        "target": {
            "locators": [{
                "type": "css",
                "value": "#id_username"
            }, {
                "type": "css",
                "value": "input[type=\"text\"][name=\"email\"]"
            }, {
                "type": "dom",
                "value": "document.forms[0][\"email\"]"
            }, {
                "type": "css",
                "value": "html body:nth-child(2) div:nth-child(2) div div form div:nth-child(2) div:nth-child(2) div input:nth-child(2)"
            }, {
                "type": "css",
                "value": "#id_username"
            }]
        },
        "button": 0,
        "description": "click on \"id_username\""
    }, {
        "type": "keystrokes",
        "target": {
            "locators": [{
                "type": "css",
                "value": "#id_username"
            }, {
                "type": "css",
                "value": "input[type=\"text\"][name=\"email\"]"
            }, {
                "type": "dom",
                "value": "document.forms[0][\"email\"]"
            }, {
                "type": "css",
                "value": "html body:nth-child(2) div:nth-child(2) div div form div:nth-child(2) div:nth-child(2) div input:nth-child(2)"
            }, {
                "type": "css",
                "value": "#id_username"
            }]
        },
        "masked": false,
        "simulateBlurEvent": true,
        "description": "keystrokes on \"id_username\"",
        "textValue": "guestuser2@mybank.com"
    }, {
        "type": "click",
        "target": {
            "locators": [{
                "type": "css",
                "value": "#password"
            }, {
                "type": "css",
                "value": "input[type=\"password\"][name=\"password\"]"
            }, {
                "type": "dom",
                "value": "document.forms[0][1]"
            }, {
                "type": "css",
                "value": ".form-control"
            }, {
                "type": "css",
                "value": "html body:nth-child(2) div:nth-child(2) div div:nth-child(2) div:nth-child(2) div input:nth-child(2)"
             },{ "type": "css",
                "value": "#password"
            }]
        },
        "button": 0,
        "description": "click on \"Password:\""
    }, {
        "type": "keystrokes",
        "wait": {
            "waitFor": "page_complete"
        },
        "target": {
            "locators": [{
                "type": "css",
                "value": "#password"
            }, {
                "type": "css",
                "value": "input[type=\"password\"][name=\"password\"]"
            }, {
                "type": "dom",
                "value": "document.forms[0][1]"
            }, {
                "type": "css",
                "value": ".form-control"
            }, {
                "type": "css",
                "value": "html body:nth-child(2) div:nth-child(2) div div:nth-child(2) div:nth-child(2) div input:nth-child(2)"
            }, {
                "type": "css",
                "value": "#password"
            }]
        },
        "masked": true,
        "simulateBlurEvent": true,
        "description": "keystrokes on \"Password:\"",
        "textValue": "U2FsdGVkX1/KNJCXNysyI+sbR1r4thwKVatQuK+m/Yc="
    }, {
        "type": "click",
        "wait": {
            "waitFor": "page_complete"
        },
        "target": {
            "locators": [{
                "type": "css",
                "value": "a:contains(\"Pay Bills\")"
            }, {
                "type": "css",
                "value": "div:contains(\"Funds Transfer\"):eq(6)"
            }, {
                "type": "css",
                "value": ".btn:eq(1)"
            }, {
                "type": "css",
                "value": "html body:nth-child(8) div:nth-child(3) div div div div:nth-child(2) div:nth-child(3) div a"
            }, {
                "type": "css",
                "value": "body div.container-fluid div.jumbotron div.container div.row div.col-md-12 div.wrapper div.centered a.btn:eq(0)"
            }]
        },
        "button": 0,
        "description": "click on \"Pay Bills\""
    }, {
        "type": "click",
        "wait": {
            "waitFor": "page_complete"
        },
        "target": {
            "locators": [{
                "type": "css",
                "value": "a:contains(\"Go Back\")"
            }, {
                "type": "css",
                "value": "div:contains(\"WITHDRAW\"):eq(4)"
            }, {
                "type": "css",
                "value": ".btn:eq(2)"
            }, {
                "type": "css",
                "value": "html body:nth-child(8) div:nth-child(3) form div div div:nth-child(3) div:nth-child(2) a:nth-child(2)"
            }, {
                "type": "css",
                "value": "body div.container-fluid form div.jumbotron div.container div.row div.col-md-6 a.btn"
            }]
        },
        "button": 0,
        "description": "click on \"Go Back\""
    }, {
        "type": "click",
        "wait": {
            "waitFor": "page_complete"
        },
        "target": {
            "locators": [{
                "type": "css",
                "value": "a:contains(\"Funds Transfer\")"
            }, {
                "type": "css",
                "value": "div:contains(\"Funds Transfer\"):eq(6)"
            }, {
                "type": "css",
                "value": ".btn:eq(2)"
            }, {
                "type": "css",
                "value": "html body:nth-child(8) div:nth-child(3) div div div div:nth-child(2) div:nth-child(3) div a:nth-child(3)"
            }, {
                "type": "css",
                "value": "body div.container-fluid div.jumbotron div.container div.row div.col-md-12 div.wrapper div.centered a.btn:eq(1)"
            }]
        },
        "button": 0,
        "description": "click on \"Funds Transfer\""
    }, {
        "type": "click",
        "wait": {
            "waitFor": "page_complete"
        },
        "target": {
            "locators": [{
                "type": "css",
                "value": "a:contains(\"Go Back\")"
            }, {
                "type": "css",
                "value": "div:contains(\"Go Back\"):eq(4)"
            }, {
                "type": "css",
                "value": ".btn:eq(2)"
            }, {
                "type": "css",
                "value": "html body:nth-child(8) div:nth-child(3) form div div div:nth-child(3) div:nth-child(2) a:nth-child(2)"
            }, {
                "type": "css",
                "value": "body div.container-fluid form div.jumbotron div.container div.row div.col-md-6 a.btn"
            }]
        },
        "button": 0,
        "description": "click on \"Go Back\""
    }, {
        "type": "click",
        "wait": {
            "waitFor": "page_complete"
        },
        "target": {
            "locators": [{
                "type": "css",
                "value": "a:contains(\"Credit Card\")"
            }, {
                "type": "css",
                "value": "div:contains(\"Funds Transfer\"):eq(6)"
            }, {
                "type": "css",
                "value": ".btn:eq(3)"
            }, {
                "type": "css",
                "value": "html body:nth-child(8) div:nth-child(3) div div div div:nth-child(2) div:nth-child(3) div a:nth-child(5)"
            }, {
                "type": "css",
                "value": "body div.container-fluid div.jumbotron div.container div.row div.col-md-12 div.wrapper div.centered a.btn:eq(2)"
            }]
        },
        "button": 0,
        "description": "click on \"Credit Card\""
    }, {
        "type": "click",
        "wait": {
            "waitFor": "page_complete"
        },
        "target": {
            "locators": [{
                "type": "css",
                "value": "a:contains(\"Go Back\")"
            }, {
                "type": "css",
                "value": "div:contains(\"Go Back\"):eq(4)"
            }, {
                "type": "css",
                "value": ".btn:eq(2)"
            }, {
                "type": "css",
                "value": "html body:nth-child(8) div:nth-child(3) form div div div:nth-child(3) div:nth-child(2) a:nth-child(2)"
            }, {
                "type": "css",
                "value": "body div.container-fluid form div.jumbotron div.container div.row div.col-md-6 a.btn"
            }]
        },
        "button": 0,
        "description": "click on \"Go Back\""
    }, {
        "type": "click",
        "wait": {
            "waitFor": "page_complete"
        },
        "target": {
            "locators": [{
                "type": "css",
                "value": "a:contains(\"Logout\")"
            }, {
                "type": "css",
                "value": "div:contains(\"Welcome User-2 !!\")"
            }, {
                "type": "css",
                "value": ".btn:eq(0)"
            }, {
                "type": "css",
                "value": "html body:nth-child(8) div a:nth-child(2)"
            }, {
                "type": "css",
                "value": "body div a.btn:eq(0)"
            }]
        },
        "button": 0,
        "description": "click on \"Logout\""
    }]
  },
    "keyPerformanceMetrics": {
    "loadActionKpm": "VISUALLY_COMPLETE",
    "xhrActionKpm": "VISUALLY_COMPLETE"
  },
  "tags": [
    "$1"
  ],
  "events": []
}
EOF
)
curl -H "Content-Type: application/json" -H "Authorization: Api-Token $5" -X POST -d "${PAYLOAD}" $4/api/v1/synthetic/monitors
