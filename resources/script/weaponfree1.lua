require "Resources/Script/KeyMacro.lua"

LoadStringTable( "Language/Script/tutorial_string_table.x7" );

MENT = {
	HIDE = 1,
	CHARACTER1 = 2,
	CHARACTER2 = 3,
	CHARACTER3 = 4,
	CHARACTER4 = 5,
	CHARACTER5 = 6,
	CHARACTER6 = 7,	
};

STR = {
	TARGET_POS_SEQ 	= "skill_gunner_chargeshot_hit_wall",
	SPAWN_BOX_01	= "alpha_spawn_pos_01"
};

ACTOR = {
	ME = 0,
	OURS_1 = 1,
	ENEMY_1 = 2,
};

POS = { -- ��� ���� ����.
	MYPOINT = { -- ���� ���� ��ġ
		_01 = { 1373, 1002, 113 }, -- ù��° ������ġ
	},
	
	ENEMY_SPAWN = { -- �� ����.
		_01 = { -1251, 1002, -102 }, -- 1�� �� ����.	
	},
	
	ENEMY_AUTO = {
		{  -1251, 1002, -102 },
		{ -1233, 1002, 1098 },
		{ -1865, 1002, 989 },
		{ -2021.9, 2.4, -1433 }, --��� �����ͼ�.
		{ -932, 1.74, -1598 }, --������ ���ͼ�
		{ -739 , -625, 793 }, -- ������
		{ 4153, -598, 1025 }, -- �ڵ�����
		{ 4016, 1.79, 6247 }, --���ʿ�������.
		{ -1746, 1.79, 5984 }, -- ���� ����.
		{ -1790, 1201, 2164 }, --���� ��ܿö�ͼ�	
		{ 1020, 1201, 2193 }, -- ���� ��������
		{ 1334, 1002 , 778 }, -- ���� ���ͼ�
	},

};

COSTUME = {
	-- ���, ��, ����, ����, �尩, �Ź�, ���
	
	OURS_1  = { 1001112,	0, 	1021112,	1031112,	1041112,	1051112},
				
	ENEMY_1 = { 1001112,	0, 	1021112,	1031112,	1041112,	1051112}, -- 1061108
	ENEMY_2 = { 1061029,	0,	1021029,	1031029,	1041029,	1051029},
	ENEMY_3 = { 0		,	0,	1021089,	1031089,	1041089,	1051089},
	ENEMY_4 = { 0		,	0,	1021100,	1031100,	1041100,	1051100},
	ENEMY_5 = { 0		,	0,	1021085,	1031085,	1041085,	1051085}
};

------------------------------------------------------------------
-- ���� ���� ���� ID �Ϻ�.
------------------------------------------------------------------
STATE_WAIT 			= 3;
STATE_STANDBY		= 4;
STATE_NORMAL		= 5;
STATE_RUN			= 6;
STATE_SIT			= 7;
STATE_JUMP			= 8;
STATE_BOUNDJUMP		= 9;
STATE_FALL			= 10;
STATE_DODGE_LEFT	= 11;
STATE_DODGE_RIGHT	= 12;

STATE_SKILL_FLY				= 31;		-- �ö��� ��ų
STATE_SKILL_ANCHORING		= 32;		-- ��Ŀ�� ��ų
STATE_SKILL_STEALTH			= 33;		-- �κ����� ��ų
STATE_SKILL_SHIELD			= 34;		-- ���� ��ų
STATE_SKILL_WALL_CREATION	= 35;		-- �� ��ų
STATE_SKILL_BIND			= 36;		-- ���ε� ��ų
STATE_SKILL_METALIC			= 37;		-- ��Ż�� ��ų

------------------------------------------------------------------
-- �Է� ID �Ϻ�.
------------------------------------------------------------------
INPUT_STOP 					= 0;
INPUT_DIRECT_ACTION_BEGIN 	= 1;
INPUT_MOVE					= 2;
INPUT_USE_WEAPON_BEGIN		= 3;
INPUT_USE_WEAPON1			= 4;
INPUT_USE_WEAPON1_BEGIN		= 5;
INPUT_USE_WEAPON1_END		= 6;
INPUT_USE_WEAPON1_END_SHORT = 7;
INPUT_USE_WEAPON1_END_LONG	= 8;
INPUT_USE_WEAPON2			= 9;
INPUT_USE_WEAPON2_BEGIN		= 10;
INPUT_USE_WEAPON2_END		= 11;
INPUT_USE_WEAPON2_END_SHORT	= 12;
INPUT_USE_WEAPON2_END_LONG	= 13;
INPUT_USE_WEAPON_END		= 14;

INPUT_JUMP					= 15;
INPUT_FLY_END				= 16;
INPUT_FLY_FALL				= 17;
INPUT_SIT					= 18;
INPUT_SIT_CANCEL			= 19;
INPUT_SPECIAL_ACTION1		= 20;
INPUT_SPECIAL_ACTION1_END	= 21;
INPUT_SPECIAL_ACTION2		= 22;
INPUT_SPECIAL_ACTION2_END	= 23;

INPUT_DODGE_BEGIN			= 24;
INPUT_DODGE_FRONT			= 25;
INPUT_DODGE_BACK			= 26;
INPUT_DODGE_LEFT			= 27;
INPUT_DODGE_RIGHT			= 28;
INPUT_DODGE_END				= 29;

INPUT_RELOAD				= 30;
------------------------------------------------------------------
-- �Է� ���� ID
------------------------------------------------------------------
Weapon1State				= 0;		-- ���� ������ ������
Weapon2State				= 1;		-- ������ ������ ������
Weapon2TempState			= 2;		-- ������.
Weapon1WeakState			= 3;		-- ���� Ŭ�� �����ð� ���� */
Weapon1StrongState			= 4;		-- ���� Ŭ�� �����ð� �̻� : �̵� �� ���� */
Weapon1JumpState			= 5;		-- ���� �� ���� Ŭ�� */
Weapon1Strong1State			= 6;		-- ���� Ŭ�� �����ð� �̻� : �̵� X ���� */
Weapon1Attack2State			= 7;		-- ���� ���� 2Ÿ° */
Weapon1Attack3State			= 8;		-- ���� ���� 3Ÿ° */
Weapon1Attack4State			= 9;		-- ���� ���� 4Ÿ° */
Weapon1Attack5State			= 10;		-- ���� ���� 5Ÿ° */
Weapon1CounterAttackState	= 11;		-- ī���� ������ ������ */
Weapon2WeakState			= 12;		-- ������ ��ư �����ð� ���� */
Weapon2StrongState			= 13;		-- ������ ��ư �����ð� �̻� */
Weapon1InstallState			= 14;   	-- ��ġ���¿��� ���� ������ ������ */
Weapon2InstallState			= 15;		-- ��ġ���¿��� ������ ������ ������ */
------------------------------------------------------------------

TIMER = {
	NOINIT = 0,
	DOING = 1,
	END = 2,
};

MAX_SCRIPT_MENT_COUNT 	= 3;
g_Script_Ment = {}

-- ��ũ��Ʈ ���� �ε��� �ʱ�ȭ.
function Init_tutorial2()

	local scriptTotal = MAX_SCRIPT_MENT_COUNT;

	-- ���ڿ� �ε�
	for i=1,scriptTotal do
		strKey = string.format( "BTC_WEAPON_WeaponFree_%d", i );
		g_Script_Ment[i] = GetString( strKey );
	end
	
	ClearStringTable();
	
end

Init_tutorial2();

-- �Է� ���
-- step : ���� ����
-- compare : �� ����
function Tutorial_Step_WaitInput(step, compare)
	if step == compare then
		TutorialSystem2:WaitNormalInput();
	end
end

-- �Է� ���
-- step : ���� ����
-- compare : �� ����
function Tutorial_Step_WaitInput_TAni(step, compare)
	if step == compare then
		TutorialSystem2:WaitNormalInput_IfEndAniTextThenNext();
	end
end

-- �ִ� ��Ʈ ��� 
-- step : ���� ����
-- compare : �� ����
-- ment_id : ��Ʈ ����
-- char_time : ���� ��� �ӵ�
function Tutorial_Step_PrintAniScript(step, compare, ment_id, char_time)
	if MAX_SCRIPT_MENT_COUNT < ment_id then
	return;
	end
	
	if step == compare then
	
	TutorialSystem2:PrintAniScript(g_Script_Ment[ment_id], char_time);
	TutorialSystem2:SetStep(step+1);
	
	end
end

-- �ִ� ��Ʈ ��� ( ��Ʈ�� ���� 1�� )
-- step : ���� ����
-- compare : �� ����
-- ment_id : ��Ʈ ����
-- char_time : ���� ��� �ӵ�
-- strA1 : ��Ʈ�� ����.
function Tutorial_Step_PrintAniScript_A1(step, compare, ment_id, char_time, strA1)
	if MAX_SCRIPT_MENT_COUNT < ment_id then
	return;
	end
	
	if step == compare then
	
	string1 = string.format( g_Script_Ment[ment_id], strA1 );
	TutorialSystem2:PrintAniScript(string1, char_time);
	TutorialSystem2:SetStep(step+1);
	
	end
end

-- ��Ʈ ���
-- step : ���� ����
-- compare : �� ����
-- ment_id : ��Ʈ ����
function Tutorial_Step_PrintScript(step, compare, ment_id)
	if MAX_SCRIPT_MENT_COUNT < ment_id then
	return;
	end

	if step == compare then
	
	TutorialSystem2:PrintScript(g_Script_Ment[ment_id]);
	TutorialSystem2:SetStep(step+1);
	
	end
end

-- ��Ʈ ��� ( ��Ʈ�� ���� 1�� )
-- step : ���� ����
-- compare : �� ����
-- ment_id : ��Ʈ ����
-- strA1 : ��Ʈ�� ����.
function Tutorial_Step_PrintScript_A1(step, compare, ment_id, strA1)
	if MAX_SCRIPT_MENT_COUNT < ment_id then
	return;
	end

	if step == compare then
	
	string1 = string.format( g_Script_Ment[ment_id], strA1 );
	TutorialSystem2:PrintScript(string1);
	TutorialSystem2:SetStep(step+1);
	
	end
end

-- ������ ��Ʈ ��� ( ��Ʈ�� ���� 1�� )
-- step : ���� ����
-- step_c : �� ����
-- ment_id : ��Ʈ ����
-- char_time : ���� ��� �ӵ�
-- strA1 : ��Ʈ�� ����.
function Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, strA1)
	
	Tutorial_Step_PrintAniScript_A1(step, step_c, ment_id, char_time, strA1); step_c = step_c + 1;
	Tutorial_Step_WaitInput_TAni(step, step_c); step_c = step_c + 1;

	Tutorial_Step_PrintScript_A1(step, step_c, ment_id, strA1); step_c = step_c + 1;
	Tutorial_Step_WaitInput		(step, step_c); step_c = step_c + 1;
	
	return step_c;
end

-- ������ ��Ʈ ��� 
-- step : ���� ����
-- step_c : �� ����
-- ment_id : ��Ʈ ����
-- char_time : ���� ��� �ӵ�
function Tutorial_Step_PageScript(step, step_c, ment_id, char_time)
	
	Tutorial_Step_PrintAniScript(step, step_c, ment_id, char_time); step_c = step_c + 1;
	Tutorial_Step_WaitInput_TAni(step, step_c); step_c = step_c + 1;

	Tutorial_Step_PrintScript	(step, step_c, ment_id); step_c = step_c + 1;
	Tutorial_Step_WaitInput		(step, step_c); step_c = step_c + 1;
	
	return step_c;
end

-- 0 ���� �ʱ�ȭ
-- step : ���� ����
function Tutorial_Step_First(step)
	if step == 0 then

	TutorialSystem2:InitCount(); -- PlayCount �ʱ�ȭ
	TutorialSystem2:SetReturn(false); -- �����ʱ�ȭ -> 1���̳�ó��
	TutorialSystem2:SetData(1,0);
	TutorialSystem2:SetData(0,0);
	TutorialSystem2:SetPointMent(0);
	TutorialSystem2:ClearEnableInput();
		TutorialSystem2:SetAllAttackLimit(false); -- �������� ��δ� enable �Ǿ������� each�� limit�� state�� ���� �ִ´�.
	TutorialSystem2:ClearAttackInputLimit(); -- ���� �Ǿ��ִ°� �� ����.
	
	-- ĳ���� ����.
	TutorialSystem2:CreateActorPos(ACTOR.ME, false ,
	MAKEVECTOR3(POS.MYPOINT._01[1] ,POS.MYPOINT._01[2],POS.MYPOINT._01[3]), 180, 0, 0 );

	-- ĳ���� ���� ����.
	TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
	TutorialSystem2:SetChoseWeaponSlot(ACTOR.ME);
	TutorialSystem2:ChangeWeapon(ACTOR.ME, 0);
	
	TutorialSystem2:SetWeaponChange(ACTOR.ME,true);	
	
	TutorialSystem2:LockGamePlayInput(true); -- ���� �÷��� �Է� ����.
	TutorialSystem2:SetInvincibility(ACTOR.ME,true);
	TutorialSystem2:SetUnlimitAmmo(ACTOR.ME);
	
		-- ĳ���� 1 �̹��� ���
	TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);
	TutorialSystem2:SetStep(step+1);
	end
end

-----------------------------------------------------------------------------------------
-- Tutorial_Loop() 
-- �ʺ��� �Ʒü��� Ʃ�丮�� ���� ����
-- �� �Լ��� Ʃ�丮�� ���� �׻� ȣ���ϴ� Ʃ�丮�� ���� �����̴�.
-----------------------------------------------------------------------------------------

function Tutorial_Loop()

	local step = TutorialSystem2:GetStep();
	local char_time = 50; -- �� ���ڰ� ��µǴ� �ӵ�.
	local step_c 	= 0;
	local ment_id 	= 1;	
---------------------------------------------------------------------------
	-- �ʱ�ȭ ����.
Tutorial_Step_First(step);
step_c = step_c + 1;
---------------------------------------------------------------------------
--������ ��ũ��Ʈ ���.
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName()); 
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time);
	
	if step == step_c then
	TutorialSystem2:SetCurrentWeaponUI();
	TutorialSystem2:SetStep(step+1);
	TutorialSystem2:LockGamePlayInput(false); -- ���� �÷��� �Է� ����.
	TutorialSystem2:ChangeMessageWindow(MENT.HIDE,	0); -- ���̵� UI HIDE
	
	TutorialSystem2:CreateActorPos(ACTOR.OURS_1, true , 
		MAKEVECTOR3(POS.ENEMY_SPAWN._01[1],POS.ENEMY_SPAWN._01[2],POS.ENEMY_SPAWN._01[3]),
				0, 100, 100, "Danial" );

	TutorialSystem2:SetChoseWeaponSlot(ACTOR.OURS_1);
	TutorialSystem2:ChangeWeapon(ACTOR.OURS_1, 0);		
	TutorialSystem2:PushActorCommandState(ACTOR.OURS_1, STATE_NORMAL, 0);
	
	TutorialSystem2:SetInvincibility(ACTOR.OURS_1, false);	
	-- AI ���� ����.
	TutorialSystem2:SetCostume(ACTOR.OURS_1,
		COSTUME.OURS_1[1],COSTUME.OURS_1[2],COSTUME.OURS_1[3],
		COSTUME.OURS_1[4],COSTUME.OURS_1[5],COSTUME.OURS_1[6] );
	end
	step_c = step_c + 1;
	TempStep = step_c;
---------------------------------------------------------------------------	
	if step == step_c then
		TutorialSystem2:SetRealHP( ACTOR.OURS_1 , 50 );
		TutorialSystem2:ClearAllActorCommands(ACTOR.OURS_1);	

		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
	
	if step == step_c then

		if TutorialSystem2:GetHP(ACTOR.OURS_1) == 100 then
		TutorialSystem2:SetRealHP( ACTOR.OURS_1 , 50 );	
		end
		
	end
	
	-------------------------------------------------------------------------------
		
		
		
end