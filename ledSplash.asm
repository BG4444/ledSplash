.include "tn15def.inc"
//�������� ������ - ������������� �������� � �������� 6,10��. (1.6���/(1024*256)

//������� ��������� �� �����������, ������������ ������ ����� � ������-0
//������ ���������� �����������
//������� �� ����� ��������� ��� ���

//���������� ������� 0 - ����� ��������� ������������
	//�������� - �������� ��������� 1.6 ��� � ��������� �� 1024
	//���� ��������� ������� ������ 1024 ����
	//����������� ����� ������ � ������� TCCR0 ���������� ������ CS00 � CS02
	//�������, �������� 27, ������� 9
	ldi r31,(1<<cs00 ) | (1<<cs02)
	out tccr0,r31
	
	//���������� ��������� ���������� �� ������������ ������� 0
	//����������� ����� ������ � ������� TIMSK ����� TOIE0
	//�������, �������� 20
	ldi r31,1<<toie0
	sbr timsk,toie0
	//������������� ���������� ���������� ��� ������������ ������� 0
	rjmp reset
//���������� ���������� �� �� ������������ ������� 0, ���������� � �������� ����� 6��
	com r31 			//�������� ����� r31
	out portb,r31		//������ �������� ���� - ���� ������� �������, ���� ������
	reti				//������� �� ����������

//���������� ������ (�����������)
reset:
	
	//���������� ��������� ����������
	sei

	//������ � ������� ������� �����, ������� ��� ������ ��������� ����� ���������������
	//��� ������������ ������� � ���������� � ���� B
	ldi r31,0b100
	//������������ ������ ����� B, ��� 2 (���� � 0) �� ����� push-pull
	//�������, �������� 51
	out ddrb,r31

	//����������� ����
	lp:
		rjmp lp	
	
