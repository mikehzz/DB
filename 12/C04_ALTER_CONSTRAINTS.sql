--NEW_EMP2 ���̺� loc_code�÷��� NOT NULL ���� ���� �߰�
ALTER TABLE new_emp2
MODIFY(loc_code CONSTRAINT emp2_loccode_nn NOT NULL);


desc new_emp2;