
  CREATE TABLE "XDR_ACP_COHORT" 
   (	"PAT_ID" VARCHAR2(18 BYTE), 
	"CURRENT_AGE" NUMBER,
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
    "DX_COPD" NUMBER, 
	"DX_ESRD" NUMBER, 
	"DX_CIRRHOSIS" NUMBER, 
    "DX_PERITONITIS" NUMBER, 
    "DX_ASCITES" NUMBER, 
    "DX_BLEEDING" NUMBER, 
    "DX_ENCEPHALOPATHY" NUMBER, 
    "DX_HEPATORENAL" NUMBER, 
    "DX_ESDL_DECOMPENSATION" NUMBER, 
	"NEPH_VISIT" NUMBER, 
	"ONC_VISIT" NUMBER, 
	"COPD_ADMIT" NUMBER, 
	"CHF_ADMIT" NUMBER, 
    "MELD" NUMBER, 
    "EF" NUMBER,
    "CHEMO" NUMBER, 
    "AD_POLST_THREE" NUMBER, 
    "AD_POLST_ALL" NUMBER,   
    "CANCER" NUMBER, 
	"ESLD" NUMBER, 
	"COPD" NUMBER, 
	"CHF" NUMBER, 
	"ESRD" NUMBER, 
	"ALS" NUMBER, 
    "ALS" NUMBER, 
    "AGE" NUMBER
   )

--It needs a section for the driver-specific tables/references
CREATE GLOBAL TEMPORARY TABLE XDR_ACP_DEPT_DRV(DEPARTMENT_ID NUMBER)
ON COMMIT PRESERVE ROWS;

INSERT INTO XDR_ACP_DEPT_DRV
SELECT DISTINCT DEPARTMENT_ID
FROM clarity.CLARITY_DEPT
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
COMMIT;

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


CREATE GLOBAL TEMPORARY TABLE XDR_ACP_PAT_STATUS(appt_status_c NUMBER)
ON COMMIT PRESERVE ROWS;
INSERT INTO XDR_ACP_PAT_STATUS VALUES(3);
INSERT INTO XDR_ACP_PAT_STATUS VALUES(4);
INSERT INTO XDR_ACP_PAT_STATUS VALUES(5);

--Chemotherapy CPT codes
CREATE GLOBAL TEMPORARY TABLE XDR_ACP_CHEMO_CPT(CPT_CODE VARCHAR2(25 BYTE))
ON COMMIT PRESERVE ROWS;
INSERT INTO XDR_ACP_CHEMO_CPT VALUES(96401);COMMIT;
INSERT INTO XDR_ACP_CHEMO_CPT VALUES(96402);COMMIT;
INSERT INTO XDR_ACP_CHEMO_CPT VALUES(96405);COMMIT;
INSERT INTO XDR_ACP_CHEMO_CPT VALUES(96406);COMMIT;
INSERT INTO XDR_ACP_CHEMO_CPT VALUES(96409);COMMIT;
INSERT INTO XDR_ACP_CHEMO_CPT VALUES(96411);COMMIT;
INSERT INTO XDR_ACP_CHEMO_CPT VALUES(96413);COMMIT;
INSERT INTO XDR_ACP_CHEMO_CPT VALUES(96415);COMMIT;
INSERT INTO XDR_ACP_CHEMO_CPT VALUES(96416);COMMIT;
INSERT INTO XDR_ACP_CHEMO_CPT VALUES(96417);COMMIT;
INSERT INTO XDR_ACP_CHEMO_CPT VALUES(96423);COMMIT;
INSERT INTO XDR_ACP_CHEMO_CPT VALUES(96420);COMMIT;
INSERT INTO XDR_ACP_CHEMO_CPT VALUES(96422);COMMIT;
INSERT INTO XDR_ACP_CHEMO_CPT VALUES(96425);COMMIT;
INSERT INTO XDR_ACP_CHEMO_CPT VALUES(96440);COMMIT;
INSERT INTO XDR_ACP_CHEMO_CPT VALUES(96446);COMMIT;
INSERT INTO XDR_ACP_CHEMO_CPT VALUES(96450);COMMIT;


-- Create denominator
exec P_ACP_CREATE_DENOMINATOR('xdr_acp_cohort');        --117 seconds
--remove excluded patients
exec P_ACP_REMOVE_DECEASED('xdr_acp_cohort');           --657 seconds
exec P_ACP_REMOVE_RESTRICTED('xdr_acp_cohort');         -- 5 seconds
--apply problem list dx criterion
exec P_ACP_PL_DX('xdr_acp_cohort','CANCER');            -- 5 seconds
exec P_ACP_PL_DX('xdr_acp_cohort','CHF');               -- 2 seconds
exec P_ACP_PL_DX('xdr_acp_cohort','ALS');               -- .7 seconds
exec P_ACP_PL_DX('xdr_acp_cohort','COPD');               -- 13 seconds
exec P_ACP_PL_DX('xdr_acp_cohort','COPD_SPO2');               -- 1.3 seconds
exec P_ACP_PL_DX('xdr_acp_cohort','CIRRHOSIS');               -- 9 seconds
exec P_ACP_PL_DX('xdr_acp_cohort','ESRD');               --  5 seconds
exec P_ACP_PL_DX('xdr_acp_cohort','PERITONITIS');               -- 1 seconds
exec P_ACP_PL_DX('xdr_acp_cohort','HEPATORENAL');               -- .3 seconds
exec P_ACP_PL_DX('xdr_acp_cohort','BLEEDING');               -- .3 seconds
exec P_ACP_PL_DX('xdr_acp_cohort','ASCITES');               -- 2 seconds
exec P_ACP_PL_DX('xdr_acp_cohort','ENCEPHALOPATHY');               -- 1 seconds
exec P_ACP_PL_ESDL_DECOMPENSATION('xdr_acp_cohort');               -- 0 seconds
--apply encounter dx criterion (3 years)
exec P_ACP_ENC_DX('xdr_acp_cohort','CANCER');               -- 284 seconds
exec P_ACP_ENC_DX('xdr_acp_cohort','CHF');                  -- 150 secnds
exec P_ACP_ENC_DX('xdr_acp_cohort','ALS');                  -- 4 seconds
exec P_ACP_ENC_DX('xdr_acp_cohort','CIRRHOSIS');            --103 seconds
exec P_ACP_ENC_DX('xdr_acp_cohort','ESRD');                 --72 seconds
exec P_ACP_ENC_DX('xdr_acp_cohort','PERITONITIS');          -- 4 seconds
exec P_ACP_ENC_DX('xdr_acp_cohort','ASCITES');              --10 seconds
exec P_ACP_ENC_DX('xdr_acp_cohort','BLEEDING');             --2 seconds
exec P_ACP_ENC_DX('xdr_acp_cohort','ENCEPHALOPATHY');       --3 seconds
exec P_ACP_ENC_DX('xdr_acp_cohort','HEPATORENAL');          --.5 seconds
EXEC P_ACP_DX_ESDL_DECOMPENSATION('xdr_acp_cohort');        --.1 seconds
--apply visit to departments criterion (oncology and nephrology)
exec P_ACP_DEPT_VISIT('xdr_acp_cohort','ONC',1,'CANCER');       --110 seconds
exec P_ACP_DEPT_VISIT('xdr_acp_cohort','NEPH',1,'ESRD');            --8 seconds
--apply admision for certain conditions (CHF AND COPD)
exec P_ACP_DEPT_ADMIT('xdr_acp_cohort',1,'CHF');                --50 seconds
exec P_ACP_DEPT_ADMIT('xdr_acp_cohort',1,'COPD');               --40 seconds
--chemotherapy
exec P_ACP_CHEMO_PROC('xdr_acp_cohort','XDR_ACP_CHEMO_CPT',2);      --568 seconds
exec P_ACP_CHEMO_MEDS('xdr_acp_cohort','CHEMO',2);                  --260 seconds

-- MELD
exec P_ACP_LAB_PULL('xdr_acp_lab','xdr_acp_cohort','jsanz.xdr_WALLING_LABDRV',3);

-- EJECTION FRACTION

-- Merge criterion
exec P_ACP_MERGE_CRITERION('xdr_acp_cohort');               --0.1 seconds
-- Age criteria
exec P_ACP_AGE_CRTIERIA('xdr_acp_cohort','75');             --0.1 seconds
-- randomization



-- Create denominator
create or replace procedure p_acp_create_denominator(p_cohort_table in varchar2) as
 q1 varchar2(4000);
begin

 q1 := 'INSERT INTO ' || p_cohort_table  || '(PAT_ID,current_age, CREATION_DATE)  
        SELECT DISTINCT x.pat_id
                    ,FLOOR(MONTHS_BETWEEN(TRUNC(sysdate),TRUNC(pat.BIRTH_DATE))/12) AS CURRENT_AGE
            ,SYSDATE AS CREATION_DATE
        FROM (SELECT enc.pat_id
                    ,PAT.BIRTH_DATE
            ,count(enc.pat_enc_csn_id) AS pat_enc_count
        FROM clarity.pat_enc                        enc
        JOIN clarity.patient                        pat   ON enc.pat_id = pat.pat_id
        LEFT JOIN ctsi_research.' || p_cohort_table || '  coh   ON pat.pat_id = coh.pat_id and coh.pat_id IS NULL
        JOIN clarity.clarity_ser                    prov2 ON pat.cur_pcp_prov_id = prov2.PROV_ID  
                                                    AND prov2.user_id IS NOT NULL
        JOIN XDR_ACP_DEPT_DRV      dd on enc.department_id = dd.department_id
        WHERE 
                enc.effective_date_dt between sysdate - 366 and sysdate 
                and floor(months_between(TRUNC(sysdate), pat.birth_date)/12) >= 18
                and enc.enc_type_c = 101
                and (enc.appt_status_c is not null and enc.appt_status_c not in (3,4,5))
                GROUP BY enc.PAT_ID,
                    PAT.BIRTH_DATE)x
        JOIN clarity.patient                        pat   ON x.pat_id = pat.pat_id
        WHERE x.pat_enc_count > 1';
 EXECUTE IMMEDIATE q1;
end;

--remove excluded patients (DECEASED)
create or replace procedure p_acp_remove_deceased(p_cohort_table in varchar2) as
 q1 varchar2(4000);
begin

 q1 := 'DELETE FROM ' || p_cohort_table  ||
        ' WHERE pat_id IN 
            (SELECT DISTINCT coh.PAT_ID 
            FROM ' || p_cohort_table  || '     coh 
            JOIN patient            pat on coh.pat_id = pat.pat_id 
            WHERE 
                i2b2.f_death(pat.pat_id,2,1)  = ''Known Deceased'')';
 EXECUTE IMMEDIATE q1;
end;

--remove excluded patients (RESTRICTED)
create or replace procedure p_acp_remove_restricted(p_cohort_table in varchar2) as
 q1 varchar2(4000);
begin

 q1 := 'DELETE FROM ' || p_cohort_table  ||
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
create or replace procedure P_ACP_PL_DX(p_cohort_table in varchar2, p_dx_flag in varchar2) as
 q1 varchar2(4000);
begin

 q1 := '
  UPDATE ' || p_cohort_table  || 
  ' SET PL_' || p_dx_flag || ' = 1
  WHERE 
    PAT_ID IN (
                SELECT DISTINCT coh.pat_id
                FROM ' || p_cohort_table  || '          coh 
                JOIN problem_list                     pl    ON coh.pat_id = pl.pat_id AND pl.rec_archived_yn = ''N'' 
                JOIN zc_problem_status                zps   ON pl.problem_status_c = zps.problem_status_c 
                JOIN JSANZ.js_xdr_WALLING_DX_LOOKUP   drv   ON pl.dx_id = drv.dx_id AND drv.dx_flag = ''' || p_dx_flag || '''
  where  
        zps.name = ''Active'')';
 EXECUTE IMMEDIATE q1;
end;

--apply problem list dx criteria for ESDL decompensation combination
create or replace procedure P_ACP_PL_ESDL_DECOMPENSATION(p_cohort_table in varchar2) as
 q1 varchar2(4000);
begin

 q1 := '
  UPDATE ' || p_cohort_table  || 
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
create or replace procedure P_ACP_ENC_DX(p_cohort_table in varchar2, p_dx_flag in varchar2) as
 q1 varchar2(4000);
begin

 q1 := 'UPDATE ' || p_cohort_table  || ' 
  SET DX_' || p_dx_flag || ' = 1 
  WHERE 
    PAT_ID IN ( 
                SELECT DISTINCT coh.pat_id 
                FROM ' || p_cohort_table  || '          coh 
                JOIN pat_enc_dx                     dx on coh.pat_id = dx.pat_id 
                JOIN JSANZ.js_xdr_WALLING_DX_LOOKUP   drv   ON dx.dx_id = drv.dx_id AND drv.dx_flag = ''' || p_dx_flag || ''' 
                left join pat_enc                   enc on dx.pat_enc_csn_id = enc.pat_enc_csn_id 
                WHERE 
                    dx.CONTACT_DATE between sysdate - (365.25 * 3) and sysdate 
                    AND enc.enc_type_c = 101)';
EXECUTE IMMEDIATE q1;
end;


--apply problem list dx criteria for ESDL decompensation combination
create or replace procedure P_ACP_DX_ESDL_DECOMPENSATION(p_cohort_table in varchar2) as
 q1 varchar2(4000);
begin

 q1 := '
  UPDATE ' || p_cohort_table  || 
  ' SET DX_ESDL_decompensation = 1 
  WHERE  
        DX_PERITONITIS = 1 
        OR DX_ASCITES = 1 
        OR DX_BLEEDING = 1 
        OR DX_ENCEPHALOPATHY = 1 
        OR DX_HEPATORENAL = 1 
        OR DX_PERITONITIS = 1';
 EXECUTE IMMEDIATE q1;
end;



--apply visit to departments criterion (oncology and nephrology)
create or replace procedure P_ACP_DEPT_VISIT(p_cohort_table in varchar2, p_dept in varchar2, p_years in number, p_criteria in varchar2) as
 q1 varchar2(4000);
begin
 q1 := 'UPDATE ' || p_cohort_table  || ' 
  SET ' || p_dept || '_VISIT = 1  
  WHERE  
    PAT_ID IN ( 
                SELECT DISTINCT  coh.PAT_ID 
FROM ' || p_cohort_table  || '          coh 
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
create or replace procedure P_ACP_DEPT_ADMIT(p_cohort_table in varchar2, p_years in number, p_criteria in varchar2) as
 q1 varchar2(4000);
begin
 q1 := 'UPDATE ' || p_cohort_table  || ' 
  SET ' || p_criteria || '_ADMIT = 1 
  WHERE 
    PAT_ID IN ( 
                SELECT DISTINCT  coh.PAT_ID 
                FROM ' || p_cohort_table  || '          coh 
                JOIN pat_enc_hsp                     enc ON coh.pat_id = enc.pat_id 
                JOIN pat_enc_dx                      dx ON enc.pat_enc_csn_id = dx.pat_enc_csn_id 
                join JSANZ.js_xdr_walling_dx_lookup  drv on dx.dx_id = drv.dx_id AND drv.DX_FLAG = ''' || p_criteria || ''' 
                WHERE 
                    (coh.PL_' || p_criteria || ' = 1 OR COH.DX_' || p_criteria || ' = 1) 
                    AND dx.contact_date between sysdate - (365.25 * '|| p_years ||' ) AND sysdate
                    )';
 EXECUTE IMMEDIATE q1;
end;


-- MELD: pull labs
create or replace procedure P_ACP_LAB_PULL(p_table_name in varchar2, p_cohort_table in varchar2, p_driver_table  in varchar2, p_timeframe in number) as
 q1 varchar2(4000);
 q2 varchar2(4000);
begin

q1 := 'CREATE GLOBAL TEMPORARY TABLE ' || p_table_name  || ' ("PAT_ID" VARCHAR2(18 BYTE), 
	"PAT_ENC_CSN_ID" NUMBER(18,0), 
	"PROC_CODE" VARCHAR2(91 BYTE), 
	"COMPONENT_ID" NUMBER(18,0), 
	"RESULT_TIME" DATE, 
	"LAB_FLAG" VARCHAR2(50 BYTE),
	"HARM_NUM_VAL" NUMBER
    ) 
 ON COMMIT PRESERVE ROWS';

 q2 := 'INSERT INTO ' || p_table_name || '(PAT_ID,PAT_ENC_CSN_ID,PROC_CODE,COMPONENT_ID, RESULT_TIME, LAB_FLAG, HARM_NUM_VAL) 
     SELECT 	DISTINCT coh.pat_id, 
                o.pat_enc_csn_id, 
                p.proc_code, 
                o.component_id, 
                p.result_time, 
                drv.LAB_CATEGORY as LAB_FLAG, 
                CASE WHEN REGEXP_LIKE(o.ord_value,'':'',''i'') or REGEXP_SUBSTR(o.ord_value,''[1-9]\d*(\.\,\d+)?'') IS NULL 
                       THEN o.ord_num_value 
                  WHEN REGEXP_LIKE(o.ord_value,''[<>]=*'',''i'') 
                       THEN TO_NUMBER(REGEXP_SUBSTR(o.ord_value,''-?[[:digit:],.]*$''),''9999999999D9999999999'', ''NLS_NUMERIC_CHARACTERS = ''''.,'''''' ) 
                  WHEN REGEXP_LIKE(o.ord_value,''%'',''i'')  
                       THEN TO_NUMBER(REGEXP_SUBSTR(o.ord_value,''[1-9]\d*(\.\,\d+)?''),''9999999999D9999999999'', ''NLS_NUMERIC_CHARACTERS = ''''.,'''''' )   
                  ELSE o.ord_num_value END as harm_num_val                       
      FROM order_results                o 
      JOIN order_proc                   p   ON p.order_proc_id = o.order_proc_id 
      JOIN ' || p_cohort_table  || '    coh ON p.pat_id = coh.pat_id AND (coh.PL_CIRRHOSIS = 1 OR COH.DX_CIRRHOSIS = 1) 
      JOIN ' || p_driver_table  || '    drv ON p.proc_id = drv.proc_id and o.component_id = drv.component_id 
      JOIN order_proc_2                 op2 ON p.ORDER_PROC_ID = op2.ORDER_PROC_ID  
      JOIN clarity_component            cc  ON o.component_id = cc.component_id 
      LEFT JOIN lnc_db_main             ldm ON cc.DEFAULT_LNC_ID = ldm.record_id  
      WHERE  
              p.order_type_c IN (7) 
              AND o.ord_value IS NOT NULL 
              AND o.order_proc_id IS NOT NULL 
              AND p.order_time BETWEEN SYSDATE - (365.25 * ' || p_timeframe || ') AND SYSDATE';
 
EXECUTE IMMEDIATE q1; 
EXECUTE IMMEDIATE 'COMMIT';   
EXECUTE IMMEDIATE q2;
EXECUTE IMMEDIATE 'COMMIT';                    
end;

-- MELD: processed labs

-- MELD: apply MELD criteria


--Chemotherapy

create or replace procedure P_ACP_CHEMO_PROC(p_cohort_table in varchar2, p_driver_table  in varchar2, p_timeframe in number) as
 q1 varchar2(4000);

begin
 q1 := 'UPDATE ' || p_cohort_table  || ' 
  SET CHEMO = 1  
  WHERE  
    PAT_ID IN (      
        SELECT coh.pat_id 
          FROM ' || p_cohort_table  || '           coh 
          JOIN pat_enc                  enc on coh.pat_id = enc.pat_id 
          JOIN arpb_transactions                  cpt  ON enc.pat_enc_csn_id = cpt.pat_enc_csn_id  
          join ' || p_driver_table  || '                  drv on cpt.cpt_code = drv.cpt_code 
        WHERE 
            (coh.PL_CANCER = 1 OR COH.DX_CANCER = 1) 
            AND TRUNC(enc.EFFECTIVE_DATE_DT ) BETWEEN sysdate - (365.25 * ' || p_timeframe || ') AND sysdate 
        UNION 
        SELECT coh.pat_id 
          FROM ' || p_cohort_table  || '          coh 
          join hsp_account                     acc on coh.pat_id = acc.pat_id  
          JOIN HSP_TRANSACTIONS                  tx  ON acc.HSP_ACCOUNT_ID = tx.HSP_ACCOUNT_ID  
          JOIN pat_enc                          enc on tx.pat_enc_csn_id = enc.pat_enc_csn_id 
          join ' || p_driver_table  || '                  drv on tx.cpt_code = drv.cpt_code 
        WHERE 
            (coh.PL_CANCER = 1 OR COH.DX_CANCER = 1) 
            AND TRUNC(enc.EFFECTIVE_DATE_DT ) BETWEEN sysdate - (365.25 * ' || p_timeframe || ') AND sysdate)';


EXECUTE IMMEDIATE q1; 
EXECUTE IMMEDIATE 'COMMIT';  
end;
create or replace procedure P_ACP_CHEMO_MEDS(p_cohort_table in varchar2, p_med_keyword  in varchar2, p_timeframe in number) as
 q1 varchar2(4000);

begin
 q1 := 'UPDATE ' || p_cohort_table  || ' 
  SET CHEMO = 1  
  WHERE  
    PAT_ID IN (      
        SELECT DISTINCT  med1.pat_id 
        FROM ( 
        SELECT  m.pat_id, 
            m.order_med_id,  
          case when m.medication_id != 800001 then m.medication_id 
               else coalesce(omi.dispensable_med_id, m.user_sel_med_id) end as used_med_id,        
            zom.name as ordering_mode, 
            zoc.name as order_class 
        FROM ' || p_cohort_table  || '      coh 
        JOIN order_med                      m   ON coh.pat_id = m.pat_id 
        LEFT JOIN order_medinfo omi on m.order_med_id = omi.order_med_id 
        left join zc_order_class zoc on m.order_class_C = zoc.order_class_c 
        left join zc_ordering_mode zom on m.ordering_mode_c = zom.ordering_mode_c 
        WHERE  
            (coh.PL_CANCER = 1 OR COH.DX_CANCER = 1) 
            AND TRUNC(m.ordering_date) BETWEEN sysdate - (365.25 * ' || p_timeframe ||') AND sysdate 
            and zoc.name <> ''Historical Med'' 
    ) med1 
LEFT JOIN clarity_medication cm on med1.used_med_id = cm.medication_id 
LEFT JOIN mar_admin_info  mar   ON med1.order_med_id = mar.order_med_id 
LEFT JOIN zc_mar_rslt     xmrs  ON mar.mar_action_c = xmrs.result_c 
WHERE 
  (
  (med1.ordering_mode = ''Inpatient''                                       
            AND nvl(mar.taken_time,to_date(''01/01/0001'')) <> ''01/01/0001''       -- taken_time was valid
            AND nvl(mar.sig,-1) > 0                                             -- and SIG was valid and > 0
            AND nvl(mar.mar_action_c,-1) <> 125                                 -- and action was anything other than ''Not Given''
         ) 
         OR med1.ordering_mode != ''Inpatient'' 
        )
    AND med1.used_med_id IS NOT NULL 
    AND (
        cm.pharm_subclass_c in (2150)  
        or regexp_like(cm.name,''' || p_med_keyword || ''',''i'') 
        or regexp_like(cm.generic_name,''' || p_med_keyword || ''',''i'') 
    )
    )';

EXECUTE IMMEDIATE q1; 
EXECUTE IMMEDIATE 'COMMIT';  
end;

-- EJECTION FRACTION


-- Merge criterion
create or replace procedure P_ACP_MERGE_CRITERION(p_cohort_table in varchar2) as
 q1 varchar2(4000);
 q2 varchar2(4000);
 q3 varchar2(4000);
 q4 varchar2(4000);
 q5 varchar2(4000);
 q6 varchar2(4000);

begin
 q1 := 'UPDATE ' || p_cohort_table  || ' 
  SET ALS = 1  ,SELECTED = 1 
  WHERE  
    (PL_ALS = 1 OR DX_ALS = 1)';

 q2 := 'UPDATE ' || p_cohort_table  || ' 
  SET CANCER = 1  ,SELECTED = 1 
  WHERE  
    (PL_CANCER = 1 AND ONC_VISIT = 1)
    OR
    (DX_CANCER = 1 AND CHEMO = 1)
    '
    ;


q3 := 'UPDATE ' || p_cohort_table  || ' 
  SET CHF = 1 ,SELECTED = 1 
  WHERE  
        ((PL_CHF = 1 OR DX_CHF = 1) AND EF = 1)
        OR
        (PL_CHF = 1  AND CHF_ADMIT = 1)'
    ;

q4 := 'UPDATE ' || p_cohort_table  || ' 
  SET COPD = 1  ,SELECTED = 1 
  WHERE  
        (PL_COPD = 1 AND COPD_ADMIT = 1)'
    ;

q5 := 'UPDATE ' || p_cohort_table  || ' 
  SET ESLD = 1 ,SELECTED = 1  
  WHERE  
        PL_CIRRHOSIS = 1 
        AND 
        (PL_ESDL_DECOMPENSATION = 1
        OR dx_ESDL_decompensation = 1
        OR MELD = 1)'
    ;

q6 := 'UPDATE ' || p_cohort_table  || ' 
  SET ESRD = 1 ,SELECTED = 1 
  WHERE  
        (
            (PL_ESRD = 1 OR DX_ESRD = 1 )
        AND NEPH_VISIT = 1
        )
        OR
        (PL_ESRD = 1 AND DX_ESRD = 1 )'
    ;
EXECUTE IMMEDIATE q1; 
EXECUTE IMMEDIATE 'COMMIT';  
EXECUTE IMMEDIATE q2; 
EXECUTE IMMEDIATE 'COMMIT';  
EXECUTE IMMEDIATE q3; 
EXECUTE IMMEDIATE 'COMMIT';  
EXECUTE IMMEDIATE q4; 
EXECUTE IMMEDIATE 'COMMIT'; 
EXECUTE IMMEDIATE q5; 
EXECUTE IMMEDIATE 'COMMIT'; 
EXECUTE IMMEDIATE q6; 
EXECUTE IMMEDIATE 'COMMIT'; 

end;

-- Age criteria
create or replace procedure P_ACP_AGE_CRTIERIA(p_table_name in varchar2, p_age_limit in varchar2) as
 q1 varchar2(4000);
begin

 q1 := 'UPDATE ' || p_table_name  || ' 
        SET AGE = 1
        WHERE 
            SELECTED IS NULL
            AND (pl_copd IS NOT NULL
            OR pl_chf IS NOT NULL 
            OR PL_ESRD IS NOT NULL
            OR PL_ALS IS NOT NULL 
            OR PL_CANCER IS NOT NULL)
            and CURRENT_AGE >= ' || p_age_limit || '';
EXECUTE IMMEDIATE q1;
end; 


-- randomization