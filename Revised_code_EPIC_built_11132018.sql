
  CREATE TABLE "XDR_ACP_COHORT" 
   (	"PAT_ID" VARCHAR2(18 BYTE), 
	"PL_CANCER" NUMBER, 
	"PL_ESLD" NUMBER, 
	"PL_COPD" NUMBER, 
	"PL_COPD_SPO2" NUMBER, 
	"PL_CHF" NUMBER, 
	"PL_ESRD" NUMBER, 
	"PL_ALS" NUMBER, 
	"PL_CIRRHOSIS" NUMBER, 
	"CREATION_DATE" TIMESTAMP (6), 
	"PL_COPD_SP02" NUMBER, 
	"PL_PERITONITIS" NUMBER, 
	"PL_HEPATORENAL" NUMBER, 
	"PL_BLEEDING" NUMBER, 
	"PL_ASCITES" NUMBER, 
	"PL_ENCEPHALOPATHY" NUMBER, 
	"PL_ESDL_DECOMPENSATION" NUMBER, 
	"DX_ALS" NUMBER, 
	"DX_CANCER" NUMBER, 
	"DX_CHF" NUMBER, 
	"DX_ESRD" NUMBER, 
	"DX_CIRRHOSIS" NUMBER, 
	"NEPH_VISIT" NUMBER, 
	"ONC_VISIT" NUMBER, 
	"COPD_ADMIT" NUMBER, 
	"CHF_ADMIT" NUMBER, 
    "MELD" NUMBER, 
    "EF" NUMBER, 
    "AD_POLST_THREE" NUMBER, 
    "AD_POLST_ALL" NUMBER,   
    "CANCER" NUMBER, 
	"ESLD" NUMBER, 
	"COPD" NUMBER, 
	"CHF" NUMBER, 
	"ESRD" NUMBER, 
	"ALS" NUMBER, 
    "AGE" NUMBER
   )

--It needs a section for the driver-specific tables/references
CREATE GLOBAL TEMPORARY TABLE XDR_ACP_DEPT_DRV(DEPARTMENT_ID NUMBER)
ON COMMIT PRESERVE ROWS;

INSERT INTO XDR_ACP_DEPT_DRV
SELECT DISTINCT DEPARTMENT_ID
FROM CLARITY_DEPT
WHERE DEPARTMENT_ID IN (
910314,
910310,
70085,
80366,
80039,
940035,
940043,
60155,
60156,
10511,
910227,
910228,
910230,
910231,
910177,
910178,
50541,
80273,
80279,
80114,
20511,
80169,
80179,
80044,
80382,
80329,
80049,
940012,
940013,
940015,
940016,
940017,
940018,
940019,
80087,
940038,
61026,
70001,
70009,
70003,
70005,
70006,
70007,
70008,
70010,
70011,
60678,
60679,
70079,
70032,
80168,
70034,
70035,
60152,
60153,
60159,
60160,
60161,
60162,
70080,
60167,
60170,
60173,
60175,
60176,
60177,
60178,
60180,
60181,
10009,
10014,
10030,
10031,
80399,
20560,
80000,
80368,
20570,
60079,
80337,
70186,
70190,
20561,
80379,
70232,
72005,
70210,
10501149,
80190,
80197,
60610,
60614,
60618,
60619,
60620,
60624,
60658,
60659,
60078,
60083,
10501190,
21200003,
21501001,
10501101,
80286,
80293,
60737,
60745,
70090,
70092,
70095,
20006,
20007,
20009,
70183,
70185,
80392,
20010,
70191,
20018,
80165,
20024,
80112,
80115,
70208,
70211,
70215,
70216,
80088,
80090,
30101101,
99102100,
70004,
80124,
80125,
80132,
80139,
80142,
80156,
80158,
80163,
80164,
80171,
60201,
80178,
72004,
72008,
80001,
80002,
80003,
80006,
80007,
80008,
80009,
80034,
80035,
80038,
80040,
80047,
80048,
80060,
80068
);

CREATE GLOBAL TEMPORARY TABLE XDR_ACP_DX_TEMP(ICD_CODE VARCHAR2(10 BYTE), DX_FLAG VARCHAR2(25 BYTE))
ON COMMIT PRESERVE ROWS;

INSERT INTO XDR_ACP_DX_TEMP VALUES('335.20','ALS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('G12.21','ALS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('789.5','ASCITES');
INSERT INTO XDR_ACP_DX_TEMP VALUES('R18.8','ASCITES');
INSERT INTO XDR_ACP_DX_TEMP VALUES('789.59','ASCITES');
INSERT INTO XDR_ACP_DX_TEMP VALUES('789.51','ASCITES');
INSERT INTO XDR_ACP_DX_TEMP VALUES('456.21','BLEEDING');
INSERT INTO XDR_ACP_DX_TEMP VALUES('456.2','BLEEDING');
INSERT INTO XDR_ACP_DX_TEMP VALUES('456.20','BLEEDING');
INSERT INTO XDR_ACP_DX_TEMP VALUES('I85.01','BLEEDING');
INSERT INTO XDR_ACP_DX_TEMP VALUES('456.0','BLEEDING');
INSERT INTO XDR_ACP_DX_TEMP VALUES('I85.10','BLEEDING');
INSERT INTO XDR_ACP_DX_TEMP VALUES('I85.11','BLEEDING');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C15.3','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('150.5','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C16.1','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('151.9','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C25.2','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('157.3','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C25.7','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('157.9','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('158.0','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('158.9','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('191.5','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('197','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('197.7','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C78.7','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C79.81','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C79.82','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('198.89','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('202.80','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('200.70','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C71.8','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('200.73','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('200.76','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C16.8','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('150.2','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('150.9','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('151.2','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('151.3','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C22.1','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('155.2','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C71.6','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C71.9','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C78.00','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('197.1','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('197.5','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('198.4','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C79.52','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('198.7','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('199.0','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('201.50','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('205.00','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C48.8','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('J91.0','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C79.11','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('204.02','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('204.92','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C95.12','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('G96.12','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C85.29','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C25.8','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('151.4','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C16.2','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('151.6','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C16.9','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('157.0','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('157.1','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C48.1','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('191','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C71.3','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('191.7','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C78.1','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('197.2','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('198.0','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C79.19','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('198.2','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C79.2','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('198.3','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C79.60','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('201.40','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('201.70','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('349.2','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C79.89','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C22.4','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('205.02','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('208.12','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C79.32','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C15.9','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C16.0','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C16.6','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('151.8','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C25.0','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('191.0','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C71.0','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('191.1','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C71.1','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('191.4','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('191.8','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('191.9','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('197.4','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C78.5','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('197.8','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('198.6','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('198.8','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('198.82','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C81.39','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C15.8','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('150.1','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C15.5','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('151.0','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C16.3','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C25.3','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C25.9','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('197.3','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('197.6','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C78.6','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C79.70','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C80.0','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C81.19','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('789.51','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C79.9','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('200.77','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C91.92','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C92.02','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C91.52','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C81.09','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C91.A2','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('150','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C15.4','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('151.1','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('151.5','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('155.0','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C48.2','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('191.3','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C71.4','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('198','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C79.31','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('198.5','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C79.51','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C81.49','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('R18.0','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('200.71','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('200.78','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C91.02','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C85.19','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('150.3','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('150.4','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('151','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C16.5','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C25.1','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('157.2','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C48.0','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('158.8','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C71.2','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C79.00','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C81.29','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('201.90','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C22.3','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C22.2','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C81.99','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('200.72','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('200.75','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('511.81','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('204.12','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('205.12','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C91.12','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('150.0','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('150.8','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C16.4','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('155.1','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('157.8','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('191.2','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C71.5','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('191.6','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C71.7','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('197.0','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C78.2','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C78.39','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C78.4','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C78.89','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('198.1','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C79.49','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('198.81','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C85.89','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('201.00','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C81.79','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('201.60','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('200.7','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('200.74','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C92.12','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C91.62','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('C71','CANCER');
INSERT INTO XDR_ACP_DX_TEMP VALUES('428.40','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('I50.40','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('402.11','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('404.11','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('404.91','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('428.20','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('I50.31','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('I50.41','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('404.01','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('404.03','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('404.13','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('428.0','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('I50.20','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('428.22','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('428.30','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('398.91','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('402.91','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('I50.9','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('I50.23','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('428.32','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('I50.32','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('I50.33','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('428.4','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('428.42','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('428.43','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('404.93','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('428.9','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('428.23','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('I50.43','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('I11.0','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('I13.0','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('I13.2','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('I50.1','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('428.2','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('428.21','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('I50.30','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('428.31','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('428.33','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('402.01','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('I50.21','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('428.3','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('428.41','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('I50.42','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('I09.81','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('428.1','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('I50.22','CHF');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K70.41','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K70.4','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K70.1','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K73.2','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('571.6','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K74.3','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K74.5','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K70.31','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K70.11','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K74.4','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K75.4','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K74.69','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('572.2','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('571.5','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K73.0','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('571.40','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K74.60','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K73.8','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('571.49','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K73.9','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('571.4','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K70.0','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K70.3','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K70.9','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('571.1','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K70','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('571.0','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K70.10','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K70.30','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('571.41','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('571.42','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K70.40','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K70.2','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('571.2','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('571.3','CIRRHOSIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('493.20','COPD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('J43.9','COPD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('491.21','COPD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('491.2','COPD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('J44.9','COPD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('J44.1','COPD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('493.2','COPD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('496','COPD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('491.22','COPD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('J44.0','COPD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('493.21','COPD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('492.0','COPD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('491.20','COPD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('493.22','COPD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('J95.850','COPD_SPO2');
INSERT INTO XDR_ACP_DX_TEMP VALUES('Z99.1','COPD_SPO2');
INSERT INTO XDR_ACP_DX_TEMP VALUES('V46.11','COPD_SPO2');
INSERT INTO XDR_ACP_DX_TEMP VALUES('Z99.12','COPD_SPO2');
INSERT INTO XDR_ACP_DX_TEMP VALUES('V46.13','COPD_SPO2');
INSERT INTO XDR_ACP_DX_TEMP VALUES('V46.14','COPD_SPO2');
INSERT INTO XDR_ACP_DX_TEMP VALUES('Z99.81','COPD_SPO2');
INSERT INTO XDR_ACP_DX_TEMP VALUES('V46.12','COPD_SPO2');
INSERT INTO XDR_ACP_DX_TEMP VALUES('Z99.11','COPD_SPO2');
INSERT INTO XDR_ACP_DX_TEMP VALUES('V46.1','COPD_SPO2');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K72.90','ENCEPHALOPATHY');
INSERT INTO XDR_ACP_DX_TEMP VALUES('572.2','ENCEPHALOPATHY');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K72.91','ENCEPHALOPATHY');
INSERT INTO XDR_ACP_DX_TEMP VALUES('V42.0','ESRD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('585.6','ESRD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('V45.12','ESRD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('Z49.01','ESRD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('Z49.02','ESRD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('V56.31','ESRD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('V45.11','ESRD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('V56.8','ESRD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('V56','ESRD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('V56.2','ESRD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('Z49.32','ESRD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('N18.5','ESRD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('Z99.2','ESRD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('V45.1','ESRD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('V56.0','ESRD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('V56.1','ESRD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('V56.3','ESRD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('Z49.31','ESRD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('V56.32','ESRD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('Z94.0','ESRD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('585.5','ESRD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('N18.6','ESRD');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K76.7','HEPATORENAL');
INSERT INTO XDR_ACP_DX_TEMP VALUES('572.4','HEPATORENAL');
INSERT INTO XDR_ACP_DX_TEMP VALUES('332.0','PARKINSONS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('G20','PARKINSONS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K65.4','PERITONITIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K65.1','PERITONITIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('567.82','PERITONITIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('567.89','PERITONITIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('567.8','PERITONITIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('567.21','PERITONITIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K65.2','PERITONITIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K65.9','PERITONITIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('567.22','PERITONITIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K65.8','PERITONITIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('567.2','PERITONITIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('567.29','PERITONITIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K67','PERITONITIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('567.0','PERITONITIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('K65.0','PERITONITIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('567.81','PERITONITIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('567.9','PERITONITIS');
INSERT INTO XDR_ACP_DX_TEMP VALUES('567.23','PERITONITIS');
;

CREATE GLOBAL TEMPORARY TABLE XDR_ACP_DX_LOOKUP(DX_ID NUMBER, ICD_CODE VARCHAR2(10 BYTE), DX_FLAG VARCHAR2(25 BYTE))
ON COMMIT PRESERVE ROWS;
INSERT INTO XDR_ACP_DX_LOOKUP
select edg.dx_id
,drv.*
from XDR_ACP_DX_TEMP      drv
join edg_current_icd9           edg on drv.icd_CODE = edg.CODE 
UNION
select edg.dx_id
,drv.*
from XDR_ACP_DX_TEMP      drv
join edg_current_icd10           edg on drv.icd_CODE = edg.CODE 
;



-- Create denominator
exec P_ACP_CREATE_DENOMINATOR('xdr_acp_cohort');
--remove excluded patients
exec P_ACP_REMOVE_DECEASED('xdr_acp_cohort');
exec P_ACP_REMOVE_RESTRICTED('xdr_acp_cohort');
--apply problem list dx criterion
exec P_ACP_PL_DX('xdr_acp_cohort','CANCER');
exec P_ACP_PL_DX('xdr_acp_cohort','CHF');
exec P_ACP_PL_DX('xdr_acp_cohort','ALS');
exec P_ACP_PL_DX('xdr_acp_cohort','COPD');
exec P_ACP_PL_DX('xdr_acp_cohort','COPD_SPO2');
exec P_ACP_PL_DX('xdr_acp_cohort','CIRRHOSIS');
exec P_ACP_PL_DX('xdr_acp_cohort','ESRD');
exec P_ACP_PL_DX('xdr_acp_cohort','PERITONITIS');
exec P_ACP_PL_DX('xdr_acp_cohort','HEPATORENAL');
exec P_ACP_PL_DX('xdr_acp_cohort','BLEEDING');
exec P_ACP_PL_DX('xdr_acp_cohort','ASCITES');
exec P_ACP_PL_DX('xdr_acp_cohort','ENCEPHALOPATHY');
exec P_ACP_ESDL_DECOMPENSATION('xdr_acp_cohort');
--apply encounter dx criterion (3 years)
exec P_ACP_ENC_DX('xdr_acp_cohort','CANCER');
exec P_ACP_ENC_DX('xdr_acp_cohort','CHF');
exec P_ACP_ENC_DX('xdr_acp_cohort','ALS');
exec P_ACP_ENC_DX('xdr_acp_cohort','CIRRHOSIS');
exec P_ACP_ENC_DX('xdr_acp_cohort','ESRD');
--apply visit to departments criterion (oncology and nephrology)
exec P_ACP_DEPT_VISIT('xdr_acp_cohort','ONC',1,'CANCER');
exec P_ACP_DEPT_VISIT('xdr_acp_cohort','NEPH',1,'ESRD');
--apply admision for certain conditions (CHF AND COPD)
exec P_ACP_DEPT_ADMIT('xdr_acp_cohort',1,'CHF');
exec P_ACP_DEPT_ADMIT('xdr_acp_cohort',1,'COPD');

-- MELD
-- EJECTION FRACTION
-- Merge criterion
-- Age criteria
-- finalize selection



-- Create denominator
create or replace procedure p_acp_create_denominator(p_table_name in varchar2) as
 q1 varchar2(4000);
begin

 q1 := 'INSERT INTO ' || p_table_name  || '(PAT_ID,CREATION_DATE)  
        SELECT DISTINCT x.pat_id
            ,SYSDATE AS CREATION_DATE
        FROM (SELECT enc.pat_id
            ,count(enc.pat_enc_csn_id) AS pat_enc_count
        FROM clarity.pat_enc                        enc
        JOIN clarity.patient                        pat   ON enc.pat_id = pat.pat_id
        LEFT JOIN ctsi_research.' || p_table_name || '  coh   ON pat.pat_id = coh.pat_id and coh.pat_id IS NULL
        JOIN clarity.clarity_ser                    prov2 ON pat.cur_pcp_prov_id = prov2.PROV_ID  
                                                    AND prov2.user_id IS NOT NULL
        JOIN XDR_ACP_DEPT_DRV      dd on enc.department_id = dd.department_id
        WHERE 

                enc.effective_date_dt between sysdate - 366 and sysdate 
                and floor(months_between(TRUNC(sysdate), pat.birth_date)/12) >= 18
                and enc.enc_type_c = 101
                and (enc.appt_status_c is not null and enc.appt_status_c not in (3,4,5))
                GROUP BY enc.PAT_ID)x
        WHERE x.pat_enc_count > 1';
 EXECUTE IMMEDIATE q1;
end;


--remove excluded patients (DECEASED)
create or replace procedure p_acp_remove_deceased(p_table_name in varchar2) as
 q1 varchar2(4000);
begin

 q1 := 'DELETE FROM ' || p_table_name  ||
        ' WHERE pat_id IN 
            (SELECT DISTINCT coh.PAT_ID 
            FROM ' || p_table_name  || '     coh 
            JOIN patient            pat on coh.pat_id = pat.pat_id 
            WHERE 
                i2b2.f_death(pat.pat_id,2,1)  = ''Known Deceased'')';
 EXECUTE IMMEDIATE q1;
end;

--remove excluded patients (RESTRICTED)
create or replace procedure p_acp_remove_restricted(p_table_name in varchar2) as
 q1 varchar2(4000);
begin

 q1 := 'DELETE FROM ' || p_table_name  ||
        ' WHERE pat_id IN 
            (
                SELECT DISTINCT coh.pat_id  
                FROM xdr_ACP_COHORT                   coh 
                LEFT JOIN patient_fyi_flags           flags ON coh.pat_id = flags.patient_id 
                LEFT JOIN patient_3                         ON coh.pat_id = patient_3.pat_id 
                WHERE 
                            (patient_3.is_test_pat_yn = ''Y'' 
                            OR flags.PAT_FLAG_TYPE_C in (6,8,9,1018,1053))
            )';
 EXECUTE IMMEDIATE q1;
end;


--apply problem list dx criterion
create or replace procedure P_ACP_PL_DX(p_table_name in varchar2, p_dx_flag in varchar2) as
 q1 varchar2(4000);
begin

 q1 := '
  UPDATE ' || p_table_name  || 
  ' SET PL_' || p_dx_flag || ' = 1
  WHERE 
    PAT_ID IN (
                SELECT DISTINCT coh.pat_id
                FROM ' || p_table_name  || '          coh 
                JOIN problem_list                     pl    ON coh.pat_id = pl.pat_id AND pl.rec_archived_yn = ''N'' 
                JOIN zc_problem_status                zps   ON pl.problem_status_c = zps.problem_status_c 
                JOIN JSANZ.js_xdr_WALLING_DX_LOOKUP   drv   ON pl.dx_id = drv.dx_id AND drv.dx_flag = ''' || p_dx_flag || '''
  where  
        zps.name = ''Active'')';
 EXECUTE IMMEDIATE q1;
end;

--apply problem list dx criteria for ESDL decompensation combination
create or replace procedure P_ACP_ESDL_DECOMPENSATION(p_table_name in varchar2) as
 q1 varchar2(4000);
begin

 q1 := '
  UPDATE ' || p_table_name  || 
  ' SET pl_ESDL_decompensation = 1 
  WHERE  
        PL_PERITONITIS = 1 
        OR PL_ASCITES = 1 
        OR PL_BLEEDING = 1 
        OR PL_ENCEPHALOPATHY = 1 
        OR PL_HEPATORENAL = 1 
        OR PL_PERITONITIS = 1';
 EXECUTE IMMEDIATE q1;
end;

--apply encounter dx criterion (3 years)
create or replace procedure P_ACP_ENC_DX(p_table_name in varchar2, p_dx_flag in varchar2) as
 q1 varchar2(4000);
begin

 q1 := 'UPDATE ' || p_table_name  || ' 
  SET DX_' || p_dx_flag || ' = 1 
  WHERE 
    PAT_ID IN ( 
                SELECT DISTINCT coh.pat_id 
                FROM ' || p_table_name  || '          coh 
                JOIN pat_enc_dx                     dx on coh.pat_id = dx.pat_id 
                JOIN JSANZ.js_xdr_WALLING_DX_LOOKUP   drv   ON dx.dx_id = drv.dx_id AND drv.dx_flag = ''' || p_dx_flag || ''' 
                left join pat_enc                   enc on dx.pat_enc_csn_id = enc.pat_enc_csn_id 
                WHERE 
                    dx.CONTACT_DATE between sysdate - (365.25 * 3) and sysdate 
                    AND enc.enc_type_c = 101)';
EXECUTE IMMEDIATE q1;
end;

--apply visit to departments criterion (oncology and nephrology)
create or replace procedure P_ACP_DEPT_VISIT(p_table_name in varchar2, p_dept in varchar2, p_years in number, p_criteria in varchar2) as
 q1 varchar2(4000);
begin
 q1 := 'UPDATE ' || p_table_name  || ' 
  SET ' || p_dept || '_VISIT = 1  
  WHERE  
    PAT_ID IN ( 
                SELECT DISTINCT  coh.PAT_ID 
FROM ' || p_table_name  || '          coh 
JOIN clarity.PAT_ENC                            enc on coh.pat_id = enc.pat_id 
LEFT JOIN clarity.CLARITY_DEP                   dep ON enc.department_id = dep.department_id 
LEFT JOIN clarity.v_cube_d_provider             prv ON enc.visit_prov_id = prv.provider_id 
WHERE 
    (coh.PL_' || p_criteria || ' = 1 OR coh.DX_' || p_criteria || ' = 1) 
    AND 
            (REGEXP_LIKE(dep.specialty,''' || p_dept || ''',''i'') 
            OR 
            REGEXP_LIKE(prv.primary_specialty,''' || p_dept || ''',''i'') 
            ) 
    and enc.enc_type_c = 101 
    AND enc.EFFECTIVE_DATE_DT between sysdate - (365.25 * '|| p_years ||' ) AND sysdate
    )';
 EXECUTE IMMEDIATE q1;
end;

--apply admision for certain conditions (CHF AND COPD)
create or replace procedure P_ACP_DEPT_ADMIT(p_table_name in varchar2, p_years in number, p_criteria in varchar2) as
 q1 varchar2(4000);
begin
 q1 := 'UPDATE ' || p_table_name  || ' 
  SET ' || p_criteria || '_ADMIT = 1 
  WHERE 
    PAT_ID IN ( 
                SELECT DISTINCT  coh.PAT_ID 
                FROM ' || p_table_name  || '          coh 
                JOIN pat_enc_hsp                     enc ON coh.pat_id = enc.pat_id 
                JOIN pat_enc_dx                      dx ON enc.pat_enc_csn_id = dx.pat_enc_csn_id 
                join JSANZ.js_xdr_walling_dx_lookup  drv on dx.dx_id = drv.dx_id AND drv.DX_FLAG = ''' || p_criteria || ''' 
                WHERE 
                    (coh.PL_' || p_criteria || ' = 1 OR COH.DX_' || p_criteria || ' = 1) 
                    AND dx.contact_date between sysdate - (365.25 * '|| p_years ||' ) AND sysdate
                    )';
 EXECUTE IMMEDIATE q1;
end;


-- MELD


-- EJECTION FRACTION
-- Merge criterion
-- Age criteria
-- finalize selection