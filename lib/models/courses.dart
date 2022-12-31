// To parse this JSON data, do
//
//     final courses = coursesFromJson(jsonString);

// ignore_for_file: constant_identifier_names

import 'dart:convert';

List<Courses> coursesFromJson(String str) =>
    List<Courses>.from(json.decode(str).map((x) => Courses.fromJson(x)));

String coursesToJson(List<Courses> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Courses {
  Courses({
    required this.courseId,
    required this.termCode,
    required this.session,
    required this.subject,
    required this.catalog,
    required this.section,
    required this.componentCode,
    required this.componentDescription,
    required this.classNumber,
    required this.classAssociation,
    required this.courseTitle,
    required this.topicId,
    required this.topicDescription,
    required this.classStatus,
    required this.locationCode,
    required this.instructionModeCode,
    required this.instructionModeDescription,
    required this.meetingPatternNumber,
    required this.roomCode,
    required this.buildingCode,
    required this.room,
    required this.classStartTime,
    required this.classEndTime,
    required this.modays,
    required this.tuesdays,
    required this.wednesdays,
    required this.thursdays,
    required this.fridays,
    required this.saturdays,
    required this.sundays,
    required this.classStartDate,
    required this.classEndDate,
    required this.career,
    required this.departmentCode,
    required this.departmentDescription,
    required this.facultyCode,
    required this.facultyDescription,
    required this.enrollmentCapacity,
    required this.currentEnrollment,
    required this.waitlistCapacity,
    required this.currentWaitlistTotal,
    required this.hasSeatReserved,
    required this.prerequisites,
  });

  String courseId;
  String termCode;
  Session? session;
  String subject;
  String catalog;
  String section;
  ComponentCode? componentCode;
  ComponentDescription? componentDescription;
  String classNumber;
  String classAssociation;
  String courseTitle;
  String topicId;
  String topicDescription;
  ClassStatus? classStatus;
  LocationCode? locationCode;
  InstructionModeCode? instructionModeCode;
  InstructionModeDescription? instructionModeDescription;
  String meetingPatternNumber;
  String roomCode;
  BuildingCode? buildingCode;
  String room;
  String classStartTime;
  String classEndTime;
  Days? modays;
  Days? tuesdays;
  Days? wednesdays;
  Days? thursdays;
  Days? fridays;
  Days? saturdays;
  Days? sundays;
  String classStartDate;
  String classEndDate;
  Career? career;
  DepartmentCode? departmentCode;
  DepartmentDescription? departmentDescription;
  FacultyCode? facultyCode;
  FacultyDescription? facultyDescription;
  String enrollmentCapacity;
  String currentEnrollment;
  String waitlistCapacity;
  String currentWaitlistTotal;
  HasSeatReserved? hasSeatReserved;
  String prerequisites;

  factory Courses.fromJson(Map<String, dynamic> json) => Courses(
        courseId: json["courseID"],
        termCode: json["termCode"],
        session: sessionValues.map[json["session"]],
        subject: json["subject"],
        catalog: json["catalog"],
        section: json["section"],
        componentCode: componentCodeValues.map[json["componentCode"]],
        componentDescription:
            componentDescriptionValues.map[json["componentDescription"]],
        classNumber: json["classNumber"],
        classAssociation: json["classAssociation"],
        courseTitle: json["courseTitle"],
        topicId: json["topicID"],
        topicDescription: json["topicDescription"],
        classStatus: classStatusValues.map[json["classStatus"]],
        locationCode: locationCodeValues.map[json["locationCode"]],
        instructionModeCode:
            instructionModeCodeValues.map[json["instructionModeCode"]],
        instructionModeDescription: instructionModeDescriptionValues
            .map[json["instructionModeDescription"]],
        meetingPatternNumber: json["meetingPatternNumber"],
        roomCode: json["roomCode"],
        buildingCode: buildingCodeValues.map[json["buildingCode"]],
        room: json["room"],
        classStartTime: json["classStartTime"],
        classEndTime: json["classEndTime"],
        modays: daysValues.map[json["modays"]],
        tuesdays: daysValues.map[json["tuesdays"]],
        wednesdays: daysValues.map[json["wednesdays"]],
        thursdays: daysValues.map[json["thursdays"]],
        fridays: daysValues.map[json["fridays"]],
        saturdays: daysValues.map[json["saturdays"]],
        sundays: daysValues.map[json["sundays"]],
        classStartDate: json["classStartDate"],
        classEndDate: json["classEndDate"],
        career: careerValues.map[json["career"]],
        departmentCode: departmentCodeValues.map[json["departmentCode"]],
        departmentDescription:
            departmentDescriptionValues.map[json["departmentDescription"]],
        facultyCode: facultyCodeValues.map[json["facultyCode"]],
        facultyDescription:
            facultyDescriptionValues.map[json["facultyDescription"]],
        enrollmentCapacity: json["enrollmentCapacity"],
        currentEnrollment: json["currentEnrollment"],
        waitlistCapacity: json["waitlistCapacity"],
        currentWaitlistTotal: json["currentWaitlistTotal"],
        hasSeatReserved: hasSeatReservedValues.map[json["hasSeatReserved"]],
        prerequisites: json["prerequisites"],
      );

  Map<String, dynamic> toJson() => {
        "courseID": courseId,
        "termCode": termCode,
        "session": sessionValues.reverse![session],
        "subject": subject,
        "catalog": catalog,
        "section": section,
        "componentCode": componentCodeValues.reverse![componentCode],
        "componentDescription":
            componentDescriptionValues.reverse![componentDescription],
        "classNumber": classNumber,
        "classAssociation": classAssociation,
        "courseTitle": courseTitle,
        "topicID": topicId,
        "topicDescription": topicDescription,
        "classStatus": classStatusValues.reverse![classStatus],
        "locationCode": locationCodeValues.reverse![locationCode],
        "instructionModeCode":
            instructionModeCodeValues.reverse![instructionModeCode],
        "instructionModeDescription": instructionModeDescriptionValues
            .reverse![instructionModeDescription],
        "meetingPatternNumber": meetingPatternNumber,
        "roomCode": roomCode,
        "buildingCode": buildingCodeValues.reverse![buildingCode],
        "room": room,
        "classStartTime": classStartTime,
        "classEndTime": classEndTime,
        "modays": daysValues.reverse![modays],
        "tuesdays": daysValues.reverse![tuesdays],
        "wednesdays": daysValues.reverse![wednesdays],
        "thursdays": daysValues.reverse![thursdays],
        "fridays": daysValues.reverse![fridays],
        "saturdays": daysValues.reverse![saturdays],
        "sundays": daysValues.reverse![sundays],
        "classStartDate": classStartDate,
        "classEndDate": classEndDate,
        "career": careerValues.reverse![career],
        "departmentCode": departmentCodeValues.reverse![departmentCode],
        "departmentDescription":
            departmentDescriptionValues.reverse![departmentDescription],
        "facultyCode": facultyCodeValues.reverse![facultyCode],
        "facultyDescription":
            facultyDescriptionValues.reverse![facultyDescription],
        "enrollmentCapacity": enrollmentCapacity,
        "currentEnrollment": currentEnrollment,
        "waitlistCapacity": waitlistCapacity,
        "currentWaitlistTotal": currentWaitlistTotal,
        "hasSeatReserved": hasSeatReservedValues.reverse![hasSeatReserved],
        "prerequisites": prerequisites,
      };
}

enum BuildingCode {
  MB,
  H,
  VE,
  CC,
  FB,
  FG,
  EV,
  EMPTY,
  VA,
  CJ,
  LB,
  LS,
  PT,
  ER,
  RR,
  HB,
  SP,
  PY,
  R,
  HC,
  HU,
  GM,
  GA
}

final buildingCodeValues = EnumValues({
  "CC": BuildingCode.CC,
  "CJ": BuildingCode.CJ,
  "": BuildingCode.EMPTY,
  "ER": BuildingCode.ER,
  "EV": BuildingCode.EV,
  "FB": BuildingCode.FB,
  "FG": BuildingCode.FG,
  "GA": BuildingCode.GA,
  "GM": BuildingCode.GM,
  "H": BuildingCode.H,
  "HB": BuildingCode.HB,
  "HC": BuildingCode.HC,
  "HU": BuildingCode.HU,
  "LB": BuildingCode.LB,
  "LS": BuildingCode.LS,
  "MB": BuildingCode.MB,
  "PT": BuildingCode.PT,
  "PY": BuildingCode.PY,
  "R": BuildingCode.R,
  "RR": BuildingCode.RR,
  "SP": BuildingCode.SP,
  "VA": BuildingCode.VA,
  "VE": BuildingCode.VE
});

enum Career { UNDERGRADUATE, GRADUATE, CONTINUING_EDUCATION }

final careerValues = EnumValues({
  "Continuing Education": Career.CONTINUING_EDUCATION,
  "Graduate": Career.GRADUATE,
  "Undergraduate": Career.UNDERGRADUATE
});

enum ClassStatus {
  ACTIVE,
  STOP_FURTHER_ENROLLMENT,
  TENTATIVE_SECTION,
  CANCELLED_SECTION
}

final classStatusValues = EnumValues({
  "Active": ClassStatus.ACTIVE,
  "Cancelled Section": ClassStatus.CANCELLED_SECTION,
  "Stop Further Enrollment": ClassStatus.STOP_FURTHER_ENROLLMENT,
  "Tentative Section": ClassStatus.TENTATIVE_SECTION
});

enum ComponentCode {
  LEC,
  SEM,
  TUT,
  STU,
  REA,
  CON,
  LAB,
  PRA,
  REG,
  ONL,
  TL,
  WKS,
  MOD
}

final componentCodeValues = EnumValues({
  "CON": ComponentCode.CON,
  "LAB": ComponentCode.LAB,
  "LEC": ComponentCode.LEC,
  "MOD": ComponentCode.MOD,
  "ONL": ComponentCode.ONL,
  "PRA": ComponentCode.PRA,
  "REA": ComponentCode.REA,
  "REG": ComponentCode.REG,
  "SEM": ComponentCode.SEM,
  "STU": ComponentCode.STU,
  "TL": ComponentCode.TL,
  "TUT": ComponentCode.TUT,
  "WKS": ComponentCode.WKS
});

enum ComponentDescription {
  LECTURE,
  SEMINAR,
  TUTORIAL,
  STUDIO,
  READING,
  CONFERENCE,
  LABORATORY,
  PRACTICUM_INTERSHIP_WORK_TERM,
  REGULAR,
  ONLINE,
  TUTORIAL_LAB,
  WORKSHOP,
  MODULAR
}

final componentDescriptionValues = EnumValues({
  "Conference": ComponentDescription.CONFERENCE,
  "Laboratory": ComponentDescription.LABORATORY,
  "Lecture": ComponentDescription.LECTURE,
  "Modular": ComponentDescription.MODULAR,
  "Online": ComponentDescription.ONLINE,
  "Practicum/Intership/work term":
      ComponentDescription.PRACTICUM_INTERSHIP_WORK_TERM,
  "Reading": ComponentDescription.READING,
  "Regular": ComponentDescription.REGULAR,
  "Seminar": ComponentDescription.SEMINAR,
  "Studio": ComponentDescription.STUDIO,
  "Tutorial": ComponentDescription.TUTORIAL,
  "Tutorial/Lab": ComponentDescription.TUTORIAL_LAB,
  "Workshop": ComponentDescription.WORKSHOP
});

enum DepartmentCode {
  ACCOUNTNCY,
  MECHINDUS,
  APPHUMSC,
  SOCIANTH,
  ARTHIST,
  STUDIOART,
  BCEE,
  DESGCART,
  ELECCOEN,
  COMMSTUD,
  CONTDANCE,
  MUSIC,
  EDUCATION,
  CENTENGIN,
  ENGLISH,
  GEOGPLEN,
  FINEARTS,
  CINEMA,
  HISTORY,
  IRISHSTUD,
  LIBARTCO,
  MANAGEMENT,
  CLASSMLL,
  PHYSICS,
  POLISCI,
  PSYCHOLOGY,
  RELIGION,
  SCIENCECO,
  COMMPUBA,
  SIMONEBEA,
  THEATRE,
  CEBA,
  CECI,
  CECA,
  CEPH,
  CEXX,
  MATHSTAT,
  MARKETING,
  FINANCE,
  DESCMIS,
  ARTEDUCAT,
  CREATARTS,
  BIOLOGY,
  EXERCISSC,
  CHEMBIOCHM,
  CHEMATTIND,
  COMPSOEN,
  ECONOMICS,
  ETUDFRANC,
  INTERSTUD,
  CIISE,
  JOURNALISM,
  LOYOLACOL,
  GENADMIN,
  PHILOSOPHY,
  THEOLSTUD,
  SSC
}

final departmentCodeValues = EnumValues({
  "ACCOUNTNCY": DepartmentCode.ACCOUNTNCY,
  "APPHUMSC": DepartmentCode.APPHUMSC,
  "ARTEDUCAT": DepartmentCode.ARTEDUCAT,
  "ARTHIST": DepartmentCode.ARTHIST,
  "BCEE": DepartmentCode.BCEE,
  "BIOLOGY": DepartmentCode.BIOLOGY,
  "CEBA": DepartmentCode.CEBA,
  "CECA": DepartmentCode.CECA,
  "CECI": DepartmentCode.CECI,
  "CENTENGIN": DepartmentCode.CENTENGIN,
  "CEPH": DepartmentCode.CEPH,
  "CEXX": DepartmentCode.CEXX,
  "CHEMATTIND": DepartmentCode.CHEMATTIND,
  "CHEMBIOCHM": DepartmentCode.CHEMBIOCHM,
  "CIISE": DepartmentCode.CIISE,
  "CINEMA": DepartmentCode.CINEMA,
  "CLASSMLL": DepartmentCode.CLASSMLL,
  "COMMPUBA": DepartmentCode.COMMPUBA,
  "COMMSTUD": DepartmentCode.COMMSTUD,
  "COMPSOEN": DepartmentCode.COMPSOEN,
  "CONTDANCE": DepartmentCode.CONTDANCE,
  "CREATARTS": DepartmentCode.CREATARTS,
  "DESCMIS": DepartmentCode.DESCMIS,
  "DESGCART": DepartmentCode.DESGCART,
  "ECONOMICS": DepartmentCode.ECONOMICS,
  "EDUCATION": DepartmentCode.EDUCATION,
  "ELECCOEN": DepartmentCode.ELECCOEN,
  "ENGLISH": DepartmentCode.ENGLISH,
  "ETUDFRANC": DepartmentCode.ETUDFRANC,
  "EXERCISSC": DepartmentCode.EXERCISSC,
  "FINANCE": DepartmentCode.FINANCE,
  "FINEARTS": DepartmentCode.FINEARTS,
  "GENADMIN": DepartmentCode.GENADMIN,
  "GEOGPLEN": DepartmentCode.GEOGPLEN,
  "HISTORY": DepartmentCode.HISTORY,
  "INTERSTUD": DepartmentCode.INTERSTUD,
  "IRISHSTUD": DepartmentCode.IRISHSTUD,
  "JOURNALISM": DepartmentCode.JOURNALISM,
  "LIBARTCO": DepartmentCode.LIBARTCO,
  "LOYOLACOL": DepartmentCode.LOYOLACOL,
  "MANAGEMENT": DepartmentCode.MANAGEMENT,
  "MARKETING": DepartmentCode.MARKETING,
  "MATHSTAT": DepartmentCode.MATHSTAT,
  "MECHINDUS": DepartmentCode.MECHINDUS,
  "MUSIC": DepartmentCode.MUSIC,
  "PHILOSOPHY": DepartmentCode.PHILOSOPHY,
  "PHYSICS": DepartmentCode.PHYSICS,
  "POLISCI": DepartmentCode.POLISCI,
  "PSYCHOLOGY": DepartmentCode.PSYCHOLOGY,
  "RELIGION": DepartmentCode.RELIGION,
  "SCIENCECO": DepartmentCode.SCIENCECO,
  "SIMONEBEA": DepartmentCode.SIMONEBEA,
  "SOCIANTH": DepartmentCode.SOCIANTH,
  "SSC": DepartmentCode.SSC,
  "STUDIOART": DepartmentCode.STUDIOART,
  "THEATRE": DepartmentCode.THEATRE,
  "THEOLSTUD": DepartmentCode.THEOLSTUD
});

enum DepartmentDescription {
  ACCOUNTANCY,
  MECHANICAL_INDUSTRIAL_AND_AEROSPACE_ENGINEERING,
  APPLIED_HUMAN_SCIENCES,
  SOCIOLOGY_AND_ANTHROPOLOGY,
  ART_HISTORY,
  STUDIO_ARTS,
  BUILDING_CIVIL_ENVIRON_ENGINEERING,
  DESIGN_AND_COMPUTATION_ARTS,
  ELECTRICAL_AND_COMPUTER_ENGINEERING,
  COMMUNICATION_STUDIES,
  CONTEMPORARY_DANCE,
  MUSIC,
  EDUCATION,
  CENTRE_FOR_ENGINEER_IN_SOCIETY,
  ENGLISH,
  GEOGRAPHY_PLANNING_ENVIRONMT,
  FINE_ARTS,
  CINEMA,
  HISTORY,
  SCHOOL_OF_IRISH_STUDIES,
  LIBERAL_ARTS_COLLEGE,
  MANAGEMENT,
  CLASSICS_MOD_LANG_LINGUISTICS,
  PHYSICS,
  POLITICAL_SCIENCE,
  PSYCHOLOGY,
  RELIGIONS_AND_CULTURES,
  SCIENCE_COLLEGE,
  SCHOOL_OF_COMMUNITY_PUBLIC_AFFAIRS,
  SIMONE_DE_BEAUVOIR_INST_WOM_STD,
  THEATRE,
  BUSINESS_ADMINISTRATION,
  COMPUTER_INSTITUTE,
  COMMUNICATIONS_DEPARTMENT,
  PHOTOGRAPHY_DEPARTMENT,
  CCE_CORPORATE_TRAINING,
  MATHEMATICS_AND_STATISTICS,
  MARKETING,
  FINANCE,
  SUPPLY_CHAIN_AND_BUSINESS_TECHNOLOGY_MANAGEMENT,
  ART_EDUCATION,
  CREATIVE_ARTS_THERAPIES,
  BIOLOGY,
  HEALTH_KINESIOLOGY_AND_APPLIED_PHYSIOLOGY,
  CHEMISTRY_AND_BIOCHEMISTRY,
  CHEMICAL_AND_MATERIALS_ENGINEERING,
  COMPUTER_SCIENCE_SOFTWARE_ENGINEERING,
  ECONOMICS,
  ETUDES_FRANCAISES,
  INTERDISCIPLINARY_STUDIES,
  CONCORDIA_INSTITUTE_FOR_INFORMATION_SYSTEMS_ENGRG,
  JOURNALISM,
  LC_DIVERSITY_SUSTAINABILITY,
  GENERAL_ADMINISTRATION,
  PHILOSOPHY,
  THEOLOGICAL_STUDIES,
  STUDENT_SUCCESS_CENTRE
}

final departmentDescriptionValues = EnumValues({
  "Accountancy": DepartmentDescription.ACCOUNTANCY,
  "Applied Human Sciences": DepartmentDescription.APPLIED_HUMAN_SCIENCES,
  "Art Education": DepartmentDescription.ART_EDUCATION,
  "Art History": DepartmentDescription.ART_HISTORY,
  "Biology": DepartmentDescription.BIOLOGY,
  "Building Civil & Environ Engineering":
      DepartmentDescription.BUILDING_CIVIL_ENVIRON_ENGINEERING,
  "Business Administration": DepartmentDescription.BUSINESS_ADMINISTRATION,
  "CCE Corporate Training": DepartmentDescription.CCE_CORPORATE_TRAINING,
  "Centre for Engineer in Society":
      DepartmentDescription.CENTRE_FOR_ENGINEER_IN_SOCIETY,
  "Chemical and Materials Engineering":
      DepartmentDescription.CHEMICAL_AND_MATERIALS_ENGINEERING,
  "Chemistry and Biochemistry":
      DepartmentDescription.CHEMISTRY_AND_BIOCHEMISTRY,
  "Cinema": DepartmentDescription.CINEMA,
  "Classics, Mod Lang&Linguistics":
      DepartmentDescription.CLASSICS_MOD_LANG_LINGUISTICS,
  "Communications Department": DepartmentDescription.COMMUNICATIONS_DEPARTMENT,
  "Communication Studies": DepartmentDescription.COMMUNICATION_STUDIES,
  "Computer Institute": DepartmentDescription.COMPUTER_INSTITUTE,
  "Computer Science & Software Engineering":
      DepartmentDescription.COMPUTER_SCIENCE_SOFTWARE_ENGINEERING,
  "Concordia Institute for Information Systems Engrg":
      DepartmentDescription.CONCORDIA_INSTITUTE_FOR_INFORMATION_SYSTEMS_ENGRG,
  "Contemporary Dance": DepartmentDescription.CONTEMPORARY_DANCE,
  "Creative Arts Therapies": DepartmentDescription.CREATIVE_ARTS_THERAPIES,
  "Design and Computation Arts":
      DepartmentDescription.DESIGN_AND_COMPUTATION_ARTS,
  "Economics": DepartmentDescription.ECONOMICS,
  "Education": DepartmentDescription.EDUCATION,
  "Electrical and Computer Engineering":
      DepartmentDescription.ELECTRICAL_AND_COMPUTER_ENGINEERING,
  "English": DepartmentDescription.ENGLISH,
  "Etudes Francaises": DepartmentDescription.ETUDES_FRANCAISES,
  "Finance": DepartmentDescription.FINANCE,
  "Fine Arts": DepartmentDescription.FINE_ARTS,
  "General Administration": DepartmentDescription.GENERAL_ADMINISTRATION,
  "Geography, Planning & Environmt":
      DepartmentDescription.GEOGRAPHY_PLANNING_ENVIRONMT,
  "Health, Kinesiology, and Applied Physiology":
      DepartmentDescription.HEALTH_KINESIOLOGY_AND_APPLIED_PHYSIOLOGY,
  "History": DepartmentDescription.HISTORY,
  "Interdisciplinary Studies": DepartmentDescription.INTERDISCIPLINARY_STUDIES,
  "Journalism": DepartmentDescription.JOURNALISM,
  "LC Diversity & Sustainability":
      DepartmentDescription.LC_DIVERSITY_SUSTAINABILITY,
  "Liberal Arts College": DepartmentDescription.LIBERAL_ARTS_COLLEGE,
  "Management": DepartmentDescription.MANAGEMENT,
  "Marketing": DepartmentDescription.MARKETING,
  "Mathematics and Statistics":
      DepartmentDescription.MATHEMATICS_AND_STATISTICS,
  "Mechanical, Industrial and Aerospace Engineering":
      DepartmentDescription.MECHANICAL_INDUSTRIAL_AND_AEROSPACE_ENGINEERING,
  "Music": DepartmentDescription.MUSIC,
  "Philosophy": DepartmentDescription.PHILOSOPHY,
  "Photography Department": DepartmentDescription.PHOTOGRAPHY_DEPARTMENT,
  "Physics": DepartmentDescription.PHYSICS,
  "Political Science": DepartmentDescription.POLITICAL_SCIENCE,
  "Psychology": DepartmentDescription.PSYCHOLOGY,
  "Religions and Cultures": DepartmentDescription.RELIGIONS_AND_CULTURES,
  "School of Community&Public Affairs":
      DepartmentDescription.SCHOOL_OF_COMMUNITY_PUBLIC_AFFAIRS,
  "School of Irish Studies": DepartmentDescription.SCHOOL_OF_IRISH_STUDIES,
  "Science College": DepartmentDescription.SCIENCE_COLLEGE,
  "Simone deBeauvoir Inst&Wom Std":
      DepartmentDescription.SIMONE_DE_BEAUVOIR_INST_WOM_STD,
  "Sociology and Anthropology":
      DepartmentDescription.SOCIOLOGY_AND_ANTHROPOLOGY,
  "Student Success Centre": DepartmentDescription.STUDENT_SUCCESS_CENTRE,
  "Studio Arts": DepartmentDescription.STUDIO_ARTS,
  "Supply Chain And Business Technology Management":
      DepartmentDescription.SUPPLY_CHAIN_AND_BUSINESS_TECHNOLOGY_MANAGEMENT,
  "Theatre": DepartmentDescription.THEATRE,
  "Theological Studies": DepartmentDescription.THEOLOGICAL_STUDIES
});

enum FacultyCode { JMSB, ENCS, AS, FA, CCE, SSC }

final facultyCodeValues = EnumValues({
  "AS": FacultyCode.AS,
  "CCE": FacultyCode.CCE,
  "ENCS": FacultyCode.ENCS,
  "FA": FacultyCode.FA,
  "JMSB": FacultyCode.JMSB,
  "SSC": FacultyCode.SSC
});

enum FacultyDescription {
  JOHN_MOLSON_SCHOOL_OF_BUSINESS,
  GINA_CODY_SCHOOL_OF_ENGINEERING_COMPUTER_SCIENCE,
  FACULTY_OF_ARTS_SCIENCE,
  FACULTY_OF_FINE_ARTS,
  THE_CENTRE_FOR_CONTINUING_EDUCATION,
  STUDENT_SUCCESS_CENTRE
}

final facultyDescriptionValues = EnumValues({
  "Faculty of Arts & Science": FacultyDescription.FACULTY_OF_ARTS_SCIENCE,
  "Faculty of Fine Arts": FacultyDescription.FACULTY_OF_FINE_ARTS,
  "Gina Cody School of Engineering & Computer Science":
      FacultyDescription.GINA_CODY_SCHOOL_OF_ENGINEERING_COMPUTER_SCIENCE,
  "John Molson School of Business":
      FacultyDescription.JOHN_MOLSON_SCHOOL_OF_BUSINESS,
  "Student Success Centre": FacultyDescription.STUDENT_SUCCESS_CENTRE,
  "The Centre for Continuing Education":
      FacultyDescription.THE_CENTRE_FOR_CONTINUING_EDUCATION
});

enum Days { Y, N }

final daysValues = EnumValues({"N": Days.N, "Y": Days.Y});

enum HasSeatReserved { EMPTY, Y }

final hasSeatReservedValues =
    EnumValues({"": HasSeatReserved.EMPTY, "Y": HasSeatReserved.Y});

enum InstructionModeCode { P, OL, B }

final instructionModeCodeValues = EnumValues({
  "B": InstructionModeCode.B,
  "OL": InstructionModeCode.OL,
  "P": InstructionModeCode.P
});

enum InstructionModeDescription { IN_PERSON, ON_LINE, BLENDED_LEARNING }

final instructionModeDescriptionValues = EnumValues({
  "Blended Learning": InstructionModeDescription.BLENDED_LEARNING,
  "In Person": InstructionModeDescription.IN_PERSON,
  "On-Line": InstructionModeDescription.ON_LINE
});

enum LocationCode { SGW, LOY, ONL }

final locationCodeValues = EnumValues({
  "LOY": LocationCode.LOY,
  "ONL": LocationCode.ONL,
  "SGW": LocationCode.SGW
});

enum Session { THE_26_W, NSS, THE_10_W, THE_13_W }

final sessionValues = EnumValues({
  "NSS": Session.NSS,
  "10W": Session.THE_10_W,
  "13W": Session.THE_13_W,
  "26W": Session.THE_26_W
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
