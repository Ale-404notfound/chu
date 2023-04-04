CREATE DATABASE SPJ;
use database SPJ;
CREATE TABLE S(
	SNO char(9) primary key,
	SNAME char(9),
	STATUS char(9),
	CITY char(9)
);
CREATE TABLE P(
	PNO char(9) primary key,
	PNAME char(9),
	COLOR char(2),
	WEIGHT SMALLINT
);
CREATE TABLE J(
	JNO char(9) primary key,
	JNAME char(9),
	CITY char(9)
);
CREATE TABLE SPJ(
	SNO char(9),
	PNO char(9),
	JNO char(9),
	QTY SMALLINT,
	foreign key (SNO) references S(SNO),
	foreign key (PNO) references P(PNO),
	foreign key (JNO) references J(JNO)
);

INSERT INTO S VALUES ('S1', '精益', '20', '天津');
INSERT INTO S VALUES ('S2', '盛锡', '10', '北京');
INSERT INTO S VALUES ('S3', '东方红', '30', '北京');
INSERT INTO S VALUES ('S4', '丰泰盛', '30', '天津');
INSERT INTO S VALUES ('S5', '为民', '30', '上海');

INSERT INTO P VALUES ('P1', '螺母', '红', 12);
INSERT INTO P VALUES ('P2', '螺栓', '绿', 17);
INSERT INTO P VALUES ('P3', '螺丝刀', '蓝', 14);
INSERT INTO P VALUES ('P4', '螺丝刀', '红', 14);
INSERT INTO P VALUES ('P5', '凸轮', '蓝', 40);
INSERT INTO P VALUES ('P6', '齿轮', '红', 30);

INSERT INTO J VALUES ('J1', '三建', '北京');
INSERT INTO J VALUES ('J2', '一汽', '长春');
INSERT INTO J VALUES ('J3', '弹簧厂', '天津');
INSERT INTO J VALUES ('J4', '造船厂', '天津');
INSERT INTO J VALUES ('J5', '机车厂', '唐山');
INSERT INTO J VALUES ('J6', '无线电厂', '常州');
INSERT INTO J VALUES ('J7', '半导体厂', '南京');

INSERT INTO SPJ VALUES ('S1', 'P1', 'J1', 200);
INSERT INTO SPJ VALUES ('S1', 'P1', 'J3', 100);
INSERT INTO SPJ VALUES ('S1', 'P1', 'J4', 700);
INSERT INTO SPJ VALUES ('S1', 'P2', 'J2', 100);
INSERT INTO SPJ VALUES ('S2', 'P3', 'J1', 400);
INSERT INTO SPJ VALUES ('S2', 'P3', 'J2', 200);
INSERT INTO SPJ VALUES ('S2', 'P3', 'J4', 500);
INSERT INTO SPJ VALUES ('S2', 'P3', 'J5', 400);
INSERT INTO SPJ VALUES ('S2', 'P5', 'J1', 400);
INSERT INTO SPJ VALUES ('S2', 'P5', 'J2', 100);
INSERT INTO SPJ VALUES ('S3', 'P1', 'J1', 200);
INSERT INTO SPJ VALUES ('S3', 'P3', 'J1', 200);
INSERT INTO SPJ VALUES ('S4', 'P5', 'J1', 100);
INSERT INTO SPJ VALUES ('S4', 'P6', 'J3', 300);
INSERT INTO SPJ VALUES ('S4', 'P6', 'J4', 200);
INSERT INTO SPJ VALUES ('S5', 'P2', 'J4', 100);
INSERT INTO SPJ VALUES ('S5', 'P3', 'J1', 200);
INSERT INTO SPJ VALUES ('S5', 'P6', 'J2', 200);
INSERT INTO SPJ VALUES ('S5', 'P6', 'J4', 500);
