require "Resources/Script/KeyMacro.lua"

LoadStringTable( "Language/Script/tutorial_string_table.x7" );

MENT = {
	HIDE		= 1,
	CHARACTER1 = 2, -- ����			(���۷�����)
	
	CHARACTER2 = 3,	-- �̸�			(�Ʊ�)
	
	CHARACTER3 = 4, -- ���丮�� ����(����..)
	CHARACTER4 = 5, -- ����
	CHARACTER5 = 6, -- �ٸ���
	CHARACTER6 = 7, -- �׸�����
	CHARACTER7 = 8, -- ��ũ��ũ
};

EMOTION = {
	_01 = 0, -- ����ǥ��
	_02 = 1, -- ȭ����ǥ��
	_03 = 2, -- �����ϴ� ǥ��
	_04 = 3, -- ����� ǥ��
	_05 = 4, -- ���� ǥ��
	_06 = 5, -- ��Ȳ�� ǥ��
	_07 = 6  -- ���� ǥ��
};

-- ��Ʈ�� ���̵� 1�� ����.
----------------------------
CTRL_GUIDE1_HIDE 	= -1;
----------------------------
CTRL_GUIDE1_BASIC 	= 0;
----------------------------
CTRL_GUIDE1_SKILL 		= 0; -- ��ų ���
CTRL_GUIDE1_DASH  		= 1; -- ������
CTRL_GUIDE1_SWORDATT 	= 2; -- ���� ����, ���� ���� ����
CTRL_GUIDE1_WALLJUMP 	= 3; -- �� ���� ����
CTRL_GUIDE1_EVASION 	= 4; -- ȸ�� ����
CTRL_GUIDE1_ATTACK 		= 5; -- ������, ���� ����.
----------------------------
-- TutorialSystem2:SetShowControlGuide(false,0,0);
-- TutorialSystem2:SetShowControlGuide(true,CTRL_GUIDE1_HIDE,CTRL_GUIDE1_EVASION);

STR = {
	TARGET_POS_SEQ 			= "groundtarget_eff_01",
	WALL_TARGET_POS_SEQ 	= "groundtarget_eff_02",
	ENEMY_TARGET_POS_SEQ 	= "ai_attack",
	SPAWN_BOX_01			= "alpha_spawn_pos_01"
};

-- ���� ����.
ACTOR = {
	ME 		= 0,
	
	OURS_1 	= 1, -- �̸�
	
	ENEMY_1 = 2, -- ����
	ENEMY_2 = 3, -- ���丮�� ����
	ENEMY_3 = 4, -- �ٸ���
	ENEMY_4 = 5, -- �׸�����
	ENEMY_5 = 6, -- ��ũ��ũ
};

-- ���� �� ����.
COSTUME = {
	-- ���, ��, ����, ����, �尩, �Ź�, ���
	
	OURS_1  = { 1000006,	0,	1020007,	1030007,	1040009,	1050010},

	ENEMY_1 = { 1061029,	0,	1021029,	1031029,	1041029,	1051029}, 
	ENEMY_2 = { 1001112,	0, 	1021112,	1031112,	1041112,	1051112}, 
	ENEMY_3 = { 0		,	0,	1021089,	1031089,	1041089,	1051089},
	ENEMY_4 = { 0		,	0,	1021100,	1031100,	1041100,	1051100},
	ENEMY_5 = { 0		,	0,	1021085,	1031085,	1041085,	1051085}
};

-- ��� ���� ����.
POS = { 
	TARGET = { -- �÷��̾� Ÿ�� ����
		_01 = { -1098, 	2924, 	4799 },
		_02 = { 1217, 	964, 	 954 },
		_02_1 = { 544,  962, 21 },
		_03 = { -1392, 	964, 	-604 }, 
		_04 = { 4530, 	637, 	-168 },
		_05 = { 3814,  2924,   -4669 },
		_06 = { 1476,  2924,   -4895 },
		_07 = { 3343, 2922, -4974 }, -- �ߺ� ��� ���.
		_08 = { 1158, 3338, -4261 } -- ������ ��ġ.
	},

	GOAL = { 1210, 3021, -5884 }, -- ��� ��ǥ.

	OURS_SPAWN = { -- ���� ���� ����.
		_01 = { 1797, 964, 835 }, 	-- (��)
	},
	OURS_AUTO = { -- �ڵ� �̵� ����Ʈ.
		_01 =
		{
			{ 1155, 964, 34 },
			{ 22,  1040, 3 },
		},
		_02 =
		{
			{ -1174,  964, -55 },
			{ -1682,  964, -822 },
		},
		_03 =
		{
			{ 2518, 946, -958 },
			{ 5077, 803, -146 },
		},
		_04 =
		{
			{ 6315, 1328, -1277 },
			{ 6277, 2062, -3461 },
			{ 3858, 2924, -4923 },
		},
		_05 = { 3343, 2922, -4974 }
	},
	ENEMY_SPAWN = { -- �� ����.
		_01 = { -3963, 2923, 4606 }, 	-- (��)
		_02 = { -1636, 2711, -4035 }, 	--
		_03 = { 2628, 2924, -4260 },	-- (��)
		_04 = { 2570, 2924, -4917 },	-- (��)
		_05 = { 1035, 2925, -4311 }		-- (��)
	},
	ENEMY_AUTO = {
		_02 =
		{
			{ -1594, 2711, -4538 },
			{ 1207, 2924, -4917 }
		}
	},
	NAVI = { -- �� ���� ���̵�.
		_01 =
		{ -- ���� ���� -> �츮�� ��� ��
			{ 963, 2455, 6600 },
			{ 145, 2455, 6653 },
			{ 34,  2455, 6058 },
			{ 34,  2924, 5274 },
			{ 34,  2924, 5274 },
			{-312, 2924, 4698 },
			{-1136,2924, 4698 }
		},
		_02 =
		{ -- 1�� �� ���� ���� -> �߾� ���� ��
			{ -1098, 2924, 4799 },		
			{ -4044, 2923, 4722	},
			{ -5304, 2504, 4382	},
			{ -6432, 1892, 2930	},
			{ -6056, 1224, 1004	},
			{ -5146,  848, 446	},
			{ -3973,  445, 621	},
			{ -3305,  445, 899	},
			{ -2582,  946, 858  },
			{ 1217,   964, 954	}
		},
		_03_1 =
		{ -- �߾� ���� �� -> �ߺ� �� ��ġ
			{ 1217, 964, 954 },
			{ 1155, 964, 34 },
			{ 544,  962, 21 }
		},
		_03_2 =
		{ -- �ߺ� �� ��ġ - > ������ �����÷�����
			{ 544,  962, 21 },
			{ 	4,	1039, -26 },			
			{ -1174,  964, -55 },
			{ -1392,  964, -604}
		},
		_04 =
		{ -- ������ �����÷����� -> ���� �� �ʸ�
			{ -1392,  964, -604 },
			{ 2556, 964, -755},
			{ 3282, 447, -636 },
			{ 4530, 637, -168 }
		},
		_05 =
		{ -- ���� �� �ʸ� -> ��� ��� ������
			{ 4530, 637, -168 },
			{ 6315, 1328, -1277 },
			{ 6277, 2062, -3461 },
			{ 4545, 2732, -4368 },
			{ 3998,  2922, -4557 }
		},
		_06 =
		{ -- ��� ��� ������ -> ��� ��� ��
			{ 3357, 2925, -4703	},
			{ 1544, 2925, -4890	}
		},
		_07 =
		{ -- ��� ��� �� - > �ߺ� ��� ����.
			{ 1544, 2925, -4890	},
			{ 3343, 2922, -4974 }
		}
	}
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

INPUT_CHANGE_WEAPON_BEGIN	= 31;
INPUT_CHANGE_WEAPON_1		= 32;
INPUT_CHANGE_WEAPON_2		= 33;
INPUT_CHANGE_WEAPON_3		= 34;
INPUT_CHANGE_WEAPON_4		= 35;
INPUT_CHANGE_WEAPON_5		= 36;
INPUT_CHANGE_WEAPON_END		= 37;

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

------------------------------------------------------------------
-- �浹 Ÿ��.
------------------------------------------------------------------
TYPE_UNKNOWN		= 0x00000000;
TYPE_LAND_GROUND	= 0x00000001;	--��
TYPE_LAND_STONE		= 0x00000002;	--��
TYPE_LAND_STEEL		= 0x00000004;	--ö
TYPE_LAND_WOOD		= 0x00000008;	--����
TYPE_LAND_WATER		= 0x00000010;	--��
TYPE_LAND_GLASS		= 0x00000020;	--����
TYPE_WEAPON			= 0x00000040;	--����
TYPE_BROKEN			= 0x00000080;	--������ ������Ʈ
TYPE_CRUSH			= 0x00000100;	--��׷����� ������Ʈ
TYPE_TERRITORY		= 0x00000200;	--������
TYPE_OBSTRUCTION	= 0x00000400;	--��ֹ�
TYPE_SHIELD			= 0x00000800;	--����	
TYPE_ACTOR			= 0x00001000;	--����
TYPE_BALL			= 0x00002000;	--��
TYPE_CAMERA			= 0x00004000;	--ī�޶�
TYPE_DYNAMIC_BROKEN = 0x00008000; --�����̴� ������ ������Ʈ( CDynamicBrokenObject )
TYPE_AIACTOR		= 0x00010000;	--AI Actor
TYPE_BLOCK_ACTOR	= 0x00020000;	--Actor�� �浹
TYPE_BLOCK_AIACTOR	= 0x00040000;	--Actor�� �浹
TYPE_BLOCK_ALPHA	= 0x00080000;	--Alpha�� �浹 �ϴ� Block
TYPE_BLOCK_BETA		= 0x00100000;	--Beta�� �浹 �ϴ� Block
TYPE_MONSTER        = 0x00200000; --MONSTER
TYPE_BLOCK_MONSTER  = 0x00400000; --MONSTER�� �浹
------------------------------------------------------------------

TIMER = {
	NOINIT 	= 0,
	DOING 	= 1,
	END 	= 2
};

-- ���� ������ ID ����Ʈ.
WEAPON = {
	SUB_MACHINE_GUN = 2010001,
	EXO_SIDE 		= 2000031,
	TURRET 			= 2020005
};

-- ��ų ������ ID ����Ʈ.
SKILL = {
	ANCHORING 		= 3010001,
	FLY 			= 3020001,
	STEALTH 		= 3030001,
	SENSOR 			= 3040001,
	SHIELD 			= 3050001,
	WALL_CREATION 	= 3060001,
	BIND 			= 3070001,
	METALIC 		= 3080001
};

-- tutorial_string_table.xml ������ �����.
MAX_SCRIPT_MENT_COUNT 		= 45;
g_Script_Ment = {};

MAX_SCRIPT_CHAR_NAME_COUNT 	= 6;
g_Script_Name = {};

DATA_KEY_WALLJUMP 	= 0;

-- ��ũ��Ʈ ���� �ε��� �ʱ�ȭ.
function Init_tutorial2()

--	local scriptTotal = MAX_SCRIPT_MENT_COUNT;
	
	-- ���ڿ� ����Ʈ �ε�
	for i=1,MAX_SCRIPT_MENT_COUNT do
		strKey = string.format( "BTC_TUTO_SCRIPT_%d", i );
		g_Script_Ment[i] = GetString( strKey );
	end

	-- �ӽ� ������ �߰�.
	-- g_Script_Name[1] = "�ѱ���";
	-- g_Script_Name[2] = "����Ű";
	-- g_Script_Name[3] = "�����ƿ���";
	-- g_Script_Name[4] = "�յ�¯¯��";
	-- g_Script_Name[5] = "����";
	-- g_Script_Name[6] = "..";
	
	local Script_Name = {};
	
	-- �̸� ����Ʈ �ε�.
	for i=1,MAX_SCRIPT_CHAR_NAME_COUNT do
		strKey = string.format( "BTC_TUTO_CHARACTER_NAME_%d", i+2 );
		g_Script_Name[i] = GetString( strKey );
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
-- character_id : ĳ���� id.( ��� ĳ���� ��� )
function Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, strA1, character_id, char_emo_id)

	if step == step_c then
		TutorialSystem2:PushPrevStep(step_c);	
		TutorialSystem2:ChangeMessageWindow(character_id, char_emo_id);
		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;	
	
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
function Tutorial_Step_PageScript(step, step_c, ment_id, char_time, character_id, char_emo_id)
	
	if step == step_c then
		TutorialSystem2:PushPrevStep(step_c);	
		TutorialSystem2:ChangeMessageWindow(character_id, char_emo_id);
		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
	
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

	-- ĳ���� ����.
	TutorialSystem2:CreateActorBox(ACTOR.ME, true, STR.SPAWN_BOX_01, 0, 0);
--	TutorialSystem2:CreateActorPos(ACTOR.ME,
--		WAYPOINT_POS._000[1],WAYPOINT_POS._000[2],WAYPOINT_POS._000[3], 90, 0, 0);

	-- ĳ���� ���� ����.
	TutorialSystem2:SetWeaponSlot(ACTOR.ME, 0, WEAPON.SUB_MACHINE_GUN, 0 ); -- ���� �ӽŰ� ����.
	TutorialSystem2:SetWeaponSlot(ACTOR.ME, 1, WEAPON.EXO_SIDE, 0 ); -- ���� ���̵� ����.
--	TutorialSystem2:SetWeaponSlot(ACTOR.ME, 2, WEAPON.TURRET, 0 ); --
	TutorialSystem2:ChangeWeapon(ACTOR.ME, 0);
	TutorialSystem2:SetWeaponChange(ACTOR.ME, true); -- ���� ���� ���� ON

	-- �浹 ����.
	TutorialSystem2:EnableCollisionType(ACTOR.ME, TYPE_ACTOR, false);
	
	-- ĳ���� ��ų ����.
	TutorialSystem2:SetSkill(ACTOR.ME, SKILL.SHIELD);

	TutorialSystem2:LockGamePlayInput(true); -- ���� �÷��� �Է� ����.

	TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
	
	-- �Ʊ� ĳ���� ����.
	--TutorialSystem2:CreateActorPos(ACTOR.OURS_1,
	--	WAYPOINT_POS._001[1],WAYPOINT_POS._001[2],WAYPOINT_POS._001[3], 270, 0, 0);

	-- �Ʊ� ĳ���� ���� ����.
	-- uiHairID, uiFaceID, uiCoatID, uiPantsID, uiGlovesID, uiShoesID
	--TutorialSystem2:SetCostume(ACTOR.OURS_1,
	--	1000000, 0, 1020000, 1030000, 1040040, 0 );

	-- ĳ���� 1 �̹��� ���
--	TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);
	TutorialSystem2:SetStep(step+1);
--**********************************************************************************
--**********************************************************************************
	TutorialSystem2:SetLevel(1);
--**********************************************************************************
--**********************************************************************************

	-- TutorialSystem2:SetStep(71); -- ������� ���� �� ���� ����.
	-- TutorialSystem2:Goal();

	-- TutorialSystem2:SetCameraBaseTarget(ACTOR.OURS_1, CAMERA_TYPE_FOCUS);
	-- TutorialSystem2:PushActorCommandSocialAction(ACTOR.OURS_1, 3); -- �ȳ� �׼� ���.

	TutorialSystem2:SetPrevTargetPos( TutorialSystem2:GetSpawnBoxPos(STR.SPAWN_BOX_01) );

	TutorialSystem2:SetProtectCondition(true);
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
	local ment_id 	= 0;

---------------------------------------------------------------------------
	-- �ʱ�ȭ ����.
	Tutorial_Step_First(step);
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:SetActorSpawnPos(STR.SPAWN_BOX_01, ACTOR.ME);
		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;		
---------------------------------------------------------------------------	
	-- 5 ������ ��ũ��Ʈ ���.
---------------------------------------------------------------------------	
	-- �ȳ��ϼ���. �ݽ��Ǿ��� S4���׿� ���Ű��� ȯ���մϴ�.{N}�� ������ %s���� ���� ���۷����� �����Դϴ�.^^	
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------		
	-- �������� S4���Ű� �Ǳ����� ������ �Ʒ��� �����ϰڽ��ϴ�.{N}�Ʒ��� �����ϸ� ����ǰ ��Ʈ�� �����ص帮�� ������������ ��Ź����� ^^
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time,MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------		
	-- �Ʒ��� S4������ Ư¡�� ��ġ�ٿ� ���� ����� �����Դϴ�.{N}�����ϰ� ���� �˷��帱����.^^ ������ �� �߾ӿ� �ִ� ���� �����ؼ�{N}������� �� ���� �־� ������ ȹ���մϴ�.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time,MENT.CHARACTER1, EMOTION._03);
---------------------------------------------------------------------------			
	-- ���� �ϴù������� ���� ������ TAB��ư�� ���� ���� ��ġ��{N}Ȯ���� �� �ֽ��ϴ�.	
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time,MENT.CHARACTER1, EMOTION._03);
---------------------------------------------------------------------------			
	-- �׷� �ϴ� ���� ������� �̵��� �غ��ڽ��ϴ�.{N}[WASD]Ű�� ���콺�� ����Ͽ� ĳ���͸� ������ ��ġ���� �̵��ϼ���.	
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time,MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------
	-- ���̵� UI HIDE, A ���� ǥ��
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
			
		-- �����..
		-- TutorialSystem2:ReqCompleteReward(); -- ������ ���� ��û.
			
		TutorialSystem2:SetShowControlGuide(true, CTRL_GUIDE1_BASIC, CTRL_GUIDE1_HIDE);
		TutorialSystem2:ChangeMessageWindow(MENT.HIDE,	0); -- ���̵� UI HIDE
		TutorialSystem2:SetTimer(0, 30000); -- Ÿ�̸� ����.
		TutorialSystem2:GenerateEffect(
			POS.TARGET._01[1], POS.TARGET._01[2], POS.TARGET._01[3],
			STR.TARGET_POS_SEQ );
		TutorialSystem2:SetStep(step+1);

		-- 1�� ��ǥ ���� �̵� ȭ��ǥ ��� ���

		local j = 1;
		while POS.NAVI._01[j] do
			TutorialSystem2:RegistArrowNode(POS.NAVI._01[j][1], POS.NAVI._01[j][2], POS.NAVI._01[j][3]);
			j = j + 1;
		end
--------------------------------------------------------------------------------------------------
--[[
		-- 2�� �� ����.
		TutorialSystem2:CreateActorPos(ACTOR.ENEMY_2,
						POS.NAVI._01[6][1], POS.NAVI._01[6][2], POS.NAVI._01[6][3],
						0, 100, 100, "Enemy2");
		-- 2�� �� ���� ����.
		TutorialSystem2:SetWeaponSlot(ACTOR.ENEMY_2, 0, WEAPON.TURRET, 0 ); --
		--TutorialSystem2:SetWeaponSlot(ACTOR.ENEMY_2, 0, WEAPON.SUB_MACHINE_GUN, 0 ); -- ���� �ӽŰ� ����.
		TutorialSystem2:SetActorDir(270, ACTOR.ENEMY_2);

		-- 2�� �� ���� ����.
		TutorialSystem2:PushActorCommandAttack(ACTOR.ENEMY_2, ACTOR.ME, false, true, 0);
		TutorialSystem2:PushActorCommandAttack(ACTOR.ENEMY_2, ACTOR.ME, true, false, 1000);
		TutorialSystem2:PushActorCommandDelayTime(ACTOR.ENEMY_2, 1000);
--		TutorialSystem2:PushActorCommandState(ACTOR.ENEMY_2, ACTOR.OURS_1, false, true, 0);
		--TutorialSystem2:PushActorCommandState(ACTOR.ENEMY_2, STATE_STANDBY_INSTALL, 0);
		TutorialSystem2:PushActorCommandInput(ACTOR.ENEMY_2, INPUT_USE_WEAPON2);
		TutorialSystem2:PushActorCommandDelayTime(ACTOR.ENEMY_2, 3000);
		TutorialSystem2:PushActorCommandInput(ACTOR.ENEMY_2, INPUT_USE_WEAPON2);
		TutorialSystem2:PushActorCommandDelayTime(ACTOR.ENEMY_2, 3000);

		TutorialSystem2:CreateActorPos(ACTOR.OURS_1,
						POS.NAVI._01[7][1], POS.NAVI._01[7][2], POS.NAVI._01[7][3],
						0, 100, 100, "Enemy3");

		-- TutorialSystem2:CreateActorPos(ACTOR.OURS_1,
					-- POS.OURS_SPAWN._01[1], POS.OURS_SPAWN._01[2], POS.OURS_SPAWN._01[3],
					-- 180, 0, 0,"Ningugi");

--]]--
		-- TutorialSystem2:PushActorCommandState(ACTOR.OURS_1, STATE_DODGE_LEFT, 0);
		-- TutorialSystem2:PushActorCommandDelayTime(ACTOR.OURS_1, 1000);
		-- TutorialSystem2:PushActorCommandState(ACTOR.OURS_1, STATE_DODGE_LEFT, 0);
		-- TutorialSystem2:PushActorCommandDelayTime(ACTOR.OURS_1, 1000);

--------------------------------------------------------------------------------------------------

		TutorialSystem2:LockGamePlayInput(false); -- ���� �÷��� �Է� Ǯ��.

	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then

		TutorialSystem2:SetCountDownNumber( TutorialSystem2:GetTimerLeftTime(0)/1000 );
		
		-- Ư�� �ð� ���� ���� ���ϸ� �ǵ��� ���� ���.
		if TutorialSystem2:GetTimerState(0) == TIMER.END then
			TutorialSystem2:SetActorSpawnPos(STR.SPAWN_BOX_01, ACTOR.ME);

			TutorialSystem2:SetActorDir(90, ACTOR.ME);
			TutorialSystem2:SetTimer(0, 30000);
		end

		-- A ������ �ڽ� �Ÿ� üũ
		if TutorialSystem2:IsActorLocated(ACTOR.ME,
			POS.TARGET._01[1], POS.TARGET._01[2], POS.TARGET._01[3],
			300) == true then
			
			TutorialSystem2:SetCountDownNumber( -1 );
			
			TutorialSystem2:SetShowControlGuide(false,0,0);
		
			-- ���� ���.
--			TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1,0);

			TutorialSystem2:RemoveGenEffectAll();
			TutorialSystem2:UnRegistAllArrowNodes();

			-- 1�� �� ����.
			TutorialSystem2:CreateActorPos(ACTOR.ENEMY_1, true,
							MAKEVECTOR3(
							POS.ENEMY_SPAWN._01[1],POS.ENEMY_SPAWN._01[2],POS.ENEMY_SPAWN._01[3]),
							0, 100, 100, g_Script_Name[ACTOR.ENEMY_1]);

			-- 1�� �� ���� ����.
			-- uiHairID, uiFaceID, uiCoatID, uiPantsID, uiGlovesID, uiShoesID
			TutorialSystem2:SetCostume(ACTOR.ENEMY_1,
				COSTUME.ENEMY_1[1],COSTUME.ENEMY_1[2],COSTUME.ENEMY_1[3],
				COSTUME.ENEMY_1[4],COSTUME.ENEMY_1[5],COSTUME.ENEMY_1[6] );

			-- 1�� �� ���� ����.
			TutorialSystem2:SetWeaponSlot(ACTOR.ENEMY_1, 0, WEAPON.SUB_MACHINE_GUN, 0 ); -- ���� �ӽŰ� ����.
			TutorialSystem2:ChangeWeapon(ACTOR.ENEMY_1, 0);

			-- 1�� �� Ÿ�� ǥ��	
			TutorialSystem2:GenerateEffect(
			POS.ENEMY_SPAWN._01[1],POS.ENEMY_SPAWN._01[2]+500,POS.ENEMY_SPAWN._01[3],
			STR.ENEMY_TARGET_POS_SEQ );			

			TutorialSystem2:LockGamePlayInput(true); -- ���� �÷��� �Է� ����.
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);

			TutorialSystem2:SetStep(step+1);
--**********************************************************************************
--**********************************************************************************
			TutorialSystem2:SetLevel(2);
			TutorialSystem2:ClearPrevStep();
--**********************************************************************************
--**********************************************************************************
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	-- ���!! ����� ��Ʈ����Ŀ�� ������� �Ծ��!!
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time,MENT.CHARACTER1, EMOTION._02);
---------------------------------------------------------------------------
	-- ����?! �� ����� �Ʒú���?? ����� �������ִ°ž�??{N}�̷��̷� ����� ��ġ�� ���ڱ���.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time,MENT.CHARACTER3, EMOTION._05);
---------------------------------------------------------------------------
	-- ���� �����ϴ±���. ��.{N}���� �̹� ����� �����ص������ �� �ǹ��� �༮���� ������ �����ּ���.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time,MENT.CHARACTER1, EMOTION._02);
---------------------------------------------------------------------------	
	-- ����, ���� ������ �˷��帱����.{N}�켱 �����ϰ��ִ� �߻繫�� ������ �˷��帱����.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time,MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------	
	-- �׷� ȭ�� �߾ӿ� �ִ� ũ�ν��� ���콺�� �̿��� ���������� ���ϵ��� ��뿡�� �����ѵ� ���콺 ��Ŭ������ �����ϼ���.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time,MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------	
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
		TutorialSystem2:ChangeMessageWindow(MENT.HIDE,	0); -- ���̵� UI HIDE
		TutorialSystem2:LockGamePlayInput(false); -- ���� �÷��� �Է� Ǯ��.
		TutorialSystem2:SetShowControlGuide(true,CTRL_GUIDE1_HIDE,CTRL_GUIDE1_ATTACK);

		TutorialSystem2:SetTimer(0, 60000); -- 60�� �ð� ���� �ɱ�.
		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
	
		TutorialSystem2:SetCountDownNumber( TutorialSystem2:GetTimerLeftTime(0)/1000 );
	
		-- Ư�� �ð� ���� ���� ���ϸ� �ǵ��� ���� ���.
		if TutorialSystem2:GetTimerState(0) == TIMER.END then
			TutorialSystem2:SetActorPos(
				POS.TARGET._01[1], POS.TARGET._01[2], POS.TARGET._01[3],
				--TARGET_POS._01[1], TARGET_POS._01[2], TARGET_POS._01[3],
				ACTOR.ME);
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);

			TutorialSystem2:SetTimer(0, 60000);
		end

		-- ó�� ������ �� ĳ���� ��� ����
		if TutorialSystem2:IsDeadActor(ACTOR.ENEMY_1) == true then

			TutorialSystem2:SetCountDownNumber( -1 );

			TutorialSystem2:RemoveGenEffectAll();
			TutorialSystem2:SetShowControlGuide(false,0,0);

			TutorialSystem2:LockGamePlayInput(true);
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
--			TutorialSystem2:ChangeActorState(ACTOR.ME, STATE_NORMAL);

			TutorialSystem2:SetStep(step+1);
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	-- Ū..
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time,MENT.CHARACTER3, EMOTION._06);
---------------------------------------------------------------------------
	-- ���ϼ̾��.^^ ���� �ķ��ϳ׿�.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------
	-- ������ ����ؼ� �������� �ϰ� �̵��ұ��?? {N}�켱 ȭ�� �����ϴܿ� �ִ� ���ڰ� %s���� �����ϰ��ִ� �Ѿ� ���� �˷����. {N}���� ���ڰ� 0�̵Ǹ� �ڵ����� �������� �ؿ�.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._03);
---------------------------------------------------------------------------
	goto_step8 = step_c;
---------------------------------------------------------------------------
	-- �������� �������� �Ͻ÷��� [R]Ű�� ���� �������ּ���.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------	
	if step == step_c then
		if TutorialSystem2:GetWeaponCurrentAmmo() == TutorialSystem2:GetWeaponMagazineCapacity() then
			TutorialSystem2:LockGamePlayInput(true);
			TutorialSystem2:ClearEnableInput();
			TutorialSystem2:PushEnableInput(INPUT_RELOAD);

			TutorialSystem2:ClearPrevStep();
			TutorialSystem2:SetStep(step+1);
		else
			TutorialSystem2:LockGamePlayInput(true);
			TutorialSystem2:ClearEnableInput();			
			TutorialSystem2:PushEnableInput(INPUT_RELOAD);
			
			TutorialSystem2:ClearPrevStep();		
			TutorialSystem2:SetStep(step+6); -- �� ������ �̵�.
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------	
	ment_id = ment_id + 1;
	-- ������ �������� ���ʿ䰡 ���ڳ׿�. {N}�Ʒ��� ���� ź�� ����ϰ� �������� �غ����??
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._03);
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
		TutorialSystem2:SetShowControlGuide(true,CTRL_GUIDE1_HIDE,CTRL_GUIDE1_ATTACK);
		TutorialSystem2:SetTempAmmoNum(TutorialSystem2:GetWeaponCurrentAmmo());
		TutorialSystem2:SetTimer(0, 30000);
		TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0);

		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
-----------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:SetCountDownNumber( TutorialSystem2:GetTimerLeftTime(0)/1000 );
	
		-- �ð��� ����Ǹ� ���� UI ���.
		if TutorialSystem2:GetTimerState(0) == TIMER.END then
			TutorialSystem2:ClearPrevStep();
			TutorialSystem2:SetStep(goto_step8);
		end

		-- ���ε� �Ϸ�Ǿ��°�?
		if TutorialSystem2:GetWeaponCurrentAmmo() == TutorialSystem2:GetWeaponMagazineCapacity() then
			TutorialSystem2:SetCountDownNumber( -1 );
		
			TutorialSystem2:SetStep(step+1);
			TutorialSystem2:LockGamePlayInput(false); -- ���� �÷��� �Է� ���� Ǯ��.			
			TutorialSystem2:SetShowControlGuide(false,0,0);
			
			TutorialSystem2:SetWeaponChange(ACTOR.ME, false); -- ���� ���� ���� ON
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		-- (��) ������ �Ʊ� ĳ���� ����.
		TutorialSystem2:CreateActorPos(ACTOR.OURS_1, false,
		MAKEVECTOR3(
		POS.OURS_SPAWN._01[1], POS.OURS_SPAWN._01[2], POS.OURS_SPAWN._01[3]),
		180, 0, 0, g_Script_Name[ACTOR.OURS_1] );
		
		TutorialSystem2:SetCostume(ACTOR.OURS_1,
			COSTUME.OURS_1[1],COSTUME.OURS_1[2],COSTUME.OURS_1[3],
			COSTUME.OURS_1[4],COSTUME.OURS_1[5],COSTUME.OURS_1[6] );

		TutorialSystem2:SetWeaponSlot(ACTOR.OURS_1, 0, WEAPON.SUB_MACHINE_GUN, 0 ); -- ���� �ӽŰ� ����.
		TutorialSystem2:ChangeWeapon(ACTOR.OURS_1, 0);
		
		-- �浹 ����.
		TutorialSystem2:EnableCollisionType(ACTOR.OURS_1, TYPE_ACTOR, false);

		TutorialSystem2:SetInvincibility(ACTOR.OURS_1, true);

		-- �Ʊ�ĳ���͸� �̵� ��ǥ �������� ����.
		TutorialSystem2:GenerateEffect(
		POS.TARGET._02[1], POS.TARGET._02[2], POS.TARGET._02[3],
		--POS.OURS_SPAWN._01[1], POS.OURS_SPAWN._01[2], POS.OURS_SPAWN._01[3],
		STR.TARGET_POS_SEQ );

		TutorialSystem2:SetPrevTargetPos(
			MAKEVECTOR3(POS.TARGET._01[1], POS.TARGET._01[2], POS.TARGET._01[3]) );

--		TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);
		TutorialSystem2:LockGamePlayInput(true); -- ���� �÷��� �Է� ����.
		TutorialSystem2:SetStep(step+1);

--**********************************************************************************
--**********************************************************************************
		TutorialSystem2:SetLevel(3);
		TutorialSystem2:ClearPrevStep();
--**********************************************************************************
--**********************************************************************************
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	-- ���ƿ�!! ���� ���� ������ ������ �̵��غ����?
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------
	-- ��������ġ���� �뽬�̵����� �̵����ּ���. {N}�뽬�̵��� [W]Ű�� ������ �ι� ������ ������ �뽬�̵��� �մϴ�. �������?
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._03);
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
		-- 2�� ��ǥ ���� �̵� ȭ��ǥ ��� ���
		local j = 1;
		while POS.NAVI._02[j] do
			TutorialSystem2:RegistArrowNode(POS.NAVI._02[j][1], POS.NAVI._02[j][2], POS.NAVI._02[j][3]);
			j = j + 1;
		end

		TutorialSystem2:SetShowControlGuide(false,CTRL_GUIDE1_HIDE,CTRL_GUIDE1_DASH);

		TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0);
		TutorialSystem2:LockGamePlayInput(false); -- ���� �÷��� �Է� ���� Ǯ��.
		TutorialSystem2:SetStep(step+1);

		TutorialSystem2:SetTimer(0, 60000);
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:SetCountDownNumber( TutorialSystem2:GetTimerLeftTime(0)/1000 );
	
		-- �ð��� ���� �Ǹ� �ٽ� �������� ������.
		if TutorialSystem2:GetTimerState(0) == TIMER.END then

			TutorialSystem2:SetActorPos(
				POS.NAVI._02[1][1], POS.NAVI._02[1][2]+100, POS.NAVI._02[1][3],
				ACTOR.ME);
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);

			TutorialSystem2:SetTimer(0, 60000);
		end

		-- A ������ �ڽ� �Ÿ� üũ
		if TutorialSystem2:IsActorLocated(ACTOR.ME,
			POS.TARGET._02[1], POS.TARGET._02[2], POS.TARGET._02[3],
			--POS.OURS_SPAWN._01[1], POS.OURS_SPAWN._01[2], POS.OURS_SPAWN._01[3],
			300) == true then
			TutorialSystem2:SetCountDownNumber( -1 );

			TutorialSystem2:SetShowControlGuide(false,0,0);
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);

			TutorialSystem2:RemoveGenEffectAll();
			TutorialSystem2:UnRegistAllArrowNodes();

--			TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER3, 0);
			TutorialSystem2:LockGamePlayInput(true); -- ���� �÷��� �Է� ����.
			TutorialSystem2:SetStep(step+1);

		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	-- ��¦�̾�!! �츮���̾��ݾ�~ {N}�����̴�.  ������ ����Ʈ����Ź��!
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER2, EMOTION._07);
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
		
		local j = 1;
		while POS.OURS_AUTO._01[j] do
			TutorialSystem2:PushActorCommandMoveToTarget(
				POS.OURS_AUTO._01[j][1], POS.OURS_AUTO._01[j][2]+100, POS.OURS_AUTO._01[j][3],
				-1, ACTOR.OURS_1);
			j = j + 1;
		end

		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		if TutorialSystem2:IsExistCommand(ACTOR.OURS_1) == false then
			TutorialSystem2:CatchTheBall(ACTOR.OURS_1); -- �� ���.
			TutorialSystem2:SetStep(step+1);
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	--�츮�� ��Ʈ����Ŀ�� ���� ȹ���߳׿�.
	--���� ȹ���ϸ� SP�� ���������� �����ϰ� ȸ���� ���� �ʾƿ�.
	--���󰡼� �������ּ���.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
	--�ϴ� ���󰡺���.	
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._03);
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
		
		local j = 1;
		while POS.NAVI._03_1[j] do
			TutorialSystem2:RegistArrowNode(POS.NAVI._03_1[j][1], POS.NAVI._03_1[j][2], POS.NAVI._03_1[j][3]);
			j = j + 1;
		end
		TutorialSystem2:SetShowControlGuide(true,CTRL_GUIDE1_BASIC,CTRL_GUIDE1_HIDE);
		TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0);
		TutorialSystem2:LockGamePlayInput(false); -- ���� �÷��� �Է� ���� Ǯ��.
		
		TutorialSystem2:GenerateEffect(
			POS.TARGET._02_1[1], POS.TARGET._02_1[2], POS.TARGET._02_1[3],
			STR.TARGET_POS_SEQ );

		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		if TutorialSystem2:IsActorLocated(ACTOR.ME,
			POS.TARGET._02_1[1], POS.TARGET._02_1[2], POS.TARGET._02_1[3],
			300) == true then
			
			--TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);
			TutorialSystem2:LockGamePlayInput(true); -- ���� �÷��� �Է� ����.
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
			TutorialSystem2:RemoveGenEffectAll();
			TutorialSystem2:UnRegistAllArrowNodes();

			local j = 1;
			while POS.OURS_AUTO._02[j] do

				TutorialSystem2:PushActorCommandMoveToTarget(
					POS.OURS_AUTO._02[j][1], POS.OURS_AUTO._02[j][2]+100, POS.OURS_AUTO._02[j][3],
					-1, ACTOR.OURS_1);
				j = j + 1;

			end
			TutorialSystem2:PushActorCommandLookAtDir(ACTOR.OURS_1, 90);

			-- 2�� �� ����.
			TutorialSystem2:CreateActorPos(ACTOR.ENEMY_2, true,
							MAKEVECTOR3(
							POS.ENEMY_SPAWN._02[1], POS.ENEMY_SPAWN._02[2], POS.ENEMY_SPAWN._02[3]),
							0, 100, 100, g_Script_Name[ACTOR.ENEMY_2] );
							
			TutorialSystem2:SetCostume(ACTOR.ENEMY_2,
				COSTUME.ENEMY_2[1],COSTUME.ENEMY_2[2],COSTUME.ENEMY_2[3],
				COSTUME.ENEMY_2[4],COSTUME.ENEMY_2[5],COSTUME.ENEMY_2[6] );
			
			-- 2�� �� ���� ����.
			TutorialSystem2:SetWeaponSlot(ACTOR.ENEMY_2, 0, WEAPON.TURRET, 0 ); -- ���� �ӽŰ� ����.
			TutorialSystem2:SetActorDir(270, ACTOR.ENEMY_2);

			-- ��ų ����.
			TutorialSystem2:SetSkill(ACTOR.ENEMY_2, SKILL.WALL_CREATION);

			-- 2�� �� ���� ����.
			TutorialSystem2:PushActorCommandAttack(ACTOR.ENEMY_2, ACTOR.OURS_1, false, true, 0);	-- ���� ��ġ.
			
			-- ���� ����.
			TutorialSystem2:SetInvincibility(ACTOR.ENEMY_2, true);
			
			TutorialSystem2:SetStep(step+1);
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		if TutorialSystem2:IsExistCommand(ACTOR.OURS_1) == false then
			TutorialSystem2:SetStep(step+1);
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		local j = 1;
		while POS.NAVI._03_2[j] do
			TutorialSystem2:RegistArrowNode(POS.NAVI._03_2[j][1], POS.NAVI._03_2[j][2], POS.NAVI._03_2[j][3]);
			j = j + 1;
		end
		TutorialSystem2:GenerateEffect(
			POS.TARGET._03[1], POS.TARGET._03[2], POS.TARGET._03[3],
			STR.TARGET_POS_SEQ );
			
		TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0);
		TutorialSystem2:LockGamePlayInput(false); -- ���� �÷��� �Է� ���� Ǯ��.
		
		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		if TutorialSystem2:IsActorLocated(ACTOR.ME,
			POS.TARGET._03[1], POS.TARGET._03[2], POS.TARGET._03[3],
			300) == true then
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
			TutorialSystem2:UnRegistAllArrowNodes();

			TutorialSystem2:LockGamePlayInput(true);

			TutorialSystem2:SetShowControlGuide(false,0,0);
			TutorialSystem2:RemoveGenEffectAll();
--**********************************************************************************
--**********************************************************************************
			TutorialSystem2:SetLevel(4);
			TutorialSystem2:ClearPrevStep();			
--**********************************************************************************
--**********************************************************************************

			TutorialSystem2:SetStep(step+1);
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	-- �̸���!! ��븦 �����!! �!!
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER4, EMOTION._06);
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
		
		TutorialSystem2:PushActorCommandAttackPos(ACTOR.ENEMY_2,
		POS.OURS_AUTO._02[2][1], POS.OURS_AUTO._02[2][2], POS.OURS_AUTO._02[2][3],
		true, false, 5000);
		TutorialSystem2:SetTimer(0, 1000);
		TutorialSystem2:SetStep(step+1);
		
--		TutorialSystem2:SetInvincibility(ACTOR.ME, true);
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		--if TutorialSystem2:IsExistCommand(ACTOR.ENEMY_2) == false then
		if TutorialSystem2:GetTimerState(0) == TIMER.END then

			TutorialSystem2:PushActorCommandState(ACTOR.OURS_1, STATE_DODGE_LEFT, 0);
			TutorialSystem2:PushActorCommandDelayTime(ACTOR.OURS_1, 1000);
			TutorialSystem2:PushActorCommandState(ACTOR.OURS_1, STATE_DODGE_LEFT, 0);
			TutorialSystem2:PushActorCommandDelayTime(ACTOR.OURS_1, 1000);

			local j = 1;
			while POS.OURS_AUTO._03[j] do
				TutorialSystem2:PushActorCommandMoveToTarget(
					POS.OURS_AUTO._03[j][1], POS.OURS_AUTO._03[j][2]+100, POS.OURS_AUTO._03[j][3],
					-1, ACTOR.OURS_1);
				j = j + 1;
			end

			TutorialSystem2:SetStep(step+1);
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	-- ��~~ ��¦�̾�!! {N}���ȸ�ǰ� �ƴϾ����� ū�ϳ����߳�.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER2, EMOTION._07);
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
			
		TutorialSystem2:ChangeMessageWindow(MENT.HIDE,	0); -- ���̵� UI HIDE
		TutorialSystem2:LockGamePlayInput(false); -- ���� �÷��� �Է� ���� Ǯ��.

		TutorialSystem2:GenerateEffect(
		POS.TARGET._03[1], POS.TARGET._03[2], POS.TARGET._03[3],
		STR.TARGET_POS_SEQ );

		TutorialSystem2:SetPrevTargetPos(
			MAKEVECTOR3(POS.TARGET._02[1], POS.TARGET._02[2], POS.TARGET._02[3]) );

		TutorialSystem2:SetTimer(0, 10000);

		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:SetCountDownNumber( TutorialSystem2:GetTimerLeftTime(0)/1000 );
	
		-- Ư�� �ð� ���� ���� ���ϸ� �ǵ��� ���� ���.
		if TutorialSystem2:GetTimerState(0) == TIMER.END then

			TutorialSystem2:SetActorPos(
				POS.TARGET._02[1], POS.TARGET._02[2], POS.TARGET._02[3],
				ACTOR.ME);
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);

			TutorialSystem2:SetTimer(0, 10000); -- Ÿ�̸� ����.
		end

		if TutorialSystem2:IsActorLocated(ACTOR.ME,
			POS.TARGET._03[1], POS.TARGET._03[2], POS.TARGET._03[3],
			300) == true then

			TutorialSystem2:SetCountDownNumber( -1 );

			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);

			TutorialSystem2:RemoveGenEffectAll();
			TutorialSystem2:UnRegistAllArrowNodes();

			-- TutorialSystem2:PushActorCommandAttackPos(ACTOR.ENEMY_2,
			-- POS.OURS_AUTO._02[2][1], POS.OURS_AUTO._02[2][2], POS.OURS_AUTO._02[2][3],
			-- true, false, 5000);

--			TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1,	0);

			TutorialSystem2:LockGamePlayInput(true); -- ���� �÷��� �Է� ����.
			
			TutorialSystem2:SetPrevTargetPos(
				MAKEVECTOR3(POS.TARGET._03[1], POS.TARGET._03[2], POS.TARGET._03[3]) );			

			TutorialSystem2:SetStep(step+1);
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	goto_step7 = step_c;
	
	-- ������� ���ϱ� �����߳׿�. {N}�̸�ó�� ���ȸ�Ƿ� ������ ���ؼ� �̵��غ����?
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._04);
	-- ���ȸ�Ǵ� [A/S]Ű�� �������ִ� ���¿��� [SPACEBAR]�� ������ �ǿ�. {N}SP�� �Һ��ϴ� ������ ����ϼ���~
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
			
		TutorialSystem2:PushActorCommandAttackPos(ACTOR.ENEMY_2,
		POS.OURS_AUTO._02[2][1], POS.OURS_AUTO._02[2][2], POS.OURS_AUTO._02[2][3],
		--POS.TARGET._03[1], POS.TARGET._03[2], POS.TARGET._03[3],
		true, false, 5000);

		TutorialSystem2:SetShowControlGuide(true,CTRL_GUIDE1_HIDE,CTRL_GUIDE1_EVASION);
		TutorialSystem2:ChangeMessageWindow(MENT.HIDE,	0);

		TutorialSystem2:LockGamePlayInput(false); -- ���� �÷��� �Է� ���� Ǯ��.
		
		TutorialSystem2:SetTimer(0,15000);

		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:SetCountDownNumber( TutorialSystem2:GetTimerLeftTime(0)/1000 );

			-- Ư�� �ð� ���� ���� ���ϸ� �ǵ��� ���� ���.
		if TutorialSystem2:GetTimerState(0) == TIMER.END then

			TutorialSystem2:SetActorPos(
				POS.TARGET._03[1], POS.TARGET._03[2], POS.TARGET._03[3],
				ACTOR.ME);
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
			TutorialSystem2:LockGamePlayInput(true); -- ���� �÷��� �Է� ����.
			
			TutorialSystem2:SetTimer(0, 15000); -- Ÿ�̸� ����.
			TutorialSystem2:SetStep(goto_step7);
		end
		
		curStateID = TutorialSystem2:GetCurStateID(ACTOR.ME);
		if 	curStateID == STATE_DODGE_LEFT or
			curStateID == STATE_DODGE_RIGHT then
		
			TutorialSystem2:SetCountDownNumber( -1 );
			TutorialSystem2:SetShowControlGuide(false,0,0);
			
			TutorialSystem2:GenerateEffect(
			POS.TARGET._04[1], POS.TARGET._04[2], POS.TARGET._04[3],
			STR.TARGET_POS_SEQ );

			TutorialSystem2:SetPrevTargetPos(
				MAKEVECTOR3(POS.TARGET._03[1], POS.TARGET._03[2], POS.TARGET._03[3]) );

			local j = 1;
			while POS.NAVI._04[j] do
				TutorialSystem2:RegistArrowNode(POS.NAVI._04[j][1], POS.NAVI._04[j][2], POS.NAVI._04[j][3]);
				j = j + 1;
			end

			TutorialSystem2:SetTimer(0, 15000); -- Ÿ�̸� ����.

			-- 2�� �� �̵�~
			TutorialSystem2:PushActorCommandInput(ACTOR.ENEMY_2, INPUT_USE_WEAPON2);

			TutorialSystem2:PushActorCommandMoveToTarget(
				POS.ENEMY_AUTO._02[1][1], POS.ENEMY_AUTO._02[1][2]+100, POS.ENEMY_AUTO._02[1][3],
				0, ACTOR.ENEMY_2);
			TutorialSystem2:PushActorCommandMoveToTarget(
				POS.ENEMY_AUTO._02[2][1], POS.ENEMY_AUTO._02[2][2]+100, POS.ENEMY_AUTO._02[2][3],
				0, ACTOR.ENEMY_2);

			TutorialSystem2:SetStep(step+1);
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:SetCountDownNumber( TutorialSystem2:GetTimerLeftTime(0)/1000 );
	
		-- Ư�� �ð� ���� ���� ���ϸ� �ǵ��� ���� ���.
		if TutorialSystem2:GetTimerState(0) == TIMER.END then

			TutorialSystem2:SetActorPos(
				POS.TARGET._03[1], POS.TARGET._03[2], POS.TARGET._03[3],
				ACTOR.ME);
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);

			TutorialSystem2:SetTimer(0, 15000); -- Ÿ�̸� ����.
		end

		if TutorialSystem2:IsActorLocated(ACTOR.ME,
			POS.TARGET._04[1], POS.TARGET._04[2], POS.TARGET._04[3],
			300) == true then

			TutorialSystem2:SetCountDownNumber( -1 );

			TutorialSystem2:RemoveGenEffectAll();
			TutorialSystem2:UnRegistAllArrowNodes();
--			TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1,	0);

			TutorialSystem2:SetStep(step+1);

			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
			TutorialSystem2:LockGamePlayInput(true);
		
--			TutorialSystem2:SetInvincibility(ACTOR.ME, false);
		
--**********************************************************************************
--**********************************************************************************
			TutorialSystem2:SetLevel(5);
			TutorialSystem2:ClearPrevStep();			
--**********************************************************************************
--**********************************************************************************
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	-- �ٿԾ�!! ����!!
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER2, EMOTION._01);
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
		
		TutorialSystem2:SetShowControlGuide(true,CTRL_GUIDE1_BASIC,CTRL_GUIDE1_HIDE);
		
		-- 3,4,5�� �� ����.
		TutorialSystem2:CreateActorPos(ACTOR.ENEMY_3, true,
						MAKEVECTOR3(
						POS.ENEMY_SPAWN._03[1],POS.ENEMY_SPAWN._03[2],POS.ENEMY_SPAWN._03[3]),
						0, 100, 100, g_Script_Name[ACTOR.ENEMY_3] );
		TutorialSystem2:CreateActorPos(ACTOR.ENEMY_4, true,
						MAKEVECTOR3(
						POS.ENEMY_SPAWN._04[1],POS.ENEMY_SPAWN._04[2],POS.ENEMY_SPAWN._04[3]),
						0, 100, 100, g_Script_Name[ACTOR.ENEMY_4] );
		TutorialSystem2:CreateActorPos(ACTOR.ENEMY_5, true,
						MAKEVECTOR3(
						POS.ENEMY_SPAWN._05[1],POS.ENEMY_SPAWN._05[2],POS.ENEMY_SPAWN._05[3]),
						0, 100, 100, g_Script_Name[ACTOR.ENEMY_5] );						

		TutorialSystem2:SetCostume(ACTOR.ENEMY_3,
				COSTUME.ENEMY_3[1],COSTUME.ENEMY_3[2],COSTUME.ENEMY_3[3],
				COSTUME.ENEMY_3[4],COSTUME.ENEMY_3[5],COSTUME.ENEMY_3[6] );

		TutorialSystem2:SetCostume(ACTOR.ENEMY_4,
				COSTUME.ENEMY_4[1],COSTUME.ENEMY_4[2],COSTUME.ENEMY_4[3],
				COSTUME.ENEMY_4[4],COSTUME.ENEMY_4[5],COSTUME.ENEMY_4[6] );
						
		TutorialSystem2:SetCostume(ACTOR.ENEMY_5,
				COSTUME.ENEMY_5[1],COSTUME.ENEMY_5[2],COSTUME.ENEMY_5[3],
				COSTUME.ENEMY_5[4],COSTUME.ENEMY_5[5],COSTUME.ENEMY_5[6] );

		-- ���� ����.
		TutorialSystem2:SetWeaponSlot(ACTOR.ENEMY_3, 0, WEAPON.SUB_MACHINE_GUN, 0 ); -- ���� �ӽŰ� ����.
		TutorialSystem2:SetWeaponSlot(ACTOR.ENEMY_4, 0, WEAPON.SUB_MACHINE_GUN, 0 ); -- ���� �ӽŰ� ����.
		TutorialSystem2:SetWeaponSlot(ACTOR.ENEMY_5, 0, WEAPON.SUB_MACHINE_GUN, 0 ); -- ���� �ӽŰ� ����.

		-- ���� ����.
		TutorialSystem2:SetInvincibility(ACTOR.ENEMY_3, true);
		TutorialSystem2:SetInvincibility(ACTOR.ENEMY_4, true);
		TutorialSystem2:SetInvincibility(ACTOR.ENEMY_5, true);

		-- 1�� ���� �̵�.
		local j = 1;
		while POS.OURS_AUTO._04[j] do
			TutorialSystem2:PushActorCommandMoveToTarget(
				POS.OURS_AUTO._04[j][1], POS.OURS_AUTO._04[j][2]+100, POS.OURS_AUTO._04[j][3],
				-1, ACTOR.OURS_1);
			j = j + 1;
		end

		-- ��ǥ ���� ����.
		TutorialSystem2:GenerateEffect(
			POS.TARGET._05[1], POS.TARGET._05[2], POS.TARGET._05[3],
			STR.TARGET_POS_SEQ );

		TutorialSystem2:SetPrevTargetPos(
			MAKEVECTOR3(POS.TARGET._04[1], POS.TARGET._04[2], POS.TARGET._04[3]) );

		local j = 1;
		while POS.NAVI._05[j] do
			TutorialSystem2:RegistArrowNode(POS.NAVI._05[j][1], POS.NAVI._05[j][2], POS.NAVI._05[j][3]);
			j = j + 1;
		end

		TutorialSystem2:SetTimer(0, 15000);

		TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0);
		TutorialSystem2:LockGamePlayInput(false);

		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------	
	if step == step_c then
		TutorialSystem2:SetCountDownNumber( TutorialSystem2:GetTimerLeftTime(0)/1000 );
	
		-- Ư�� �ð� ���� ���� ���ϸ� �ǵ��� ���� ���.
		if TutorialSystem2:GetTimerState(0) == TIMER.END then

			TutorialSystem2:SetActorPos(
				POS.TARGET._04[1], POS.TARGET._04[2], POS.TARGET._04[3],
				ACTOR.ME);
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);

			TutorialSystem2:SetTimer(0, 15000); -- Ÿ�̸� ����.
		end

		if TutorialSystem2:IsActorLocated(ACTOR.ME,
			POS.TARGET._05[1], POS.TARGET._05[2], POS.TARGET._05[3],
			300) == true then
			
			TutorialSystem2:SetActorPos(POS.ENEMY_AUTO._02[2][1], POS.ENEMY_AUTO._02[2][2]+100, POS.ENEMY_AUTO._02[2][3], ACTOR.ENEMY_2);

			TutorialSystem2:SetCountDownNumber( -1 );
			
			TutorialSystem2:SetShowControlGuide(false,0,0);

			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);

			TutorialSystem2:RemoveGenEffectAll();
			TutorialSystem2:UnRegistAllArrowNodes();

			TutorialSystem2:SetTimer(0, 0);
			TutorialSystem2:SetStep(step+1);

--			TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);
			TutorialSystem2:LockGamePlayInput(true); -- ���� �÷��� �Է� ����.
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	-- ����� ��뿡 �ٿͰ��׿�. ���� ���ݿ� ����� ���彺ų�� ������ּ���. {N}��ų�� �̹� �����ص�Ⱦ��. {N}ȭ�� �����ϴ��� ���ø� �����ϰ��ִ� ��ų�� ������ �� �� �־��.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------
	-- ��Ƽ�꽺ų�� [SHIFT]Ű�� ����� �ߵ��ǿ�.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------
	-- ����!!
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER5, EMOTION._06);
---------------------------------------------------------------------------
	-- ����!!
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER6, EMOTION._06);
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
		
		TutorialSystem2:SetShowControlGuide(true,CTRL_GUIDE1_HIDE,CTRL_GUIDE1_SKILL);
		
		TutorialSystem2:PushActorCommandAttack(ACTOR.ENEMY_3, ACTOR.OURS_1, true, false, 1000000);
		TutorialSystem2:LockGamePlayInput(false); -- ���� �÷��� �Է� ���� Ǯ��.

		TutorialSystem2:ChangeMessageWindow(MENT.HIDE,	0); -- ���̵� UI HIDE

		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		if  TutorialSystem2:IsDoingState(ACTOR.ME, STATE_SKILL_SHIELD) == true and
			TutorialSystem2:ElapsedTimeFromAttack(ACTOR.ME) > 0 and
			TutorialSystem2:ElapsedTimeFromAttack(ACTOR.ME) < 500 then

			TutorialSystem2:SetTimer(0, 5000);
			TutorialSystem2:SetStep(step+1);
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		-- Ư�� �ð� ���� ���� ���ϸ� �ǵ��� ���� ���.
		if TutorialSystem2:GetTimerState(0) == TIMER.END then
			if TutorialSystem2:IsDoingState(ACTOR.ME, STATE_SKILL_SHIELD ) == true and
				TutorialSystem2:ElapsedTimeFromAttack(ACTOR.ME) > 0 and
				TutorialSystem2:ElapsedTimeFromAttack(ACTOR.ME) < 500 then

				TutorialSystem2:ClearAllActorCommands(ACTOR.ENEMY_3);
				TutorialSystem2:PushActorCommandState(ACTOR.ENEMY_3, STATE_NORMAL, 0);
				--TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
				TutorialSystem2:SetSPInfinite(ACTOR.ME, true);
				TutorialSystem2:LockGamePlayInput(true); -- ���� �÷��� �Է� ����.

--			    TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);

				TutorialSystem2:SetStep(step+1);
			end
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	-- ����� �߻繫���� ������ ��������� �������� ������ ����� �� �����.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._04);
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:SetShowControlGuide(false,0,0);
		
		TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0);
		TutorialSystem2:PushActorCommandAttack(ACTOR.OURS_1, ACTOR.ENEMY_3, true, false, 1000000);
		TutorialSystem2:SetInvincibility(ACTOR.ENEMY_3, false);

		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		if TutorialSystem2:IsDeadActor(ACTOR.ENEMY_3) == true then
			TutorialSystem2:ClearAllActorCommands(ACTOR.OURS_1);
			TutorialSystem2:PushActorCommandMoveToTarget(
				POS.OURS_AUTO._05[1], POS.OURS_AUTO._05[2]+100, POS.OURS_AUTO._05[3],
				-1, ACTOR.OURS_1);
			TutorialSystem2:PushActorCommandAttack(ACTOR.OURS_1, ACTOR.ENEMY_4, true, false, 1000000);
			TutorialSystem2:SetInvincibility(ACTOR.ENEMY_4, false);
			TutorialSystem2:SetStep(step+1);
			
			TutorialSystem2:SetTimer(0, 10000);
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		if TutorialSystem2:GetTimerState(0) == TIMER.END then
			-- 10�ʰ� ������ ���ϸ� ���� �߻�.
			-- ��� ����� �����ϰ� �ٷ� ���̱� �ǽ�.
			TutorialSystem2:ClearAllActorCommands(ACTOR.OURS_1);
			TutorialSystem2:PushActorCommandAttack(ACTOR.OURS_1, ACTOR.ENEMY_4, true, false, 1000000);
			TutorialSystem2:SetStep(step+1);
		end
		
		if TutorialSystem2:IsDeadActor(ACTOR.ENEMY_4) == true then
			TutorialSystem2:SetStep(step+1);
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------	
	if step == step_c then
		if TutorialSystem2:IsDeadActor(ACTOR.ENEMY_4) == true then
			TutorialSystem2:ClearAllActorCommands(ACTOR.OURS_1);
			TutorialSystem2:PushActorCommandAttack(ACTOR.OURS_1, ACTOR.ENEMY_5, true, false, 1000000);
			TutorialSystem2:SetInvincibility(ACTOR.ENEMY_5, false);
			TutorialSystem2:SetStep(step+1);
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		if TutorialSystem2:IsDeadActor(ACTOR.ENEMY_5) == true then

			TutorialSystem2:LockGamePlayInput(false); -- ���� �÷��� �Է� ���� Ǯ��.
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
			TutorialSystem2:ClearAllActorCommands(ACTOR.OURS_1);

			TutorialSystem2:PushActorCommandState(ACTOR.OURS_1, STATE_NORMAL, 0);
			TutorialSystem2:PushActorCommandAttack(ACTOR.ENEMY_2, ACTOR.OURS_1, true, false, 1000000);
			TutorialSystem2:SetInvincibility(ACTOR.OURS_1, false);
			TutorialSystem2:SetStep(step+1);
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		if TutorialSystem2:IsDeadActor(ACTOR.OURS_1) == true then
			TutorialSystem2:LockGamePlayInput(true); -- ���� �÷��� �Է� ����.

			TutorialSystem2:SetSPInfinite(ACTOR.ME, false);
			TutorialSystem2:ClearAllActorCommands(ACTOR.ENEMY_2);
			TutorialSystem2:PushActorCommandState(ACTOR.ENEMY_2, STATE_NORMAL, 0);

--		    TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);
			TutorialSystem2:SetStep(step+1);
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	-- ����!! ������� �ϴ��� ��븦 ��ȣ�ؾ߰ڱ�.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER4, EMOTION._06);
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
		
		-- Ÿ�� AI-3(3)�� Beta ��� �տ� ��Ͻ�ų ���� �� ���� ĳ���͸� �ٶ� �� (��� �ı��Ұ�)
		-----------------------------------------------------------------------------
		TutorialSystem2:PushActorCommandLookAtDir(ACTOR.ENEMY_2, 90);
		TutorialSystem2:PushActorCommandInput(ACTOR.ENEMY_2, INPUT_SPECIAL_ACTION1); -- ��ų ���.
		-----------------------------------------------------------------------------

		TutorialSystem2:SetTimer(0, 1000);
		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		if TutorialSystem2:GetTimerState(0) == TIMER.END then

			-- Ÿ�� AI-3(3)�� Beta ��� �տ� ��Ͻ�ų ���� �� ���� ĳ���͸� �ٶ� �� (��� �ı��Ұ�)
			-----------------------------------------------------------------------------
			TutorialSystem2:SetWallObjectInvincibility(ACTOR.ENEMY_2, true);
			TutorialSystem2:SetActorDir(0, ACTOR.ENEMY_2);
			-----------------------------------------------------------------------------

			TutorialSystem2:LockGamePlayInput(true);

--**********************************************************************************
--**********************************************************************************
			TutorialSystem2:SetLevel(6);
			TutorialSystem2:ClearPrevStep();			
--**********************************************************************************
--**********************************************************************************
			TutorialSystem2:SetStep(step+1);
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	goto_step0 = step_c;
	
	-- �Ʊ��� ���ع��ȳ׿䡦. �ϴ� �����ִ� ������ óġ�ұ��?? {N}���� �����Դ� �������Ⱑ ȿ�����̰ڳ׿�. {N}[2]Ű�� ���� ��������� �ٲ��� �̵����ּ���.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._04);
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
		
		TutorialSystem2:SetTimer(0,15000);
			
		TutorialSystem2:SetShowControlGuide(true,CTRL_GUIDE1_HIDE,CTRL_GUIDE1_SWORDATT);
		TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0);
		
		TutorialSystem2:ClearEnableInput();
		TutorialSystem2:PushEnableInput(INPUT_CHANGE_WEAPON_2);
		
		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:SetCountDownNumber( TutorialSystem2:GetTimerLeftTime(0)/1000 );
	
		-- �ڷ� ����~
		if TutorialSystem2:GetTimerState(0) == TIMER.END then
			TutorialSystem2:LockGamePlayInput(true);
			TutorialSystem2:ClearEnableInput();
			TutorialSystem2:PushEnableInput(INPUT_CHANGE_WEAPON_2);

			TutorialSystem2:SetActorPos(
				POS.TARGET._05[1], POS.TARGET._05[2], POS.TARGET._05[3],
				ACTOR.ME);
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
			
			TutorialSystem2:SetStep(goto_step0);
			TutorialSystem2:SetTimer(0,15000);
		end

		-- 15�� �̳��� ���⸦ ���һ��̵�� �����Ͽ��°�??
		if TutorialSystem2:GetCurrentWeaponID(ACTOR.ME) == WEAPON.EXO_SIDE then
			TutorialSystem2:SetCountDownNumber( -1 );

			TutorialSystem2:SetShowControlGuide(true,CTRL_GUIDE1_BASIC,CTRL_GUIDE1_HIDE);
			TutorialSystem2:LockGamePlayInput(false);
		-- 1. AI-3(3) ������ �̵���ǥ �������� ����
		-----------------------------------------------------------------------------
			TutorialSystem2:GenerateEffect(
			POS.TARGET._06[1], POS.TARGET._06[2], POS.TARGET._06[3],
			STR.TARGET_POS_SEQ );

			TutorialSystem2:SetPrevTargetPos(
			MAKEVECTOR3(POS.TARGET._05[1], POS.TARGET._05[2], POS.TARGET._05[3]) );

			local j = 1;
			while POS.NAVI._06[j] do
				TutorialSystem2:RegistArrowNode(POS.NAVI._06[j][1], POS.NAVI._06[j][2], POS.NAVI._06[j][3]);
				j = j + 1;
			end
		-----------------------------------------------------------------------------

			TutorialSystem2:SetTimer(0, 15000);
			TutorialSystem2:SetStep(step+1);
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:SetCountDownNumber( TutorialSystem2:GetTimerLeftTime(0)/1000 );

		if TutorialSystem2:GetTimerState(0) == TIMER.END then
--			TutorialSystem2:RestoreActorPos(ACTOR.ME);
			TutorialSystem2:SetActorPos(
				POS.TARGET._05[1], POS.TARGET._05[2], POS.TARGET._05[3],
				ACTOR.ME);
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);

			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
			TutorialSystem2:SetTimer(0, 15000);
		end

		-- 15�� �̳��� ĳ���Ͱ� ��ǥ ������ �����Ͽ��°�?
		if TutorialSystem2:IsActorLocated(ACTOR.ME,
		POS.TARGET._06[1], POS.TARGET._06[2], POS.TARGET._06[3],
		300) == true then
			TutorialSystem2:SetCountDownNumber( -1 );
		
--			TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);
			TutorialSystem2:SetShowControlGuide(false,0,0);

			TutorialSystem2:RemoveGenEffectAll();
			TutorialSystem2:UnRegistAllArrowNodes();

			TutorialSystem2:LockGamePlayInput(true);
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);

			TutorialSystem2:SetStep(step+1);
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	goto_step1 = step_c;
---------------------------------------------------------------------------
	-- �� �տ� ������ �ֳ׿�. �켱 �������� ������ �˷��帱����. {N}��������� �پ��� ���ݹ���� �������־��.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._03);
	-- �켱 ��ְ��ݿ� ���� �˷��帱����. {N}[���콺 ��Ŭ��]�� ���������� �Է��ϸ� ��ְ����� �� �� �־��. {N}�������⸶�� ���ݹ���� ��� �޶��. �׷� �����غ����??
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._03);
---------------------------------------------------------------------------
-- 2. UI : ��� ���� ����� ���
-- 3. ��� ���� �Է¸� �����ϵ��� ����
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
		
		-- 2. UI : ��� ���� ����� ���	
		TutorialSystem2:SetShowControlGuide(true,CTRL_GUIDE1_HIDE,CTRL_GUIDE1_SWORDATT);
		
		TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0);

		-- 3. ��� ���� �Է¸� �����ϵ��� ����
		TutorialSystem2:SetAllAttackLimit(true);
		TutorialSystem2:SetEnableAttack(Weapon1WeakState);

		TutorialSystem2:InitPlayerAttackCount();
		TutorialSystem2:InitDamageCounter(ACTOR.ENEMY_2);

--		TutorialSystem2:SaveActorPos(ACTOR.ME);

		TutorialSystem2:LockGamePlayInput(false);

		-- �� Ÿ�� ǥ��	
		TutorialSystem2:GenerateEffect(
		0,0,0, STR.ENEMY_TARGET_POS_SEQ );			
		
		TutorialSystem2:AttachCurrentSequence(ACTOR.ENEMY_2, MAKEVECTOR3(0,500,0));
			
		TutorialSystem2:SetTimer(0, 15000);

		-- �浹 ����.
		TutorialSystem2:EnableCollisionType(ACTOR.ME, TYPE_ACTOR, true);
		
		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------	
	g_fix_start = step_c;
	
	if step == step_c then
		TutorialSystem2:SetCountDownNumber( TutorialSystem2:GetTimerLeftTime(0)/1000 );

		if TutorialSystem2:GetTimerState(0) == TIMER.END then
--			TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);
--			TutorialSystem2:RestoreActorPos(ACTOR.ME);
			TutorialSystem2:SetActorPos(
				POS.TARGET._06[1], POS.TARGET._06[2], POS.TARGET._06[3],
				ACTOR.ME);
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
			TutorialSystem2:LockGamePlayInput(true);
			TutorialSystem2:SetTimer(0, 15000);
			TutorialSystem2:SetStep(goto_step1);
		end

		-- ������ 15�� �̳��� ��ְ����� 4ȸ �̻��Ͽ���?
		if TutorialSystem2:GetPlayerAttackCount(Weapon1WeakState) >= 4 and
		   TutorialSystem2:GetDamageCounter(ACTOR.ENEMY_2) >= 4
			then
			TutorialSystem2:SetCountDownNumber( -1 );

			TutorialSystem2:LockGamePlayInput(true);
--			TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);

			TutorialSystem2:SetStep(step+1);
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	goto_step2 = step_c;
---------------------------------------------------------------------------
	-- ���ƿ�!! �׷� �������� ��ְ��ݺ��� ���� �������� �˷��帱����.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
	-- [���콺 ��Ŭ��]�� ������������ �������� �� �� �־��. �׷� �����غ����??
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
			
		-- 1. ���+������ �Է¸� �����ϵ��� ���� (��Ŭ������)
		TutorialSystem2:SetAllAttackLimit(true);
		TutorialSystem2:SetEnableAttack(Weapon1WeakState);
		TutorialSystem2:SetEnableAttack(Weapon1StrongState);

		TutorialSystem2:InitPlayerAttackCount();
		TutorialSystem2:InitDamageCounter(ACTOR.ENEMY_2);

		TutorialSystem2:LockGamePlayInput(false);
		TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0);
		TutorialSystem2:InitPlayerAttackCount();
		TutorialSystem2:InitDamageCounter(ACTOR.ENEMY_2);
--		TutorialSystem2:SaveActorPos(ACTOR.ME);
		TutorialSystem2:SetTimer(0, 15000);

		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:SetCountDownNumber( TutorialSystem2:GetTimerLeftTime(0)/1000 );

		if  TutorialSystem2:GetTimerState(0) == TIMER.END then
--			TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);
--			TutorialSystem2:RestoreActorPos(ACTOR.ME);
			TutorialSystem2:SetActorPos(
				POS.TARGET._06[1], POS.TARGET._06[2], POS.TARGET._06[3],
				ACTOR.ME);
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
			TutorialSystem2:SetTimer(0, 15000);
			TutorialSystem2:LockGamePlayInput(true);
			TutorialSystem2:SetStep(goto_step2);
		end

		-- ������ 15�� �̳��� �������� 2ȸ �̻��Ͽ���?
		if 	TutorialSystem2:GetPlayerAttackCount(Weapon1StrongState) >= 2 and
			TutorialSystem2:GetDamageCounter(ACTOR.ENEMY_2) >= 2 then
			TutorialSystem2:SetCountDownNumber( -1 );
--			TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);
			TutorialSystem2:LockGamePlayInput(true);
			TutorialSystem2:SetStep(step+1);
			
			TutorialSystem2:SetProtectCondition(false);
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	goto_step3 = step_c;
	
	-- Ư�� ���ܿ��� ������ ��ǥ�� ������Ų��.
	if step >= g_fix_start and 
	   step <= step_c then
		if TutorialSystem2:IsValidActor( ACTOR.ENEMY_2 ) == true then
			TutorialSystem2:SetActorPos(
				POS.ENEMY_AUTO._02[2][1], 
				POS.ENEMY_AUTO._02[2][2], 
				POS.ENEMY_AUTO._02[2][3], ACTOR.ENEMY_2);
		end
	end
	
---------------------------------------------------------------------------
-- ���� ���� ���Ƴ׿�. �׷� �������� ����� ������ �˷��帱����. {N}������θ�ŭ �� ������ ���� Ư¡�� ���� �����̶�� �����Ͻø� �ǿ�.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._03);
-- [���콺 ��Ŭ��]�� ������ ����Ȱ����� �� �� �־��. �׷� �����غ����??
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
		
		TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0);

		-- ��Ŭ��&�������ݸ� �Է� �����ϵ��� ����
		TutorialSystem2:SetAllAttackLimit(true);
		TutorialSystem2:SetEnableAttack(Weapon1JumpState);
		TutorialSystem2:SetEnableAttack(Weapon2State);

		TutorialSystem2:InitPlayerAttackCount();
		TutorialSystem2:InitDamageCounter(ACTOR.ENEMY_2);
		
		TutorialSystem2:LockGamePlayInput(false);
		TutorialSystem2:SetTimer(0, 60000);
		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:SetCountDownNumber( TutorialSystem2:GetTimerLeftTime(0)/1000 );
		
		if  TutorialSystem2:GetTimerState(0) == TIMER.END then
--			TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);
			TutorialSystem2:SetActorPos(
				POS.TARGET._06[1], POS.TARGET._06[2], POS.TARGET._06[3],
				ACTOR.ME);
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
			TutorialSystem2:SetTimer(0, 0);
			TutorialSystem2:LockGamePlayInput(true);
			TutorialSystem2:SetStep(goto_step3);
		end

		-- ������ 1�� �̳��� ��Ŭ�� ������ ����Ͽ� AI�� 2ȸ Ÿ���Ͽ���?
		if 	TutorialSystem2:GetPlayerAttackCount(Weapon2State) >= 2 and
			TutorialSystem2:GetDamageCounter(ACTOR.ENEMY_2) >= 2 then
			
			TutorialSystem2:SetCountDownNumber( -1 );
			
			TutorialSystem2:InitPlayerAttackCount();
			TutorialSystem2:InitDamageCounter(ACTOR.ENEMY_2);
		
--			TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);
			TutorialSystem2:LockGamePlayInput(true);
			TutorialSystem2:SetStep(step+1);
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	goto_step4 = step_c;
---------------------------------------------------------------------------
	-- �������̿���!! ������������ �������� ����!!
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
	-- [SPACEBAR]�� ���� ������ �� [���콺 ��Ŭ��]�� �Է��ϸ� ���������� �ߵ��ǿ�. �׷� ������!!
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
			
		TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0);
		TutorialSystem2:LockGamePlayInput(false);
		TutorialSystem2:SetTimer(0, 30000);
		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:SetCountDownNumber( TutorialSystem2:GetTimerLeftTime(0)/1000 );
		
		if  TutorialSystem2:GetTimerState(0) == TIMER.END then
--			TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);
			TutorialSystem2:SetActorPos(
				POS.TARGET._06[1], POS.TARGET._06[2], POS.TARGET._06[3],
				ACTOR.ME);
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
			TutorialSystem2:SetTimer(0, 0);
			TutorialSystem2:LockGamePlayInput(true);
			TutorialSystem2:SetStep(goto_step4);
		end

		-- ������ 30�� �̳��� ���� ������ ����Ͽ� AI�� 2ȸ Ÿ���Ͽ���?
		if 	TutorialSystem2:GetPlayerAttackCount(Weapon1JumpState) >= 2 and
			TutorialSystem2:GetDamageCounter(ACTOR.ENEMY_2) >= 2 then
		
			TutorialSystem2:SetCountDownNumber( -1 );
		
			TutorialSystem2:SetShowControlGuide(false,0,0);
			
			-- Ÿ�� AI �ı�ó��
			TutorialSystem2:SetHP(ACTOR.ENEMY_2, 0);
			
			TutorialSystem2:RemoveGenEffectAll();
			TutorialSystem2:DetachCurrentSequence();
			
			TutorialSystem2:SetAllAttackLimit(false);

			TutorialSystem2:LockGamePlayInput(true);
			TutorialSystem2:SetStep(step+1);
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then

		local j = 1;
		while POS.NAVI._07[j] do
			TutorialSystem2:RegistArrowNode(POS.NAVI._07[j][1], POS.NAVI._07[j][2], POS.NAVI._07[j][3]);
			j = j + 1;
		end

		TutorialSystem2:GenerateEffect(
			POS.TARGET._07[1], POS.TARGET._07[2], POS.TARGET._07[3],
			STR.TARGET_POS_SEQ );

		TutorialSystem2:LockGamePlayInput(true);
--		TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);

--**********************************************************************************
--**********************************************************************************
		TutorialSystem2:SetLevel(7);
		TutorialSystem2:ClearPrevStep();
--**********************************************************************************
--**********************************************************************************
		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	goto_step5 = step_c;
---------------------------------------------------------------------------
	-- ��~~ ���� �Ʊ��� ����߸� ���� ȸ���ؼ� ���� ������ �ǰڳ׿�.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._03);
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
			
		TutorialSystem2:SetShowControlGuide(true,CTRL_GUIDE1_BASIC,CTRL_GUIDE1_HIDE);
	
		TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0);
		TutorialSystem2:LockGamePlayInput(false);
		TutorialSystem2:SetTimer(0, 15000);
		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:SetCountDownNumber( TutorialSystem2:GetTimerLeftTime(0)/1000 );
		
		if  TutorialSystem2:GetTimerState(0) == TIMER.END then
--		TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);
			TutorialSystem2:SetActorPos(
				POS.TARGET._06[1], POS.TARGET._06[2], POS.TARGET._06[3],
				ACTOR.ME);
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
			TutorialSystem2:SetTimer(0, 0);
			TutorialSystem2:LockGamePlayInput(true);
			TutorialSystem2:SetStep(goto_step5);
		end

		if TutorialSystem2:IsActorLocated(ACTOR.ME,
		POS.TARGET._07[1], POS.TARGET._07[2], POS.TARGET._07[3],
		300) == true then
			TutorialSystem2:SetCountDownNumber( -1 );
			
			TutorialSystem2:SetShowControlGuide(false,0,0);
		
			TutorialSystem2:CatchTheBall(ACTOR.ME);
			TutorialSystem2:RemoveGenEffectAll();
			TutorialSystem2:UnRegistAllArrowNodes();
			TutorialSystem2:LockGamePlayInput(true);
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
			TutorialSystem2:SetSPInfinite(ACTOR.ME, true);
			
--			TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);
			TutorialSystem2:SetStep(step+1);
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	goto_step6 = step_c;
---------------------------------------------------------------------------
	-- ����! �Ʊ� ������ ��븦 ������� ���ƹ��ȳ׿䡦 {N}�� ����� �Ϲݺ���ϰ� �޶� �ı��� �ȵ� �� �������䡦.{N}��!! �׷� �� ���� �̿��� �������� �ؼ� �Ѿ�� �ǰڱ���.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._04);
---------------------------------------------------------------------------

	-- ǥ�õ� ������ [W]Ű�� ���� ���¿��� [SPACEBAR]�� ���� ������ �� �ٽ��ѹ� [SPACEBAR]�� ������ �������� �� �� �ֽ��ϴ�. {N}�������� ���� �̵��غ����??
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------	
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
		
		TutorialSystem2:SetShowControlGuide(true,CTRL_GUIDE1_HIDE,CTRL_GUIDE1_WALLJUMP);
		
		TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0);

		-- ������ ��ġ�� Ÿ������ ����.
		TutorialSystem2:GenerateEffect(
		POS.TARGET._08[1], POS.TARGET._08[2], POS.TARGET._08[3],
		STR.WALL_TARGET_POS_SEQ );

		TutorialSystem2:SetTimer(0, 30000);
		TutorialSystem2:LockGamePlayInput(false);

		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;	
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:SetCountDownNumber( TutorialSystem2:GetTimerLeftTime(0)/1000 );
		
		if  TutorialSystem2:GetTimerState(0) == TIMER.END then
--			TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);
			TutorialSystem2:SetActorPos(
				POS.TARGET._07[1], POS.TARGET._07[2]+100, POS.TARGET._07[3],
				ACTOR.ME);
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
			TutorialSystem2:SetTimer(0, 0);
			TutorialSystem2:LockGamePlayInput(true);
			TutorialSystem2:SetStep(goto_step6);
		end
		
		TutorialSystem2:SetSPInfinite(ACTOR.ME, true); -- ��� �����Ѵ�. ���� ó��.
		
		if 	TutorialSystem2:IsLocatedWallJump(
			MAKEVECTOR3(POS.TARGET._08[1], POS.TARGET._08[2], POS.TARGET._08[3]),
			300) == true then
			TutorialSystem2:SetData(DATA_KEY_WALLJUMP, 1);
		end
			
		-- �� ������ ���� �ϰ� ���� ���� ��츦 ����.
		if 	TutorialSystem2:GetData(DATA_KEY_WALLJUMP) == 1 and
			TutorialSystem2:IsActorLocated(ACTOR.ME,
			POS.GOAL[1], POS.GOAL[2], POS.GOAL[3], 
			300 ) == true 
			then
			TutorialSystem2:SetCountDownNumber( -1 );
			TutorialSystem2:SetShowControlGuide(false,0,0);
			
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
			TutorialSystem2:RemoveGenEffectAll();
--			TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);
			TutorialSystem2:LockGamePlayInput(true);
			TutorialSystem2:Goal();
			TutorialSystem2:SetStep(step+1);
		end
	end
	step_c = step_c + 1;	
---------------------------------------------------------------------------
	-- �����մϴ�. �̰����� S4���Ű� �Ǽ̽��ϴ�!! {N}�����ε� ���� ���ǿ��� ������ �� �ִ� �Ʒüҿ��� %s���� ��ٸ������� ����. �� ���ּ���^^
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
		
		TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0);
		TutorialSystem2:ReqCompleteReward(); -- ������ ���� ��û.
		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	-- ���α׷� �ܿ��� ������ ���� ��� ������ 8�� ���� �Ѵ�.
	if TutorialSystem2:GetLevel() == 8 then 
		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
--------------------------------------------------------------------------
	-- �׷� ��Ӵ�� ����ǰ�� �帱����. �����߾�� ^^
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
	
-- ��~~
end
