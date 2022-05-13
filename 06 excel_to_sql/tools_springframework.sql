CREATE DATABASE tools_springframework;
USE tools_springframework;

CREATE TABLE TB_AUTH (
	USER_ID varchar(20) PRIMARY KEY COMMENT '�й�/����', 
	PASSWORD varchar(255) NOT NULL COMMENT '��й�ȣ'
);

ALTER TABLE TB_AUTH COMMENT ='���� ����';

CREATE TABLE TB_USER (
	USER_ID varchar(20) PRIMARY KEY COMMENT '�й�/����', 
	USER_NAME varchar(4) NOT NULL COMMENT '�̸�', 
	USER_EMAIL varchar(50) NOT NULL COMMENT '�̸���', 
	USER_PHONE varchar(13) NOT NULL COMMENT '��ȭ��ȣ', 
	USER_REGISTRAION_NUMBER varchar(14) NOT NULL COMMENT '�ֹι�ȣ', 
	USER_PICTURE_URL varchar(200)  COMMENT '������� ���� ��ġ', 
	USER_POST varchar(6)  COMMENT '�����ȣ', 
	USER_ADDRESS1 varchar(200)  COMMENT '�ּ�', 
	USER_ADDRESS2 varchar(200)  COMMENT '���ּ�', 
	MENTOR_PROFESSOR_USER_ID varchar(20)  COMMENT '��� ���� ID', 
	USER_AVGERAGE_GRADE varchar(4)  COMMENT '��� ����', 
	USER_INTEREST_FIELD varchar(20)  COMMENT '���� �о�', 
	LAB_ADDRESS1 varchar(200)  COMMENT '������ �ּ�', 
	LAB_ADDRESS2 varchar(200)  COMMENT '������ �ּ� ��', 
	LAB_PHONE varchar(13)  COMMENT '������ ��ȭ��ȣ', 
	USER_TYPE_CODE varchar(2) NOT NULL COMMENT '���������', 
	USER_SCHOOL_CODE varchar(2) NOT NULL COMMENT '�б��ڵ�', 
	DEPARTMENT_CODE varchar(2) NOT NULL COMMENT '�а��ڵ�', 
	REGISTER_STATUS_CODE varchar(2) NOT NULL COMMENT '�����ڵ�', 
	CREATE_USER_ID varchar(20) NOT NULL COMMENT '����ѻ�����̵�', 
	UPDATE_USER_ID varchar(20) NOT NULL COMMENT '�����ѻ�����̵�', 
	DELETE_USER_ID varchar(20)  COMMENT '�����ѻ�����̵�', 
	CREATE_DATE_TIME varchar(14) NOT NULL COMMENT '����Ͻ�', 
	UPDATE_DATE_TIME varchar(14) NOT NULL COMMENT '�����Ͻ�', 
	DELETE_DATE_TIME varchar(14)  COMMENT '�����Ͻ�'
);

ALTER TABLE TB_USER COMMENT ='����� ����';

CREATE TABLE TB_COUNSEL (
	COUNSEL_NO int PRIMARY KEY COMMENT '��� ��û ��ȣ', 
	PROFESSOR_USER_ID varchar(20) NOT NULL COMMENT '����', 
	STUDENT_USER_ID varchar(20) NOT NULL COMMENT '�л�', 
	REQUEST_TIME varchar(14) NOT NULL COMMENT '��� �Ͻ�', 
	PLACE varchar(200)  COMMENT '���', 
	REQUEST_CONTENT TEXT NOT NULL COMMENT '��û����', 
	RESPONSE_CONTENT TEXT  COMMENT '���䳻��', 
	COUNSEL_CONTENT TEXT  COMMENT '��㳻��', 
	COUNSEL_TYPE_CODE varchar(4) NOT NULL COMMENT '���Ÿ���ڵ�', 
	COUNSEL_PROGRESS_STATUS_CODE varchar(4) NOT NULL COMMENT '�����������ڵ�', 
	CREATE_USER_ID varchar(20) NOT NULL COMMENT '����ѻ�����̵�', 
	UPDATE_USER_ID varchar(20) NOT NULL COMMENT '�����ѻ�����̵�', 
	DELETE_USER_ID varchar(20)  COMMENT '�����ѻ�����̵�', 
	CREATE_DATE_TIME varchar(14) NOT NULL COMMENT '����Ͻ�', 
	UPDATE_DATE_TIME varchar(14) NOT NULL COMMENT '�����Ͻ�', 
	DELETE_DATE_TIME varchar(14)  COMMENT '�����Ͻ�'
);

ALTER TABLE TB_COUNSEL COMMENT ='���';

CREATE TABLE TB_USER_CAREER (
	CAREER_NO int PRIMARY KEY COMMENT '�Ϸù�ȣ', 
	USER_ID varchar(20) NOT NULL COMMENT '����� ���̵�', 
	DATE varchar(14) NOT NULL COMMENT '�Ͻ�', 
	COMPANY_NAME varchar(20) NOT NULL COMMENT 'ȸ���', 
	WORK_DEPARTMENT varchar(20) NOT NULL COMMENT '�ٹ��μ�', 
	POSITION varchar(20) NOT NULL COMMENT '����', 
	STATUS varchar(20) NOT NULL COMMENT '����籸��', 
	CREATE_DATE_TIME varchar(14) NOT NULL COMMENT '����Ͻ�', 
	UPDATE_DATE_TIME varchar(14)  COMMENT '�����Ͻ�'
);

ALTER TABLE TB_USER_CAREER COMMENT ='���';

CREATE TABLE TB_USER_EDUCATION (
	EDUCATION_NO int PRIMARY KEY COMMENT '�Ϸù�ȣ', 
	USER_ID varchar(20) NOT NULL COMMENT '����� ���̵�', 
	DATE varchar(14) NOT NULL COMMENT '�Ͻ�', 
	SCHOOL varchar(20) NOT NULL COMMENT '�б���', 
	MAJOR varchar(20) NOT NULL COMMENT '����', 
	CREATE_DATE_TIME varchar(14) NOT NULL COMMENT '����Ͻ�', 
	UPDATE_DATE_TIME varchar(14)  COMMENT '�����Ͻ�'
);

ALTER TABLE TB_USER_EDUCATION COMMENT ='�з�';

CREATE TABLE TB_USER_SELF_INTRODUCTION (
	USER_ID varchar(20) PRIMARY KEY COMMENT '����� ���̵�', 
	CONTENT_1 text  COMMENT '�������', 
	CONTENT_2 text  COMMENT '���������', 
	CONTENT_3 text  COMMENT '��Ÿ����', 
	CREATE_DATE_TIME varchar(14) NOT NULL COMMENT '����Ͻ�', 
	UPDATE_DATE_TIME varchar(14)  COMMENT '�����Ͻ�'
);

ALTER TABLE TB_USER_SELF_INTRODUCTION COMMENT ='�ڱ�Ұ���';

CREATE TABLE TB_SCHOOL (
	SCHOOL_CODE varchar(2) PRIMARY KEY COMMENT '�б��ڵ�', 
	SCHOOL_NAME varchar(10) NOT NULL COMMENT '�б��̸�', 
	CREATE_USER_ID varchar(20) NOT NULL COMMENT '����ѻ�����̵�', 
	UPDATE_USER_ID varchar(20) NOT NULL COMMENT '�����ѻ�����̵�', 
	DELETE_USER_ID varchar(20)  COMMENT '�����ѻ�����̵�', 
	CREATE_DATE_TIME varchar(14) NOT NULL COMMENT '����Ͻ�', 
	UPDATE_DATE_TIME varchar(14) NOT NULL COMMENT '�����Ͻ�', 
	DELETE_DATE_TIME varchar(14)  COMMENT '�����Ͻ�'
);

ALTER TABLE TB_SCHOOL COMMENT ='�б�';

CREATE TABLE TB_DEPARTMENT (
	DEPARTMENT_CODE varchar(2) PRIMARY KEY COMMENT '�а��ڵ�', 
	DEPARTMENT_NAME varchar(10) NOT NULL COMMENT '�а��̸�', 
	CREATE_USER_ID varchar(20) NOT NULL COMMENT '����ѻ�����̵�', 
	UPDATE_USER_ID varchar(20) NOT NULL COMMENT '�����ѻ�����̵�', 
	DELETE_USER_ID varchar(20)  COMMENT '�����ѻ�����̵�', 
	CREATE_DATE_TIME varchar(14) NOT NULL COMMENT '����Ͻ�', 
	UPDATE_DATE_TIME varchar(14) NOT NULL COMMENT '�����Ͻ�', 
	DELETE_DATE_TIME varchar(14)  COMMENT '�����Ͻ�'
);

ALTER TABLE TB_DEPARTMENT COMMENT ='�а�';

CREATE TABLE TB_USER_TYPE (
	USER_TYPE_CODE varchar(2) PRIMARY KEY COMMENT '����������ڵ�', 
	USER_TYPE_MEMO varchar(10) NOT NULL COMMENT '�������������', 
	CREATE_USER_ID varchar(20) NOT NULL COMMENT '����ѻ�����̵�', 
	UPDATE_USER_ID varchar(20) NOT NULL COMMENT '�����ѻ�����̵�', 
	DELETE_USER_ID varchar(20)  COMMENT '�����ѻ�����̵�', 
	CREATE_DATE_TIME varchar(14) NOT NULL COMMENT '����Ͻ�', 
	UPDATE_DATE_TIME varchar(14) NOT NULL COMMENT '�����Ͻ�', 
	DELETE_DATE_TIME varchar(14)  COMMENT '�����Ͻ�'
);

ALTER TABLE TB_USER_TYPE COMMENT ='���������';

CREATE TABLE TB_REGISTER_STATUS (
	REGISTER_STATUS_CODE varchar(2) PRIMARY KEY COMMENT '���������ڵ�', 
	REGISTER_STATUS_MEMO varchar(10) NOT NULL COMMENT '�������¼���', 
	CREATE_USER_ID varchar(20) NOT NULL COMMENT '����ѻ�����̵�', 
	UPDATE_USER_ID varchar(20) NOT NULL COMMENT '�����ѻ�����̵�', 
	DELETE_USER_ID varchar(20)  COMMENT '�����ѻ�����̵�', 
	CREATE_DATE_TIME varchar(14) NOT NULL COMMENT '����Ͻ�', 
	UPDATE_DATE_TIME varchar(14) NOT NULL COMMENT '�����Ͻ�', 
	DELETE_DATE_TIME varchar(14)  COMMENT '�����Ͻ�'
);

ALTER TABLE TB_REGISTER_STATUS COMMENT ='��������';

CREATE TABLE TB_COUNSEL_TYPE (
	COUNSEL_TYPE_CODE varchar(2) PRIMARY KEY COMMENT '���Ÿ���ڵ�', 
	COUNSEL_TYPE_MEMO varchar(10) NOT NULL COMMENT '���Ÿ�Լ���', 
	CREATE_USER_ID varchar(20) NOT NULL COMMENT '����ѻ�����̵�', 
	UPDATE_USER_ID varchar(20) NOT NULL COMMENT '�����ѻ�����̵�', 
	DELETE_USER_ID varchar(20)  COMMENT '�����ѻ�����̵�', 
	CREATE_DATE_TIME varchar(14) NOT NULL COMMENT '����Ͻ�', 
	UPDATE_DATE_TIME varchar(14) NOT NULL COMMENT '�����Ͻ�', 
	DELETE_DATE_TIME varchar(14)  COMMENT '�����Ͻ�'
);

ALTER TABLE TB_COUNSEL_TYPE COMMENT ='���Ÿ��';

CREATE TABLE TB_COUNSEL_PROGRESS_STATUS (
	COUNSEL_PROGRESS_STATUS_CODE varchar(2) PRIMARY KEY COMMENT '�����������ڵ�', 
	COUNSEL_PROGRESS_STATUS_MEMO varchar(10) NOT NULL COMMENT '���������¼���', 
	CREATE_USER_ID varchar(20) NOT NULL COMMENT '����ѻ�����̵�', 
	UPDATE_USER_ID varchar(20) NOT NULL COMMENT '�����ѻ�����̵�', 
	DELETE_USER_ID varchar(20)  COMMENT '�����ѻ�����̵�', 
	CREATE_DATE_TIME varchar(14) NOT NULL COMMENT '����Ͻ�', 
	UPDATE_DATE_TIME varchar(14) NOT NULL COMMENT '�����Ͻ�', 
	DELETE_DATE_TIME varchar(14)  COMMENT '�����Ͻ�'
);

ALTER TABLE TB_COUNSEL_PROGRESS_STATUS COMMENT ='����������';
