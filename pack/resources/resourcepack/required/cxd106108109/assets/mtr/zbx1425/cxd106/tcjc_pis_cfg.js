
var pisConfig = {
  "default": {
    "arriveDistance": 100,
    "arriveDistanceTerm": 100,
    "departDistance": 30,
    "departDistanceSpecDep": 30,
    "door": "both",
    "tbOnPlat": false
  },

  "stations": {
    "grp": { },
    "res": { "door": "left" },
    "vol": { },
    "dun": { "door": "right", "tbOnPlat": true },
    "chd": { "door": "right" },
    "foc": { "door": "left", "tbOnPlat": true },
    "boe": { "door": "left" },
    "cap": { "door": "right", "tbOnPlat": true },
    "jur": { "door": "right" },
    "cac": { "door": "right" },
    "bes": { "door": "both", "tbOnPlat": true }
  },

  "routes": {
    "1s": { "annRouteName": "nsl", "routeName": "東北綫|N/E Line",
      "destName": "廣場|Grand Plaza", "headSideDest": "嘉年華碼頭|Carnival Pier"
    },
    "1x": { "annRouteName": "nsl", "routeName": "東北綫|N/E Line",
      "headSideDest": "沙   丘|Dunes"
    },
    "2s": { "annRouteName": "ewl", "routeName": "西北綫|N/W Line",
      "destName": "廣場|Grand Plaza", "headSideDest": "別 誌 西|Beachside"
    },
    "2x": { "annRouteName": "ewl", "routeName": "西北綫|N/W Line",
      "headSideDest": "崖   樹|Forest Cliffs"
    },
    "3s": { "annRouteName": "nsl", "routeName": "西南綫|S/W Line",
      "destName": "廣場|Grand Plaza", "headSideDest": "沙   丘|Dunes"
    },
    "3x": { "annRouteName": "nsl", "routeName": "西南綫|S/W Line",
      "headSideDest": "嘉年華碼頭|Carnival Pier"
    },
    "4s": { "annRouteName": "ewl", "routeName": "東南綫|S/E Line",
      "destName": "廣場|Grand Plaza", "headSideDest": "崖   樹|Forest Cliffs"
    },
    "4x": { "annRouteName": "ewl", "routeName": "東南綫|S/E Line",
      "headSideDest": "別 誌 西|Beachside"
    }
  },

  "routeStations": {
    "1s_grp": { "door": "right" },
    "2s_grp": { "door": "left" },
    "3s_grp": { "door": "right" },
    "4s_grp": { "door": "left" },

    "1s_vol": { "door": "left" },
    "1x_vol": { "door": "right" }
  },
};

