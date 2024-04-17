## 프로젝트 설명
- 

## 환경
- macOS
- jdk 
- tomcat 9.0
- sts tool
- oracleDB
- 인코딩 utf-8


## 테이블

```sql
create table Manager(
	no number,
	user_no number, 		-- User 외래키
	manager_name varchar2(20), 
	Constraint Manager_pk Primary key(no)
);

create table Userinfo(
	no number ,
	user_name varchar2(30), 	-- 유저닉네임
	user_birth date NOT NULL,
	user_tel varchar2(15) Unique,
	user_id varchar2(20) Unique,
	user_password varchar2(20),
	user_gender varchar2(6),
	user_email varchar2(30) Unique,
	user_status number,
	user_terms number,
	Constraint User_pk Primary key(no)
);

create table Terms(
	no number,
	terms_ctgrno number,
	ship_no number,    		-- ship 외래키
	resvterms_num number,    	-- resvterms 외래키
	terms_title varchar2(300) not null,
	terms_subtitle varchar2(300),
	terms_content clob not null, 
	Constraint Terms_pk Primary key(no)
);

create table resvterms(
	no number,
	resvterms_num number constraint resvterms_pk primary key,
	resvterms_title varchar2(300),
	resvterms_content varchar2(4000)
);

create table MngBrd (
	no number,
	island_no number,    		-- fk : island(섬) 테이블
	mngbrd_ctgrno number not null,
	num number,
	mngbrd_part varchar2(30),
	mngbrd_title varchar2(300) not null,
	mngbrd_content clob,
	manager_no number, 		-- fk : manager(관리자) 테이블
	mngbrd_hit number default 0,
	mngbrd_date date,
	mngbrd_attn clob,
	mngbrd_file varchar2(100)
);

create table ViewImg(
	no number,
	viewimg_ctgrno number not null,
	viewimg_attn clob
);

create table Island(
	no number constraint island_pk primary key,
	state_no number,  		-- state 외래키
	city_no number,  		-- city 외래키
	island_name varchar2(100) not null,
	island_info varchar2(4000),
	island_area number,
	island_addr varchar2(100),
	island_inhabited number,
	island_longitude varchar2(100)
);

create table State(
	no number constraint state_pk primary key,
	state_name varchar2(30) not null
);

create table City(
	no number constraint city_pk primary key,
	state_no number,  		-- state 외래키
	city_name varchar2(30) not null
);

create table Port(
	no number constraint port_pk primary key,
	state_no number,   		-- state 외래키
	city_no number,   		-- city 외래키
	port_name varchar2(100) not null,
	port_info varchar2(4000),
	port_tel varchar2(500),
	port_addr varchar2(100)
);

create table timetable(
	no number constraint timetable_pk primary key,
	ship_no number,    		-- ship 외래키
	timetable_date date,
	timetable_dtime date,
	timetable_ltime date,
	port_no1 number,   		-- port 외래키
	port_no2 number   		-- port 외래키
);

create table ship(
	no number constraint ship_pk primary key,
	ship_name varchar2(100) not null,
	ship_company varchar2(100),
	ship_comtel varchar2(100),
	ship_comaddr varchar2(100),
	ship_interval varchar2(100),
	ship_comurl varchar2(100),
	ship_kind varchar2(100),
	ship_initdate date,
	ship_capacity number,
	ship_length number,
	ship_width number,
	ship_height number,
	ship_ton number,
	ship_knot number,
	ship_max number
);

create table shipstatus(
	no number constraint shipstatus_pk primary key,
	ship_no number,   		-- ship 외래키
	shipstatus_status varchar2(30)
);

create table shipstatusinfo(
	no number,
	timetable_no number,   		-- timetable 외래키
	shipstatus_no number,   	-- shipstatus 외래키
	statusinfo_declaration number,
	statusinfo_reason varchar2(4000),
	statusinfo_delaytime varchar2(10),
	statusinfo_currenttime date
);

create table comm(
	no number,
	user_no number,   		-- user 외래키
	review_no number,   		-- review 외래키
	comm_comment varchar2(900) not null,
	comm_password varchar2(20) not null,
	comm_groupno number,
	comm_orderno number,
	comm_depth number
);

create table infoboard(
	no number,
	infobrd_title varchar2(300) not null,
	infobrd_content varchar2(4000),
	infobrd_url varchar2(500),
	infobrd_ctgrno number
);

create table ticketkind(
	no number constraint ticketkind_pk primary key,
	ticket_kind varchar2(30)
);

create table ticketsale(
	no number constraint ticketsale_pk primary key,
	ticket_no number,    		-- ticketkind 외래키
	sale_kind varchar2(30),
	sale_rate number
);

create table car(
	no number constraint car_pk primary key,
	car_name varchar2(30) not null,
	ship_no number,   		-- ship 외래키
	car_tvr number,
	car_shcharge number,
	car_lacharge number
);

create table seatinfo(
	no number constraint seatinfo_pk primary key,
	ship_no number,    		-- ship 외래키
	seat_grade varchar2(30) not null,
	seat_total number,
	seat_line number,
	seat_row number,
	seat_person number,
	seat_student number,
	seat_child number,
	seat_baby number,
	seat_grand number
);

create table creditcard(
	no number,
	resv_no number,   		-- reservationist 외래키
	card_kind number,
	card_num1 varchar2(4),
	card_num2 varchar2(4),
	card_num3 varchar2(4),
	card_num4 varchar2(4),
	card_password varchar2(2),
	card_expdate date,
	card_birth date,
	card_installment number,
	card_instdate date
);

create table reservationist(
	no number constraint reservationist_pk primary key,
	resv_name varchar2(10) not null,
	resv_birth date,
	resv_gender varchar2(6),
	resv_tel varchar2(15),
	sale_no number,   		-- ticketsale 외래키
	resv_emergtel varchar2(15),
	resv_foreign number,
	seat_no number,    		-- seatinfo 외래키
	timetable_no number,    	-- timetable 외래키
	resv_addr varchar2(100)
);

create table persononboard(
	no number constraint persononboard_pk primary key,
	resv_no number,    		-- reservationist 외래키
	pob_name varchar2(10) not null,
	pob_birth date,
	pob_gender varchar2(6),
	pob_tel varchar2(15),
	sale_no number,    		-- ticketsale 외래키
	pob_emergtel varchar2(15),
	pob_foreign number,
	pob_addr varchar2(100)
);

create table reservationlist(
	no number,
	ship_no number,   		-- ship 외래키
	resv_no number,   		-- reservationist 외래키
	pob_no number default 0,   	-- persononboard 외래키
	timetable_no number,   		-- timetable 외래키
	seat_no number,   		-- seatinfo 외래키
	resvlist_price number,
	resvlist_paymentdate date,
	resvlist_date date
);

create table Parking(
	no number primary key,
	port_no number, 		-- 항구 시퀀스 외래키
	park_name varchar2(50) not null,
	park_tel varchar2(15),
	park_info varchar2(4000),
	park_addr varchar2(100),
	park_price varchar2(100),
	park_ctgr varchar2(30),
	park_halfprice number,
	park_tenprice number,
	park_dayprice number,
	park_monthprice number
);

create table PublicTerminal(
	no number primary key,
	port_no number, 		-- port 시퀀스 외래키
	public_name varchar2(30) not null,
	public_tel varchar2(15),
	public_info1 varchar2(4000),
	public_info2 varchar2(4000),
	public_info3 varchar2(4000)
);

create table TrainTerminal(
	no number primary key,
	port_no number, 		-- port 시퀀스 외래키
	train_name varchar2(30) not null,
	train_tel varchar2(15),
	train_info1 varchar2(4000),
	train_info2 varchar2(4000)
);

create table PlaneTerminal(
	no number primary key,
	port_no number, 		-- Terminal 시퀀스 외래키
	plane_name varchar2(30) not null,
	plane_tel varchar(15)
);

create table InfoBoard(
	no number,
	infobrd_title varchar2(300) not null,
	infobrd_content varchar2(4000),
	infobrd_url varchar2(500),
	infobrd_ctgrno number  		-- 카테고리 번호
);

create table Tide(
	no number primary key,
	port_no number, 		--port 시퀀스 외래키
	sunrise varchar2(15),
	sunset varchar2(15),
	lowTide varchar2(15),
	highTide varchar2(15),
	lowWaterLevel varchar2(15),
	highWaterLevel varchar2(15)
);

create table review(   
        no number constraint pk_review primary key,
        review_ctgrno number,
        user_no number,               	-- User 외래키 (회원 이름)
        island_no number,             	-- Island 외래키 (섬 이름)
        review_num number not null,
        review_title varchar2(300) not null,
        review_date date,             	-- sysdate
        review_hit number,            	-- 초기값 0
        review_content varchar2(4000),
        review_environ number,        	-- 별점 평가 > 1 ~ 5점으로 평가
        review_lodge number,
        review_water number,
        review_traffic number,
        review_stuff number,
        review_su number,             	-- 섬 평가자 수
        review_score number           	-- 섬 평가 점수
);

create table reserveinquire(
	no number constraint reserveinquire_pk primary key,
	user_no number,    		-- userinfo 외래키
	resvinquire_num number,
	resvinquire_title varchar2(300) not null,
	resvinquire_content clob,
	resvinquire_date date,
	resvinquire_hit number,
	resvinquire_password varchar2(20),
	manager_no number,
	resvinquire_comment varchar2(4000)
);

create table IslandBoard(
	no number primary key,
	user_no number, 		-- user 시퀀스 외래키
	islboard_num number,
	islboard_title varchar2(300) not null,
	tdate_no number, 		-- TravelDate 시퀀스 외래키
	tpurpose_no number, 		-- TravelPurpose 시퀀스 외래키
	trans_no number, 		-- Transportation 시퀀스 외래키
	accom_no number, 		-- Accommo 시퀀스 외래키
	city_no number, 		-- Terminal 시퀀스 외래키
	islboard_startregion varchar2(30),
	tschedule_no number, 		-- TravelSchedule 시퀀스 외래키
	islboard_password varchar2(20) not null,
	islboard_hope varchar(30),
	islboard_follower number,
	islboard_content clob,
	islboard_hit number,      	-- 조회수
	islboard_date date,      	-- 작성일
	manager_no number, 		-- Manager 시퀀스 외래키
	islboard_comment varchar2(4000)
);

create table TravelDate(
	no number primary key,
	tdate_date varchar2(30)
);

create table TravelPurpose(
	no number primary key,
	tpurpose_purpose varchar2(30)
);

create table transportation(
	no number primary key,
	trans_vehicle varchar2(30)
);

create table Accommo(
	no number primary key,
	accom_room varchar2(30)
);

create table TravelSchedule(
	no number primary key,
	tschedule_month varchar2(30)
);

create table suggest(     
        no number,
        user_no number,                 -- User 외래키 (회원 이름)
        sugg_num number not null,
        sugg_title varchar2(300) not null,
        sugg_date date,              	-- sysdate
        sugg_hit number,                -- 초기값 0
        sugg_content clob,
        sugg_attn clob,               	-- 본문이미지
        sugg_file varchar2(100),    	-- 첨부파일 
        manager_no number,
        sugg_comment varchar2(4000)
);
```

## 시퀀스

```sql
create sequence Manager_seq nocache;
create sequence User_seq nocache;
create sequence terms_seq nocache;
create sequence resvterms_seq nocache;
create sequence mngbrd_seq nocache;
create sequence mngbrd21_seq nocache;
create sequence mngbrd22_seq nocache;
create sequence mngbrd31_seq nocache;
create sequence mngbrd32_seq nocache;
create sequence mngbrd33_seq nocache;
create sequence mngbrd34_seq nocache;
create sequence mngbrd35_seq nocache;
create sequence mngbrd36_seq nocache;
create sequence mngbrd37_seq nocache;
create sequence mngbrd51_seq nocache;
create sequence viewimg_seq nocache;
create sequence island_seq nocache;
create sequence state_seq nocache;
create sequence city_seq nocache;
create sequence port_seq nocache;
create sequence timetable_seq nocache;
create sequence ship_seq nocache;
create sequence shipstatus_seq nocache;
create sequence statusinfo_seq nocache;
create sequence comm_seq nocache;
create sequence infobrd_seq nocache;
create sequence ticket_seq nocache;
create sequence sale_seq nocache;
create sequence car_seq nocache;
create sequence seat_seq nocache;
create sequence card_seq nocache;
create sequence resv_seq nocache;
create sequence pob_seq nocache;
create sequence resvlist_seq nocache;
create sequence Parking_seq;
create sequence PublicTerminal_seq;
create sequence TrainTerminal_seq;
create sequence PlaneTerminal_seq;
create sequence InfoBoard_seq nocache;
create sequence tide_seq nocache;
create sequence review_seq nocache;
create sequence reserveinquire_seq nocache;
create sequence IslandBoard_seq nocache;
create sequence TravelDate_seq nocache;
create sequence TravelPurpose_seq nocache;
create sequence Transportation_seq nocache;
create sequence Accommo_seq nocache;
create sequence TravelSchedule_seq nocache;
create sequence suggest_seq nocache;
```

## sql 초기 데이터

```sql
insert into Manager values(Manager_seq.nextval, 1 , '관리자');
insert into Manager values(Manager_seq.nextval, 2 , '서해');
insert into Manager values(Manager_seq.nextval, 3 , '포항');
insert into Userinfo (no, user_name, user_birth, user_id, user_password, user_status ) values(User_seq.nextval, '관리자', sysdate, 'admin', 'admin' , 0 );
insert into Userinfo (no, user_name, user_birth, user_id, user_password, user_status ) values(User_seq.nextval, '서해지부', sysdate, 'seohae', 'seohae' , 0);
insert into Userinfo (no, user_name, user_birth, user_id, user_password, user_status ) values(User_seq.nextval, '포항지부', sysdate, 'pohang', 'pohang' , 0);
insert into Userinfo (no, user_name, user_birth, user_id, user_password, user_status ) values(User_seq.nextval, '경남지부', sysdate, 'gnam', 'gnam' , 0);

insert into terms values(terms_seq.nextval, 0, 0, 0, '회원가입' , '필수_회원가입이용약관', '가보고 싶은 섬의 광범위한 서비스를 이용하기 위해 이용자는 서비스약관을 읽어보시고 동의하셔야 합니다.
회원등록은 무료이며, 등록 즉시 서비스를 이용하실 수 있습니다. 
아래의 이용 약관을 반드시 읽고 동의해 주십시오. 
 
 제 1 장 총 칙 
 제 1 조 (목적) 
이 이용약관(이하 ''약관'')은 한국해운조합(이하 조합이라 합니다)와 이용 고객(이하 ''회원'')간에 조합이 제공하는 가보고 싶은 섬 서비스( 이하 서비스)의 가입조건 및 이용에 관한 제반 사항과 기타 필요한 사항을 구체적으로 규정함을 목적으로 합니다.

제 2 조 (이용약관의 효력 및 변경) 
(1) 이 약관은 가보고 싶은 섬(island.haewoon.co.kr 이하 ''가보고 싶은 섬'')에서 온라인으로 공시함으로써 효력을 발생하며, 합리적인 사유가 발생할 경우 관련법령에 위배되지 않는 범위 안에서 개정될 수 있습니다. 개정된 약관은 온라인에서 공지함으로써 효력을 발휘하며, 이용자의 권리 또는 의무 등 중요한 규정의 개정은 사전에 공지합니다.
(2) 조합은 합리적인 사유가 발생될 경우에는 이 약관을 변경할 수 있으며, 약관을 변경할 경우에는 지체 없이 이를 사전에 공시합니다.
(3) 이 약관에 동의하는 것은 정기적으로 웹을 방문하여 약관의 변경사항을 확인하는 것에 동의함을 의미합니다. 변경된 약관에 대한 정보를 알지 못해 발생하는 이용자의 피해는 조합에서 책임지지 않습니다.

(4) 회원은 변경된 약관에 동의하지 않을 경우 회원 탈퇴(해지)를 요청할 수 있으며, 변경된 약관의 효력 발생일로부터 7일 이후에도 거부의사를 표시하지 아니하고 서비스를 계속 사용할 경우 약관의 변경 사항에 동의한 것으로 간주됩니다.


제 3 조 (약관외 준칙) 
① 이 약관은 조합이 제공하는 개별서비스에 관한 이용안내(이하 서비스 별 안내라 합니다)와 함께 적용합니다.
② 이 약관에 명시되지 아니한 사항에 대해서는 관계법령 및 서비스 별 안내의 취지에 따라 적용할 수 있습니다. 


제 4 조 (용어의 정의) 
① 이 약관에서 사용하는 용어의 정의는 다음과 같습니다. 
1.''이용고객''이라 함은 회원제서비스를 이용하는 이용자를 말합니다. 
2.''이용계약''이라 함은 서비스 이용과 관련하여 조합과 이용고객 간에 체결 하는 계약을 말합니다. 
3.''이용자번호(ID)''라 함은 이용고객의 식별과 이용고객의 서비스 이용을 위하여 이용고객이 선정하고 조합이 부여하는 문자와 숫자의 조합을 말합니다. 
4.''비밀번호''라 함은 이용고객이 부여 받은 이용자번호와 일치된 이용고객 임을 확인하고 이용고객의 권익보호를 위하여 이용고객이 선정한 문자와 숫자의 조합을 말합니다. 
5.''단말기''라 함은 조합이 제공하는 서비스를 이용하기 위해 이용고객이 설치한 개인용 컴퓨터 및 모뎀 등을 말합니다. 
6.''해지''라 함은 조합 또는 회원이 이용계약을 해약하는 것을 말합니다.

② 이 약관에서 사용하는 용어의 정의는 제1항에서 정하는 것을 제외하고는 관계법령 및 서비스별 안내에서 정하는 바에 의합니다.  
 
  제 2 장 이용계약 체결 
 제 5 조 (이용 계약의 성립)
(1) 이용계약은 이용고객의 본 이용약관 내용에 대한 동의와 이용신청에 대하여 조합의 이용승낙으로 성립합니다.
(2) 본 이용약관에 대한 동의는 이용신청 당시 해당 가보고 싶은 섬 웹의 ''동의함'' 버튼을 누름으로써 의사표시를 합니다.

 <부칙>
(시행일) 본 약관은 2005년 4월 13일부터 적용됩니다. ' ) ;


insert into terms values(terms_seq.nextval,0, 0, 0, '회원가입' , '필수_개인정보의 수집 및 이용목적에 대한안내', '  ■ 개인정보의 수집 및 이용목적

  조합은 수집한 개인정보를 다음의 목적을 위해 활용합니다.

 ο 연안여객승선권인터넷 예약/예매 서비스 제공에 따른 요금정산콘텐츠 제공, 구매 및 요금 결제, 금융 거래 본인 인증 및 금융 서비스

 ο 회원 관리
    회원제 서비스 제공, 개인 식별, 이용약관 위반 회원에 대한 이용제한 조치, 서비스의 원활한 운영에 지장을 미치는 행위 및 서비스 
    부정이용 행위 제재, 가입의사 확인, 가입 및 가입횟수 제한, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 고지사항 전달, 
    회원탈퇴 의사의 확인' ) ;


insert into terms values(terms_seq.nextval,  0, 0, 0, '회원가입' , '필수_수집하는 필수 개인정보의 항목 및 수집방법에 대한안내', ' ■ 수집하는 필수 개인정보의 항목 및 수집방법

  조합은 회원가입, 원활한 고객상담, 각종 서비스의 제공을 위해 최초 회원가입 당시 아래와 같은 최소한의 개인정보를 필수항목으로 
  수집하고 있습니다.

 ο 수집항목 : 로그인ID(필수), 비밀번호(필수), 이름(필수), 생년월일(필수), 이메일(필수), 휴대전화번호(필수)

 ο 개인정보 수집방법 : 홈페이지(회원가입) ') ;


insert into terms values(terms_seq.nextval, 0, 0, 0, '회원가입' , '필수_개인정보의 보유 및 이용기간(휴면 계정에 대한 삭제 조건)에 대한안내', '  ■ 개인정보의 보유 및 이용기간(휴면 계정에 대한 삭제 조건)
 
  ο 최근 1년간 """"가보고 싶은 섬"""" 홈페이지에 로그인 하지 않은 회원의 경우 관계법령(정보통신망 이용촉진 및 정보보호 등에 관한 
     법률 제29조, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 시행령 제16조)에 의거 일괄 삭제처리 됩니다.
     이점 유의해주시기 바랍니다.

  ο 이용자가 “가보고 싶은 섬”의 회원으로서의 자격을 유지하고 있는 동안에는 이용자가 조합에 제공한 개인정보는 계속 보유합니다.
     조합은 개인정보 수집 및 이용목적이 달성된 후에는 예외 없이 해당 정보를 지체 없이 파기합니다.
  
  ο 상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 조합은 관계법령에서 
     정한 일정한 기간 동안 회원정보를 보관합니다. 이 경우 조합은 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.

  - 계약 또는 청약철회 등에 관한 기록
    보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률
    보존 기간 : 5년
  
  - 대금결제 및 재화 등의 공급에 관한 기록
    보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률 
    보존 기간 : 5년
  
  - 전자금융 거래에 관한 기록
    보존 이유 : 전자금융거래법
    보존 기간 : 5년 
    
  - 소비자의 불만 또는 분쟁처리에 관한 기록 
    보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률
    보존 기간 : 3년' ) ;

insert into resvterms values(resvterms_seq.nextval, 110, '예매하기',
'※연안여객선 유류할증료 안내(2023년 07월)
  연안여객선 항로별 유류할증료 금액을 다음과 같이 안내해드립니다.
  유류할증료는 20일 이상 사전 고지되며, 선사에 따라 발권(예매) 또는
  승선일자를 기준으로 적용됩니다.
   1.유류할증료 금액 -> 항로별 성인 정액운임 × 4.5% 범위내(이전월의 경우 6.0% 적용)
   2.적용기간       -> 2023-07-01 ~ 2023-07-31
   3.면제대상       -> 보조항로 운항선박, 도서민
  4.고지일자       -> 2023-06-10
    * 선사별 유류할증료 부과여부는 선사별로 상이하오니 해당선사에 문의 주시기 바랍니다.

※선박 승선을 위해 출항 1시간 전까지 해당 매표소에 도착하시어 승선절차를
  진행 하시고 출항 10분 전까지 탑승해 주시길 바랍니다.
   1.승선절차가 완료 되지 못할 경우 탑승이 거부 될 수 있으며 승선권 발권, 탑승, 마감시간 등
    모든 승선 절차는 선사 별 상이 할 수 있으니 해당 선사에 반드시 확인 하시길 바랍니다.

※여객선 운항시간은 선사 사정, 기상상황에 따라 사전 변경될 수 있으며 변경 시
  선사에서 연락 드립니다. 출항 전일 해당선사에 출항여부를 확인 바랍니다.
   1.이용 선박 승선시간에 관한 보다 자세한 정보는 해당 선박회사로 연락해 주시기 바랍니다.
   2.바다로티켓을 사용한 예약/예매 시 유의사항
    - 할인율은 선사 별, 권종 별 각각 상이하오니 가보고싶은섬 웹사이트
      (island.haewoon.co.kr)에서 반드시 확인하시고 이용하시기 바랍니다.

※차량 승선권 예매의 경우 일부 선사만 가능합니다.
   1.차량 승선권은 선박 선택시 활성화됩니다.
  2.차량 선택 버튼이 활성화되어 있지 않은 경우 인터넷에서 차량 예약/예매는 불가능하오니
    해당 선박회사로 연락해 주시기 바랍니다.
   3.차량을 가져가시는 승객의 경우 인터넷 예매를 진행하시기 전에 해당 선박에 차량 적재가
    가능한지 선박회사에 반드시 연락하여 주시길 바랍니다.');

insert into resvterms values(resvterms_seq.nextval, 111, '공용',
'※ 여객선 사고 발생시 직계가족 등에게 신속한 사고 상황 안내 및
정확한 신원확인을 목적으로 본인 연락처 외 비상연락처를 입력 받고 있습니다.
가급적 비상연락처를 입력하여주시길 바랍니다.');

insert into Island values(island_seq.nextval, 54, 402, '울릉도', '이사부에 의해 신라에 귀속된 이후 1438년 도민귀환령으로 사람이 살지 않다가 1882년 개척령영포로 다시 사람이 이주하여 이곳에 정착하였다.
삼국사기에 우산국이라 기록되었고 간릉도, 우릉도, 무릉도 등으로 부리우다가 그 후 울릉도로 칭하였다.
도지정문화재로 나리 너와집, 나리 투막집(4채), 남서리 고분군, 현포리 고분군 등 7개가 지정되어 있다. 성하신당에 얽힌 전설이 내려오고 있으며 이 곳에서 매년 3월 3일과 9월 9일에 제사를 지낸다.
천연기념물로 제48호(통구미 향나무 자생지), 제49호(대풍감 향나무 자생지), 제50호(태하리 솔송, 섬잣, 너도밤나무 군락지, 제51호(도동 섬개야광, 섬댓강나무 군락지), 제52호(울릉국화, 섬배리향 군락지), 제189호(성인봉 원시림), 제237호(사동 흑비둘기 서식지), 제336호(독도 해조류 서식지) 등이 있다.
관광자원은 성인봉(984m)을 중심으로 울창한 원시림과 해안을 따라 둘러싼 기암괴석, 약수, 폭포 등이 유명하며 오징어, 호박엿, 향나무 공예품, 산나물들이 특산물로 인기가 좋다. 울릉도 근해의 풍부한 수산자원과 지리적 중요성으로 인해 일본에서 독도의 영유권을 계속 주장하고 있다. 이 섬은 희귀 동식물이 많이 자생하고 있는 자연의 보고이다.', 72.56, '경상북도 울릉군 울릉읍, 서면, 북면', 1, 'E: 131°52′, 37°33′');

insert into Island values(island_seq.nextval, 54, 402, '독도', '독도의 옛이름은 삼봉도,하지도 또는 자산도 등으로 불리웠으며 독도라는 지명은 1881년부터 부르게 되었다. 이 이름은 모두가 바위로 된 돌섬에서 유래되었다고 한다. 울릉도 개척시 입주한 주민들이 처음에는 돌섬이라고 불렀는데 이것이 돍섬으로 그리고 다시 독섬으로 변했다.지금도 주민들 중에는 독도를 독섬이라 부르는 사람이 많다. 독섬을 한자로 표기하면서 독도가 되었다고 한다.
일본에서는 다케시마, 마쓰시마라 불렀고 서양에서는 이 섬을 발견한 배의 이름을 따서 불렀는데, 프랑스에서는 ''리아쿠르'', 영국에서는 ''호넷''이라 이름 붙여 해도에 기입하고 있다.
독도에는 바다제비, 슴새, 괭이갈매기 등 희귀한 새들이 많이 서식하고 있어 그 서식지를 천연기념물 제336호로 지정하여 보호하고 있다.', 18.76, '경상북도 울릉군 울릉읍 독도리 산 1-96번지', 1, 'E:131°52′ N:37°14′');

insert into Island values(island_seq.nextval, 61, 596, '거문도', '여수와 제주도 중간 지점에 위치한 다도해의 최남단 섬이다. 서도, 동도, 고도의 세 섬으로 이루어져 있으며, 고도만을 거문도라 부르기도 한다. 세 개의 섬이 병풍처럼 둘러쳐서 1백면 평 정도의 천연적 항만이 호수처럼 형성되어 있는 곳을 도내해(島內海)라고 하는데, 큰 배들이 자유롭게 드나들 수 있는 항구 구실을 하고 있다. 입지적 여건 때문에 거문도항은 예부터 빈번히 열강의 침입을 받아왔다. 
최고봉인 동도의 망향산(247m)을 비롯하여, 서도의 음달산(237m), 수월산(128m) 등 비교적 경사가 급한 산지로 이루어져 있다. 해안은 작은 돌출부가 많고 드나듦이 심하다. 대부분 암석해안이며 동도의 남쪽 해안은 높은 해식애로 이루어져 있다. 1월 평균기온 2도 내외, 8월 평균기온 25도 내외, 연강수량 1,361.7mm 정도이다. 
주요 농산물로는 고구마, 감자, 마늘, 보리, 콩, 유채, 참깨, 양파 등이 생산된다. 연안 일대에서는 삼치, 멸치, 장어, 도미, 갈치 등이 주로 잡히며, 자연산 굴, 미역, 조개류 등이 채취된다.', 12.00, '전라남도 여수시 삼산면 거문리, 동도리, 서도리, 덕촌리', 1, 'E:127°11′ N:34°00′');

insert into Island values(island_seq.nextval, 61, 588, '안좌도', '구전에 의하면 마씨와 차씨가 기좌도 한운리에 처음 들어와 살았으며 그 후 1690년겅 김해김씨가 해남에서 들어와 각 마을에 자리잡았다고 한다.섬 이름은 안창도와 기좌도를 합하여 안좌도라 했다고 한다.
이 섬에서는 한국의 대표적인 서양화가인 김환기 화백이 태어났으며 그의 생가는 도 기념물 제146호로 지정하여 보호하고 있다. 방월리에 지방문화재자료 제117호인 지석묘군이 있다.
구비전승으로는 좃바위, 벼락바위 전설과 사촌형 노래, 모내기 노래등의 민요가 전해온다. 아직 당제를 모시고 있는 마을이 많다,
섬 주변의 경관이 뛰어나고 바다낚시터로 유명하다. 특산물로는 간척지 쌀, 돌김, 꽃, 새우, 꽃, 새우, 숭어 등이 나며 김 양식을 많이 한다.안좌도에는 금산, 읍동, 복호, 두리 선착장이 있다.', 46.92, '전라남도 신안군 안좌면 읍동리', 1, 'E:126°08′ N:34°45′');

insert into Island values(island_seq.nextval, 61, 588, '신의도', '서남단 다도해상에 위치한 신의도는 동으로는 진도군, 서쪽은 하의면, 북쪽은 장산면을 바라보고 있다.', 0, '전라남도 신안군 신의면 신의로 661', 1, '');

insert into State values(31, '경기도');
insert into State values(32, '인천광역시');
insert into State values(33, '강원도');
insert into State values(41, '충청남도');
insert into City values(590, 61, '해남군');
insert into City values(152, 31, '안산시');
insert into City values(223, 32, '중구');
insert into City values(231, 32, '옹진군');
iinsert into port values(port_seq.nextval, 61, 589, '율목항', '', '', '전라남도 진도군 조도면 여미리 841-4');
insert into port values(port_seq.nextval, 61, 589, '팽목항', '', '', '전라남도 진도군 임회면 진도항길');
insert into port values(port_seq.nextval, 41, 321, '개목항', '', '', '충청남도 태안군 소원면 의항리');
insert into Ship values(ship_seq.nextval, '씨스타 1호', '씨스포빌(주)', '1577-8665',  '강원도 동해시 일출로22',  '묵호-울릉(사동)',  'https://www.jdind.co.kr/',  '초쾌속선', '2009-05-26', 442, 55, 14, 3, 388, 85, 88, 257);
Insert into Ship values(ship_seq.nextval, '씨스타 1호',  '씨스포빌(주)', '1577-8665',  '강원도 동해시 일출로22',  '울릉(사동)-독도',  'https://www.jdind.co.kr/',  '초쾌속선',  '2009-05-26', 442, 55, 14, 3, 388, 85, 88, 257);
Insert into Ship values(ship_seq.nextval,  '돌핀호',  '(주)돌핀해운',  '055-310-1598',  '경남 김해서 가락로 30번길 17',  '울릉도(사동)-독도-울릉도(사동)',  'http://www.daezer.co.kr/main.web',  '쾌속선',  '1996-08-01', 390, 63, 25, 5, 310, 96, 99, 055);
insert into shipstatus values(shipstatus_seq.nextval,1,'정상운항');
insert into shipstatus values(shipstatus_seq.nextval,2,'정상운항');
insert into shipstatus values(shipstatus_seq.nextval,3,'정상운항');
insert into shipstatus values(shipstatus_seq.nextval,4,'정상운항');
insert into ticketkind values(ticket_seq.nextval, '일반대인');
insert into ticketkind values(ticket_seq.nextval, '일반중고');
insert into ticketkind values(ticket_seq.nextval, '일반경로');
insert into ticketkind values(ticket_seq.nextval, '일반소아');
insert into ticketkind values(ticket_seq.nextval, '도서대인');
insert into ticketsale values(sale_seq.nextval, 8, '미취학(도서)', 80);
insert into ticketsale values(sale_seq.nextval, 8, '외국인', 80);
insert into ticketsale values(sale_seq.nextval, 9, '일반발매', 100);
insert into car values(car_seq.nextval, '경차', 15, 82190, 12870, 18800);
insert into car values(car_seq.nextval, '소형', 15, 90720, 16550, 24170);
insert into seatinfo values(seat_seq.nextval,24, '펫룸-6304(18)' ,0,32,37,44100,39690,22050,0,35280);
insert into seatinfo values(seat_seq.nextval,25, '일반석(230)' ,230,13,17,17100,15390,8550,0,13680);
insert into seatinfo values(seat_seq.nextval,26, '일반석(275)' ,275,15,18,14000,12600,7000,0,11200);
insert into seatinfo values(seat_seq.nextval,30, '등급없음(274)' ,274,15,18,5750,5175,2875,0,4600);

insert into terms values(terms_seq.nextval, 12, 0, 0, '예매확인 및 취소', ' ', '오늘 기준 3일 전 출항 예매 내역까지 검색이 가능합니다. 더 이전 내역 검색을 원하실 경우 [이전 결제내역 조회]를 선택하여 주십시오.
결제, 입금 완료된 예매 내역은 예매건 조회로만 검색이 가능합니다.
* 예약 : 미결제, 미입금 상태의 예약건
* 예매 : 결제, 입금 완료 상태의 예약건
* 이전 결제 내역 조회는 회원 아이디, 카드번호로만 검색이 가능합니다.');

insert into terms values(terms_seq.nextval, 13, 0, 0, '승선권예약', '예약가능기간', '예약가능기간은 출항일 25일 전부터 출항 3일 전까지이며, 그 이후에는 예매(예약 후 즉시결제)만 가능합니다.
단, 선사에 따라 예약가능기간은 다를 수 있으며 당일 출항분 예매는 불가능합니다.');

insert into terms values(terms_seq.nextval, 13, 0, 0, '승선권예약', '대금결제', '대금결제는 회원/비회원 모두 예약 완료 후 차후에 결제하시면 되며, 예약만료일시는 예약일 기준 익일 22:00입니다.
예약만료일시까지 대금결제가 이루어지지 않으면 별도의 통보 없이 자동으로 예약이 취소됩니다.');

insert into InfoBoard values(infobrd_seq.nextval, '승선권은 언제부터 예매가 가능한가요?', '예매 일정은 약 2달 전부터 예약이 가능하며, 정확한 예매 일정은 선사별 상황에 따라 다를 수 있습니다.
자세한 사항은 해당 여객선사로 문의하여 주시기 바랍니다.

[친절한 여행지식인] > [선사선박정보] 에서 자세한 내용 확인 가능합니다. ', 'null', 621);

insert into InfoBoard values(infobrd_seq.nextval, '출항시간 몇 분 전까지 항구에 도착해야하나요?', '항구에는 한 시간 전에 도착하는 것을 권장드리며, 기상상황 등으로 연착이 지연될 수 있음을 참고바랍니다.

자세한 내용은 [유용한 운항정보] > [실시간 운항정보] 에서 실시간 정보를 확인 하실 수 있습니다.', 'null', 623 );

```
