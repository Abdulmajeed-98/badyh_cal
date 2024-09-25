Map<String, List<Map<String, dynamic>>> calendarDB = {
  "seasons": [
    {"SeasonID": 1, "SeasonName": "الشتاء"},
    {"SeasonID": 2, "SeasonName": "الربيع"},
    {"SeasonID": 3, "SeasonName": "الصيف"},
    {"SeasonID": 4, "SeasonName": "الخريف"}
  ],
  "January": [
    {
      "id": 1,
      "name": "January",
      "number": 1,
      "season": "Winter",
      "stars": ["الهنعة", "الذراع", "النثرة"],
    },
  ],
  "February": [
    {
      "id": 2,
      "name": "February",
      "number": 2,
      "season": "Winter",
      "stars": ["الطرف", "الجبهة"],
    },
  ],
  "March": [
    {
      "id": 3,
      "name": "March",
      "number": 3,
      "season": "Spring",
      "stars": ["الزبرة", "الصرفه"],
    },
  ],
  "April": [
    {
      "id": 4,
      "name": "April",
      "number": 4,
      "season": "Spring",
      "stars": ["العواء", "السماك"],
    },
  ],
  "May": [
    {
      "id": 5,
      "name": "May",
      "number": 5,
      "season": "Spring",
      "stars": ["الغفر", "الزبان"],
    },
  ],
  "June": [
    {
      "id": 6,
      "name": "June",
      "number": 6,
      "season": "Summer",
      "stars": ["إكليل", "القلب"],
    },
  ],
  "July": [
    {
      "id": 7,
      "name": "July",
      "number": 7,
      "season": "Summer",
      "stars": ["الشول", "النعائم"],
    },
  ],
  "August": [
    {
      "id": 8,
      "name": "August",
      "number": 8,
      "season": "Summer",
      "stars": ["البلدة", "المرزم"],
    },
  ],
  "September": [
    {
      "id": 9,
      "name": "September",
      "number": 9,
      "season": "Fall",
      "stars": ["سهيل", "باعريق"],
    },
  ],
  "October": [
    {
      "id": 10,
      "name": "October",
      "number": 10,
      "season": "Fall",
      "stars": ["سعد (خباء)", "الفرغ"],
    },
  ],
  "November": [
    {
      "id": 11,
      "name": "November",
      "number": 11,
      "season": "Fall",
      "stars": ["الدلو", "الحوت"],
    },
  ],
  "December": [
    {
      "id": 12,
      "name": "December",
      "number": 12,
      "season": "Winter",
      "stars": ["النطح", "البطين"],
    },
  ],
  "Extra": [
    {
      "id": 13,
      "name": "Extra",
      "number": 13,
      "season": "Various",
      "stars": ["الثريا", "البركان", "الهقعة"],
    },
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
      "EndDate": "2024-03-05",
      "SeasonID": 1,
      "Duration": 13
    },
    {
      "StarID": 6,
      "StarName": "الزبرة",
      "StartDate": "2024-03-06",
      "EndDate": "2024-03-18",
      "SeasonID": 2,
      "Duration": 13
    },
    {
      "StarID": 7,
      "StarName": "الصرفة",
      "StartDate": "2024-03-19",
      "EndDate": "2024-03-31",
      "SeasonID": 2,
      "Duration": 13
    }
  ],
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
    }
  ],
  "beeKeepingPhases": [
    {
      "PhaseID": 1,
      "PhaseName": "مجنى الضبة",
      "StartDate": "2024-01-27",
      "EndDate": "2024-02-08",
      "Description": "بداية تجميع العسل من النثرة",
      "RelatedStars": "النثرة"
    },
    {
      "PhaseID": 2,
      "PhaseName": "مجنى السمرة",
      "StartDate": "2024-02-09",
      "EndDate": "2024-03-31",
      "Description": "تجميع العسل من الطرف، الجبهة، الزبرة، الصرفة",
      "RelatedStars": "الطرف، الجبهة، الزبرة، الصرفة"
    }
  ]
};
