class CalendarDb {
  Map<String, List<Map<String, dynamic>>> calendar = {
    "seasons": [
      {
        "SeasonID": 1,
        "SeasonName": "الربيع",
        "monthID": [1, 2, 3],
      },
      {
        "SeasonID": 2,
        "SeasonName": "الصيف",
        "monthID": [4, 5, 6]
      },
      {
        "SeasonID": 3,
        "SeasonName": "الخريف",
        "monthID": [7, 8, 9]
      },
      {
        "SeasonID": 4,
        "SeasonName": "الشتاء",
        "monthID": [10, 11, 12]
      },
    ],
    "months": [
      {
        "monthID": 1,
        "monthName": "January",
        "monthNum": 1,
        "seasonsID": 1,
        "stars": [
          {
            "StarID": [1, 2, 3]
          }
        ]
      },
      {
        "monthID": 2,
        "monthName": "February",
        "monthNum": 2,
        "seasonsID": 1,
        "stars": [
          {
            "StarID": [3, 4, 5]
          }
        ]
      },
      {
        "monthID": 3,
        "monthName": "March",
        "monthNum": 3,
        "seasonsID": 1,
        "stars": [
          {
            "StarID": [5, 6, 7]
          }
        ]
      },
      {
        "monthID": 4,
        "monthName": "April",
        "monthNum": 4,
        "seasonsID": 2,
        "stars": [
          {
            "StarID": [8, 9, 10]
          }
        ]
      },
      {
        "monthID": 5,
        "monthName": "May",
        "monthNum": 5,
        "seasonsID": 2,
        "stars": [
          {
            "StarID": [10, 11, 12]
          }
        ]
      },
      {
        "monthID": 6,
        "monthName": "June",
        "monthNum": 6,
        "seasonsID": 2,
        "stars": [
          {
            "StarID": [12, 13, 14]
          }
        ]
      },
      {
        "monthID": 7,
        "monthName": "July",
        "monthNum": 7,
        "seasonsID": 3,
        "stars": [
          {
            "StarID": [15, 16, 17]
          }
        ]
      },
      {
        "monthID": 8,
        "monthName": "August",
        "monthNum": 8,
        "seasonsID": 3,
        "stars": [
          {
            "StarID": [17, 18, 19]
          }
        ]
      },
      {
        "monthID": 9,
        "monthName": "September",
        "monthNum": 9,
        "seasonsID": 3,
        "stars": [
          {
            "StarID": [19, 20, 21]
          }
        ]
      },
      {
        "monthID": 10,
        "monthName": "October",
        "monthNum": 10,
        "seasonsID": 4,
        "stars": [
          {
            "StarID": [22, 23, 24]
          }
        ]
      },
      {
        "monthID": 11,
        "monthName": "November",
        "monthNum": 11,
        "seasonsID": 4,
        "stars": [
          {
            "StarID": [24, 25, 26]
          }
        ]
      },
      {
        "monthID": 12,
        "monthName": "December",
        "monthNum": 12,
        "seasonsID": 4,
        "stars": [
          {
            "StarID": [26, 27, 28]
          }
        ]
      }
    ],

    "stars": [
      {
        "StarID": 1,
        "StarName": "الهنعة",
        "StartDate": "2024-01-01",
        "EndDate": "2024-01-13",
        "SeasonID": 1,
        "Duration": 13
      },
      {
        "StarID": 2,
        "StarName": "الذراع",
        "StartDate": "2024-01-14",
        "EndDate": "2024-01-26",
        "SeasonID": 1,
        "Duration": 13
      },
      {
        "StarID": 3,
        "StarName": "النثرة",
        "StartDate": "2024-01-27",
        "EndDate": "2024-02-08",
        "SeasonID": 1,
        "Duration": 13
      },
      {
        "StarID": 4,
        "StarName": "الطرف",
        "StartDate": "2024-02-09",
        "EndDate": "2024-02-21",
        "SeasonID": 1,
        "Duration": 13
      },
      {
        "StarID": 5,
        "StarName": "الجبهة",
        "StartDate": "2024-02-22",
        "EndDate": "2024-03-06",
        "SeasonID": 1,
        "Duration": 13
      },
      {
        "StarID": 6,
        "StarName": "الزبرة",
        "StartDate": "2024-03-07",
        "EndDate": "2024-03-19",
        "SeasonID": 1,
        "Duration": 13
      },
      {
        "StarID": 7,
        "StarName": "الصرفة",
        "StartDate": "2024-03-20",
        "EndDate": "2024-04-1",
        "SeasonID": 1,
        "Duration": 13
      },
      {
        "StarID": 8,
        "StarName": "العواء",
        "StartDate": "2024-04-01",
        "EndDate": "2024-04-13",
        "SeasonID": 2,
        "Duration": 13
      },
      {
        "StarID": 9,
        "StarName": "السماك",
        "StartDate": "2024-04-14",
        "EndDate": "2024-04-26",
        "SeasonID": 2,
        "Duration": 13
      },
      {
        "StarID": 10,
        "StarName": "الغفر",
        "StartDate": "2024-04-27",
        "EndDate": "2024-05-09",
        "SeasonID": 2,
        "Duration": 13
      },
      {
        "StarID": 11,
        "StarName": "الزبان",
        "StartDate": "2024-05-10",
        "EndDate": "2024-05-22",
        "SeasonID": 2,
        "Duration": 13
      },
      {
        "StarID": 12,
        "StarName": "إكليل",
        "StartDate": "2024-05-23",
        "EndDate": "2024-06-04",
        "SeasonID": 2,
        "Duration": 13
      },
      {
        "StarID": 13,
        "StarName": "القلب",
        "StartDate": "2024-06-05",
        "EndDate": "2024-06-17",
        "SeasonID": 2,
        "Duration": 13
      },
      {
        "StarID": 14,
        "StarName": "الشول",
        "StartDate": "2024-06-18",
        "EndDate": "2024-06-30",
        "SeasonID": 2,
        "Duration": 13
      },
      {
        "StarID": 15,
        "StarName": "النعائم",
        "StartDate": "2024-07-01",
        "EndDate": "2024-07-13",
        "SeasonID": 3,
        "Duration": 13
      },
      {
        "StarID": 16,
        "StarName": "البلدة",
        "StartDate": "2024-07-14",
        "EndDate": "2024-07-26",
        "SeasonID": 3,
        "Duration": 13
      },
      {
        "StarID": 17,
        "StarName": "المرزم",
        "StartDate": "2024-07-27",
        "EndDate": "2024-08-08",
        "SeasonID": 3,
        "Duration": 13
      },
      {
        "StarID": 18,
        "StarName": "سهيل",
        "StartDate": "2024-08-09",
        "EndDate": "2024-08-21",
        "SeasonID": 3,
        "Duration": 13
      },
      {
        "StarID": 19,
        "StarName": "باعريق",
        "StartDate": "2024-08-22",
        "EndDate": "2024-09-03",
        "SeasonID": 3,
        "Duration": 13
      },
      {
        "StarID": 20,
        "StarName": "سعد",
        "StartDate": "2024-09-04",
        "EndDate": "2024-09-16",
        "SeasonID": 3,
        "Duration": 13
      },
      {
        "StarID": 21,
        "StarName": "الفرغ",
        "StartDate": "2024-09-17",
        "EndDate": "2024-09-29",
        "SeasonID": 3,
        "Duration": 13
      },
      {
        "StarID": 22,
        "StarName": "الدلو",
        "StartDate": "2024-09-30",
        "EndDate": "2024-10-12",
        "SeasonID": 4,
        "Duration": 13
      },
      {
        "StarID": 23,
        "StarName": "الحوت",
        "StartDate": "2024-10-13",
        "EndDate": "2024-10-25",
        "SeasonID": 4,
        "Duration": 13
      },
      {
        "StarID": 24,
        "StarName": "النطح",
        "StartDate": "2024-10-26",
        "EndDate": "2024-11-07",
        "SeasonID": 4,
        "Duration": 13
      },
      {
        "StarID": 25,
        "StarName": "البطين",
        "StartDate": "2024-11-08",
        "EndDate": "2024-11-20",
        "SeasonID": 4,
        "Duration": 13
      },
      {
        "StarID": 26,
        "StarName": "الثرياء",
        "StartDate": "2024-11-21",
        "EndDate": "2024-12-03",
        "SeasonID": 4,
        "Duration": 13
      },
      {
        "StarID": 27,
        "StarName": "البركان",
        "StartDate": "2024-12-04",
        "EndDate": "2024-12-16",
        "SeasonID": 4,
        "Duration": 13
      },
      {
        "StarID": 28,
        "StarName": "الهقعة",
        "StartDate": "2024-12-17",
        "EndDate": "2024-12-29",
        "SeasonID": 4,
        "Duration": 13
      }
    ],
    // انقل وصف المحاصيل الى نجم نجم او كل شهر
    "crops": [
      {
        "CropID": 1,
        "CropName": "القمح",
        "StarID": 1,
        "PlantingInstructions": "يتم زراعة القمح في بداية الهنعة"
      },
      {
        "CropID": 2,
        "CropName": "الشعير",
        "StarID": 2,
        "PlantingInstructions": "يتم زراعة الشعير في الذراع"
      },
      {
        "CropID": 3,
        "CropName": "الذرة",
        "StarID": 3,
        "PlantingInstructions": "يتم زراعة الذرة في النثرة"
      },
      {
        "CropID": 4,
        "CropName": "الأرز",
        "StarID": 4,
        "PlantingInstructions": "يتم زراعة الأرز في الطرف"
      },
      {
        "CropID": 5,
        "CropName": "القطن",
        "StarID": 5,
        "PlantingInstructions": "يتم زراعة القطن في الجبهة"
      },
      {
        "CropID": 6,
        "CropName": "البرسيم",
        "StarID": 6,
        "PlantingInstructions": "يتم زراعة البرسيم في الزبرة"
      },
      {
        "CropID": 7,
        "CropName": "البطاطا",
        "StarID": 7,
        "PlantingInstructions": "يتم زراعة البطاطا في الصرفة"
      },
      {
        "CropID": 8,
        "CropName": "الطماطم",
        "StarID": 8,
        "PlantingInstructions": "يتم زراعة الطماطم في العواء"
      },
      {
        "CropID": 9,
        "CropName": "الباذنجان",
        "StarID": 9,
        "PlantingInstructions": "يتم زراعة الباذنجان في السماك"
      },
      {
        "CropID": 10,
        "CropName": "الفلفل",
        "StarID": 10,
        "PlantingInstructions": "يتم زراعة الفلفل في الغفر"
      },
      {
        "CropID": 11,
        "CropName": "الكرنب",
        "StarID": 11,
        "PlantingInstructions": "يتم زراعة الكرنب في الزبان"
      },
      {
        "CropID": 12,
        "CropName": "الخس",
        "StarID": 12,
        "PlantingInstructions": "يتم زراعة الخس في إكليل"
      },
      {
        "CropID": 13,
        "CropName": "الفجل",
        "StarID": 13,
        "PlantingInstructions": "يتم زراعة الفجل في القلب"
      },
      {
        "CropID": 14,
        "CropName": "الجزر",
        "StarID": 14,
        "PlantingInstructions": "يتم زراعة الجزر في الشول"
      },
      {
        "CropID": 15,
        "CropName": "البصل",
        "StarID": 15,
        "PlantingInstructions": "يتم زراعة البصل في النعائم"
      },
      {
        "CropID": 16,
        "CropName": "الثوم",
        "StarID": 16,
        "PlantingInstructions": "يتم زراعة الثوم في البلدة"
      }
    ],

    "beeKeepingPhases": [
      {
        "PhaseID": 1,
        "PhaseName": "مجنى الضبة",
        "StartDate": "2024-01-27",
        "EndDate": "2024-02-08",
        "Description": "فترة مجنى الضبة",
        "stars": [
          {
            "StarID": [3]
          }
        ]
      },
      {
        "PhaseID": 2,
        "PhaseName": "مجنى السمرة",
        "StartDate": "2024-02-09",
        "EndDate": "2024-03-31",
        "Description": "فترة مجنى السمرة",
        "stars": [
          {
            "StarID": [4, 5, 6, 7]
          }
        ]
      },
      {
        "PhaseID": 3,
        "PhaseName": "ظهور الذبر ومجنى الحبضة",
        "StartDate": "2024-04-01",
        "EndDate": "2024-04-27",
        "Description": "فترة ظهور الذبر ومجنى الحبضة",
        "stars": [
          {
            "StarID": [8, 9]
          }
        ]
      },
      {
        "PhaseID": 4,
        "PhaseName": "إثل وقبوة الأربعينية",
        "StartDate": "2024-04-28",
        "EndDate": "2024-06-05",
        "Description": "فترة إثل وقبوة الأربعينية",
        "stars": [
          {
            "StarID": [10, 11, 12]
          }
        ]
      },
      {
        "PhaseID": 5,
        "PhaseName": "فترة أشد فترة على النحل",
        "StartDate": "2024-06-06",
        "EndDate": "2024-07-14",
        "Description": "فترة شديدة على النحل",
        "stars": [
          {
            "StarID": [13, 14, 15]
          }
        ]
      },
      {
        "PhaseID": 6,
        "PhaseName": "مجنى قاع وقبوة",
        "StartDate": "2024-07-15",
        "EndDate": "2024-08-22",
        "Description": "فترة مجنى قاع وقبوة وبداية التحسن",
        "stars": [
          {
            "StarID": [16, 17, 18]
          }
        ]
      },
      {
        "PhaseID": 7,
        "PhaseName": "أفضل فترة للنحل ومجنى السدر",
        "StartDate": "2024-08-23",
        "EndDate": "2024-11-08",
        "Description": "أفضل فترة للنحل",
        "stars": [
          {
            "StarID": [
              19,
              20,
              21,
              22,
              23,
              24,
            ]
          }
        ]
      },
      {
        "PhaseID": 8,
        "PhaseName": "فترة الدبس",
        "StartDate": "2024-11-09",
        "EndDate": "2024-12-04",
        "Description": "فترة الدبس",
        "stars": [
          {
            "StarID": [25, 26]
          }
        ]
      },
      {
        "PhaseID": 9,
        "PhaseName": "فترة شديدة على النحل",
        "StartDate": "2024-12-05",
        "EndDate": "2025-01-13",
        "Description": "فترة صعبة على النحل",
        "stars": [
          {
            "StarID": [27, 28, 1, 2]
          }
        ]
      }
    ]
  };
}
