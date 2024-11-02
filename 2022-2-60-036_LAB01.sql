CREATE TABLE INSTRUCTOR_2022260036(
ID NUMBER,
NAME VARCHAR2(20),
DEPT_NAME VARCHAR2(20),
SALARY NUMBER
);
SELECT * FROM instructor_2022260036;
CREATE TABLE COURSE_2022260036(
COURSE_ID VARCHAR2(20),
TITLE VARCHAR2(50),
DEPT_NAME VARCHAR2(20),
CREDITS NUMBER
);
SELECT * FROM COURSE_2022260036;
INSERT INTO instructor_2022260036 VALUES(10101, ' Srinivasan', ' Comp. Sci.',65000);
INSERT INTO instructor_2022260036 VALUES(12121, ' Wu', ' Finance',90000);
INSERT INTO instructor_2022260036 VALUES(15151, ' Mozart', ' Music',40000);
INSERT INTO instructor_2022260036 VALUES(22222, ' Einstein', ' Physics',95000);
INSERT INTO instructor_2022260036 VALUES(32343, ' El Said', ' History',60000);
INSERT INTO instructor_2022260036 VALUES(33456, ' Gold', ' Physics',87000);
INSERT INTO instructor_2022260036 VALUES(45565, ' Katz', ' Comp. Sci.',75000);
INSERT INTO instructor_2022260036 VALUES(58583, ' Califieri', ' History',62000);
INSERT INTO instructor_2022260036 VALUES(76543, ' Singh', ' Finance',80000);
INSERT INTO instructor_2022260036 VALUES(76766, ' Crick', ' Biology',72000);
INSERT INTO instructor_2022260036 VALUES(83821, ' Brandt', ' Comp. Sci.',92000);
INSERT INTO instructor_2022260036 VALUES(98345, ' Kim', ' Elec. Eng.',80000);
SELECT * FROM instructor_2022260036;
INSERT INTO course_2022260036 VALUES('BIO-101', ' Intro. to Biology', ' Biology',4);
INSERT INTO course_2022260036 VALUES('BIO-301', ' Genetics', ' Biology',4);
INSERT INTO course_2022260036 VALUES('BIO-399', ' Computational Biology', ' Biology',3);
INSERT INTO course_2022260036 VALUES('CS-101', ' Intro. to Computer Science', ' Comp. Sci.',4);
INSERT INTO course_2022260036 VALUES('CS-190', ' Game Design', ' Comp. Sci.',4);
INSERT INTO course_2022260036 VALUES('CS-315', ' Robotics', ' Comp. Sci.',3);
INSERT INTO course_2022260036 VALUES('CS-319', ' Image Processing', ' Comp. Sci.',3);
INSERT INTO course_2022260036 VALUES('CS-347', ' Database System Concepts', ' Comp. Sci.',3);
INSERT INTO course_2022260036 VALUES('EE-181', ' Intro. to Digital Systems', ' Elec. Eng.',3);
INSERT INTO course_2022260036 VALUES('FIN-201', ' Investment Banking', ' Finance',3);
INSERT INTO course_2022260036 VALUES('HIS-351', ' World History', ' History',3);
INSERT INTO course_2022260036 VALUES('MU-199', ' Music Video Production', ' Music',3);
INSERT INTO course_2022260036 VALUES('PHY-101', ' Physical Principles', ' Physics',4);
SELECT * FROM course_2022260036;
SELECT NAME
FROM INSTRUCTOR_2022260036;
SELECT COURSE_ID,TITLE
FROM course_2022260036;
SELECT NAME,DEPT_NAME
FROM instructor_2022260036
WHERE ID=22222;
SELECT TITLE,CREDITS
FROM course_2022260036
WHERE DEPT_NAME=' Comp. Sci.';
SELECT NAME,DEPT_NAME
FROM instructor_2022260036
WHERE SALARY>70000;
SELECT TITLE
FROM course_2022260036
WHERE CREDITS>3;
SELECT NAME,DEPT_NAME
FROM instructor_2022260036
WHERE SALARY BETWEEN 80000 AND 100000;
SELECT TITLE,CREDITS
FROM course_2022260036
WHERE NOT DEPT_NAME=' Comp. Sci.';
SELECT *
FROM instructor_2022260036;
SELECT *
FROM course_2022260036
WHERE DEPT_NAME=' Biology' AND NOT CREDITS=4;