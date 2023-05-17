--[����1]

/* Ŀ�´�Ƽ */
CREATE TABLE BOARD_99 (
	seq NUMBER(7) NOT NULL, /* ���� */
	title VARCHAR2(200) NOT NULL, /* ���� */
	contents CLOB, /* ���� */
	div VARCHAR2(2) NOT NULL, /* ���� */
	read_cnt NUMBER(6) DEFAULT 0, /* ��ȸ�� */
	reg_dt DATE DEFAULT sysdate, /* ����� */
	reg_id VARCHAR2(20), /* ����� */
	mod_dt DATE DEFAULT sysdate, /* ������ */
	mod_id VARCHAR2(20) /* ������ */
);

COMMENT ON TABLE BOARD_99 IS 'Ŀ�´�Ƽ';

COMMENT ON COLUMN BOARD_99.seq IS '����';

COMMENT ON COLUMN BOARD_99.title IS '�ѱ� 100�� �Է� ����.';

COMMENT ON COLUMN BOARD_99.contents IS '4GB';

COMMENT ON COLUMN BOARD_99.div IS '10:���������, 20:��������';

COMMENT ON COLUMN BOARD_99.read_cnt IS '��ȸ��';

COMMENT ON COLUMN BOARD_99.reg_dt IS '�����';

COMMENT ON COLUMN BOARD_99.reg_id IS '�����';

COMMENT ON COLUMN BOARD_99.mod_dt IS '������';

COMMENT ON COLUMN BOARD_99.mod_id IS '������';

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
        