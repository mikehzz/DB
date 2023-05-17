--[문항1]

/* 커뮤니티 */
CREATE TABLE BOARD_99 (
	seq NUMBER(7) NOT NULL, /* 순번 */
	title VARCHAR2(200) NOT NULL, /* 제목 */
	contents CLOB, /* 내용 */
	div VARCHAR2(2) NOT NULL, /* 구분 */
	read_cnt NUMBER(6) DEFAULT 0, /* 조회수 */
	reg_dt DATE DEFAULT sysdate, /* 등록일 */
	reg_id VARCHAR2(20), /* 등록자 */
	mod_dt DATE DEFAULT sysdate, /* 수정일 */
	mod_id VARCHAR2(20) /* 수정자 */
);

COMMENT ON TABLE BOARD_99 IS '커뮤니티';

COMMENT ON COLUMN BOARD_99.seq IS '순번';

COMMENT ON COLUMN BOARD_99.title IS '한글 100자 입력 가능.';

COMMENT ON COLUMN BOARD_99.contents IS '4GB';

COMMENT ON COLUMN BOARD_99.div IS '10:자유계시판, 20:공지사항';

COMMENT ON COLUMN BOARD_99.read_cnt IS '조회수';

COMMENT ON COLUMN BOARD_99.reg_dt IS '등록일';

COMMENT ON COLUMN BOARD_99.reg_id IS '등록자';

COMMENT ON COLUMN BOARD_99.mod_dt IS '수정일';

COMMENT ON COLUMN BOARD_99.mod_id IS '수정자';

CREATE UNIQUE INDEX PK_BOARD_99
	ON BOARD_99 (
		seq ASC
	);

ALTER TABLE BOARD_99
	ADD
		CONSTRAINT PK_BOARD_99
		PRIMARY KEY (
			seq
		);
        