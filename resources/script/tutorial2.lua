require "Resources/Script/KeyMacro.lua"

LoadStringTable( "Language/Script/tutorial_string_table.x7" );

MENT = {
	HIDE		= 1,
	CHARACTER1 = 2, -- 레이			(오퍼레이터)
	
	CHARACTER2 = 3,	-- 켈리			(아군)
	
	CHARACTER3 = 4, -- 임페리얼 가드(적들..)
	CHARACTER4 = 5, -- 로이
	CHARACTER5 = 6, -- 다르텐
	CHARACTER6 = 7, -- 그림리퍼
	CHARACTER7 = 8, -- 후크후크
};

EMOTION = {
	_01 = 0, -- 웃는표정
	_02 = 1, -- 화내는표정
	_03 = 2, -- 생각하는 표정
	_04 = 3, -- 곤란한 표정
	_05 = 4, -- 비열한 표정
	_06 = 5, -- 당황한 표정
	_07 = 6  -- 슬픈 표정
};

-- 콘트롤 가이드 1번 색인.
----------------------------
CTRL_GUIDE1_HIDE 	= -1;
----------------------------
CTRL_GUIDE1_BASIC 	= 0;
----------------------------
CTRL_GUIDE1_SKILL 		= 0; -- 스킬 사용
CTRL_GUIDE1_DASH  		= 1; -- 데쉬법
CTRL_GUIDE1_SWORDATT 	= 2; -- 무기 변경, 근접 무기 사용법
CTRL_GUIDE1_WALLJUMP 	= 3; -- 벽 점프 사용법
CTRL_GUIDE1_EVASION 	= 4; -- 회피 사용법
CTRL_GUIDE1_ATTACK 		= 5; -- 재장전, 조준 공격.
----------------------------
-- TutorialSystem2:SetShowControlGuide(false,0,0);
-- TutorialSystem2:SetShowControlGuide(true,CTRL_GUIDE1_HIDE,CTRL_GUIDE1_EVASION);

STR = {
	TARGET_POS_SEQ 			= "groundtarget_eff_01",
	WALL_TARGET_POS_SEQ 	= "groundtarget_eff_02",
	ENEMY_TARGET_POS_SEQ 	= "ai_attack",
	SPAWN_BOX_01			= "alpha_spawn_pos_01"
};

-- 액토 색인.
ACTOR = {
	ME 		= 0,
	
	OURS_1 	= 1, -- 켈리
	
	ENEMY_1 = 2, -- 로이
	ENEMY_2 = 3, -- 임페리얼 가드
	ENEMY_3 = 4, -- 다르텐
	ENEMY_4 = 5, -- 그림리퍼
	ENEMY_5 = 6, -- 후크후크
};

-- 액토 방어구 설정.
COSTUME = {
	-- 헤어, 얼굴, 상의, 하의, 장갑, 신발, 장식
	
	OURS_1  = { 1000006,	0,	1020007,	1030007,	1040009,	1050010},

	ENEMY_1 = { 1061029,	0,	1021029,	1031029,	1041029,	1051029}, 
	ENEMY_2 = { 1001112,	0, 	1021112,	1031112,	1041112,	1051112}, 
	ENEMY_3 = { 0		,	0,	1021089,	1031089,	1041089,	1051089},
	ENEMY_4 = { 0		,	0,	1021100,	1031100,	1041100,	1051100},
	ENEMY_5 = { 0		,	0,	1021085,	1031085,	1041085,	1051085}
};

-- 모든 지점 설정.
POS = { 
	TARGET = { -- 플레이어 타겟 지점
		_01 = { -1098, 	2924, 	4799 },
		_02 = { 1217, 	964, 	 954 },
		_02_1 = { 544,  962, 21 },
		_03 = { -1392, 	964, 	-604 }, 
		_04 = { 4530, 	637, 	-168 },
		_05 = { 3814,  2924,   -4669 },
		_06 = { 1476,  2924,   -4895 },
		_07 = { 3343, 2922, -4974 }, -- 펌비볼 드랍 장소.
		_08 = { 1158, 3338, -4261 } -- 벽점프 위치.
	},

	GOAL = { 1210, 3021, -5884 }, -- 골대 좌표.

	OURS_SPAWN = { -- 팀원 스폰 지점.
		_01 = { 1797, 964, 835 }, 	-- (ㄱ)
	},
	OURS_AUTO = { -- 자동 이동 포인트.
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
	ENEMY_SPAWN = { -- 적 지점.
		_01 = { -3963, 2923, 4606 }, 	-- (ㄴ)
		_02 = { -1636, 2711, -4035 }, 	--
		_03 = { 2628, 2924, -4260 },	-- (ㄹ)
		_04 = { 2570, 2924, -4917 },	-- (ㅁ)
		_05 = { 1035, 2925, -4311 }		-- (ㅂ)
	},
	ENEMY_AUTO = {
		_02 =
		{
			{ -1594, 2711, -4538 },
			{ 1207, 2924, -4917 }
		}
	},
	NAVI = { -- 내 동선 가이드.
		_01 =
		{ -- 스폰 지점 -> 우리편 골대 앞
			{ 963, 2455, 6600 },
			{ 145, 2455, 6653 },
			{ 34,  2455, 6058 },
			{ 34,  2924, 5274 },
			{ 34,  2924, 5274 },
			{-312, 2924, 4698 },
			{-1136,2924, 4698 }
		},
		_02 =
		{ -- 1번 적 스폰 지점 -> 중앙 기차 끝
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
		{ -- 중앙 기차 끝 -> 펌비 볼 위치
			{ 1217, 964, 954 },
			{ 1155, 964, 34 },
			{ 544,  962, 21 }
		},
		_03_2 =
		{ -- 펌비 볼 위치 - > 적지역 에스컬레이터
			{ 544,  962, 21 },
			{ 	4,	1039, -26 },			
			{ -1174,  964, -55 },
			{ -1392,  964, -604}
		},
		_04 =
		{ -- 적지역 에스컬레이터 -> 기차 끝 너머
			{ -1392,  964, -604 },
			{ 2556, 964, -755},
			{ 3282, 447, -636 },
			{ 4530, 637, -168 }
		},
		_05 =
		{ -- 기차 끝 너머 -> 상대 골대 진입점
			{ 4530, 637, -168 },
			{ 6315, 1328, -1277 },
			{ 6277, 2062, -3461 },
			{ 4545, 2732, -4368 },
			{ 3998,  2922, -4557 }
		},
		_06 =
		{ -- 상대 골대 진입점 -> 상대 골대 앞
			{ 3357, 2925, -4703	},
			{ 1544, 2925, -4890	}
		},
		_07 =
		{ -- 상대 골대 앞 - > 펌비 드롭 지점.
			{ 1544, 2925, -4890	},
			{ 3343, 2922, -4974 }
		}
	}
};

------------------------------------------------------------------
-- 게임 액토 상태 ID 일부.
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

STATE_SKILL_FLY				= 31;		-- 플라이 스킬
STATE_SKILL_ANCHORING		= 32;		-- 앵커링 스킬
STATE_SKILL_STEALTH			= 33;		-- 인비저블 스킬
STATE_SKILL_SHIELD			= 34;		-- 쉴드 스킬
STATE_SKILL_WALL_CREATION	= 35;		-- 블럭 스킬
STATE_SKILL_BIND			= 36;		-- 바인드 스킬
STATE_SKILL_METALIC			= 37;		-- 메탈릭 스킬

------------------------------------------------------------------
-- 입력 ID 일부.
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
-- 입력 상태 ID
------------------------------------------------------------------
Weapon1State				= 0;		-- 왼쪽 누르면 무조건
Weapon2State				= 1;		-- 오른쪽 누르면 무조건
Weapon2TempState			= 2;		-- 사용안함.
Weapon1WeakState			= 3;		-- 왼쪽 클릭 일정시간 이하 */
Weapon1StrongState			= 4;		-- 왼쪽 클릭 일정시간 이상 : 이동 강 공격 */
Weapon1JumpState			= 5;		-- 점프 중 왼쪽 클릭 */
Weapon1Strong1State			= 6;		-- 왼쪽 클릭 일정시간 이상 : 이동 X 공격 */
Weapon1Attack2State			= 7;		-- 왼쪽 공격 2타째 */
Weapon1Attack3State			= 8;		-- 왼쪽 공격 3타째 */
Weapon1Attack4State			= 9;		-- 왼쪽 공격 4타째 */
Weapon1Attack5State			= 10;		-- 왼쪽 공격 5타째 */
Weapon1CounterAttackState	= 11;		-- 카운터 스워드 어퍼컷 */
Weapon2WeakState			= 12;		-- 오른쪽 버튼 일정시간 이하 */
Weapon2StrongState			= 13;		-- 오른쪽 버튼 일정시간 이상 */
Weapon1InstallState			= 14;   	-- 거치상태에서 왼쪽 누르면 무조건 */
Weapon2InstallState			= 15;		-- 거치상태에서 오른쪽 누르면 무조건 */
------------------------------------------------------------------

------------------------------------------------------------------
-- 충돌 타입.
------------------------------------------------------------------
TYPE_UNKNOWN		= 0x00000000;
TYPE_LAND_GROUND	= 0x00000001;	--땅
TYPE_LAND_STONE		= 0x00000002;	--돌
TYPE_LAND_STEEL		= 0x00000004;	--철
TYPE_LAND_WOOD		= 0x00000008;	--나무
TYPE_LAND_WATER		= 0x00000010;	--물
TYPE_LAND_GLASS		= 0x00000020;	--유리
TYPE_WEAPON			= 0x00000040;	--무기
TYPE_BROKEN			= 0x00000080;	--깨지는 오브젝트
TYPE_CRUSH			= 0x00000100;	--찌그러지는 오브젝트
TYPE_TERRITORY		= 0x00000200;	--점령지
TYPE_OBSTRUCTION	= 0x00000400;	--장애물
TYPE_SHIELD			= 0x00000800;	--방패	
TYPE_ACTOR			= 0x00001000;	--액터
TYPE_BALL			= 0x00002000;	--공
TYPE_CAMERA			= 0x00004000;	--카메라
TYPE_DYNAMIC_BROKEN = 0x00008000; --움직이는 깨지는 오브젝트( CDynamicBrokenObject )
TYPE_AIACTOR		= 0x00010000;	--AI Actor
TYPE_BLOCK_ACTOR	= 0x00020000;	--Actor만 충돌
TYPE_BLOCK_AIACTOR	= 0x00040000;	--Actor만 충돌
TYPE_BLOCK_ALPHA	= 0x00080000;	--Alpha만 충돌 하는 Block
TYPE_BLOCK_BETA		= 0x00100000;	--Beta만 충돌 하는 Block
TYPE_MONSTER        = 0x00200000; --MONSTER
TYPE_BLOCK_MONSTER  = 0x00400000; --MONSTER만 충돌
------------------------------------------------------------------

TIMER = {
	NOINIT 	= 0,
	DOING 	= 1,
	END 	= 2
};

-- 무기 아이템 ID 리스트.
WEAPON = {
	SUB_MACHINE_GUN = 2010001,
	EXO_SIDE 		= 2000031,
	TURRET 			= 2020005
};

-- 스킬 아이템 ID 리스트.
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

-- tutorial_string_table.xml 데이터 저장소.
MAX_SCRIPT_MENT_COUNT 		= 45;
g_Script_Ment = {};

MAX_SCRIPT_CHAR_NAME_COUNT 	= 6;
g_Script_Name = {};

DATA_KEY_WALLJUMP 	= 0;

-- 스크립트 최초 로딩시 초기화.
function Init_tutorial2()

--	local scriptTotal = MAX_SCRIPT_MENT_COUNT;
	
	-- 문자열 리스트 로딩
	for i=1,MAX_SCRIPT_MENT_COUNT do
		strKey = string.format( "BTC_TUTO_SCRIPT_%d", i );
		g_Script_Ment[i] = GetString( strKey );
	end

	-- 임시 데이터 추가.
	-- g_Script_Name[1] = "닌구기";
	-- g_Script_Name[2] = "김통키";
	-- g_Script_Name[3] = "동남아왕자";
	-- g_Script_Name[4] = "앞뒤짱짱맨";
	-- g_Script_Name[5] = "쪼쭈";
	-- g_Script_Name[6] = "..";
	
	local Script_Name = {};
	
	-- 이름 리스트 로딩.
	for i=1,MAX_SCRIPT_CHAR_NAME_COUNT do
		strKey = string.format( "BTC_TUTO_CHARACTER_NAME_%d", i+2 );
		g_Script_Name[i] = GetString( strKey );
	end

	ClearStringTable();

end

Init_tutorial2();

-- 입력 대기
-- step : 현재 스텝
-- compare : 비교 스텝
function Tutorial_Step_WaitInput(step, compare)
	if step == compare then
		TutorialSystem2:WaitNormalInput();
	end
end

-- 입력 대기
-- step : 현재 스텝
-- compare : 비교 스텝
function Tutorial_Step_WaitInput_TAni(step, compare)
	if step == compare then
		TutorialSystem2:WaitNormalInput_IfEndAniTextThenNext();
	end
end

-- 애니 맨트 출력
-- step : 현재 스텝
-- compare : 비교 스텝
-- ment_id : 맨트 색인
-- char_time : 문자 출력 속도
function Tutorial_Step_PrintAniScript(step, compare, ment_id, char_time)
	if MAX_SCRIPT_MENT_COUNT < ment_id then
	return;
	end

	if step == compare then

	TutorialSystem2:PrintAniScript(g_Script_Ment[ment_id], char_time);
	TutorialSystem2:SetStep(step+1);

	end
end

-- 애니 맨트 출력 ( 스트링 인자 1개 )
-- step : 현재 스텝
-- compare : 비교 스텝
-- ment_id : 맨트 색인
-- char_time : 문자 출력 속도
-- strA1 : 스트링 인자.
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

-- 맨트 출력
-- step : 현재 스텝
-- compare : 비교 스텝
-- ment_id : 맨트 색인
function Tutorial_Step_PrintScript(step, compare, ment_id)
	if MAX_SCRIPT_MENT_COUNT < ment_id then
	return;
	end

	if step == compare then

	TutorialSystem2:PrintScript(g_Script_Ment[ment_id]);
	TutorialSystem2:SetStep(step+1);

	end
end

-- 맨트 출력 ( 스트링 인자 1개 )
-- step : 현재 스텝
-- compare : 비교 스텝
-- ment_id : 맨트 색인
-- strA1 : 스트링 인자.
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

-- 페이지 맨트 출력 ( 스트링 인자 1개 )
-- step : 현재 스텝
-- step_c : 비교 스텝
-- ment_id : 맨트 색인
-- char_time : 문자 출력 속도
-- strA1 : 스트링 인자.
-- character_id : 캐릭터 id.( 배경 캐릭터 출력 )
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

-- 페이지 맨트 출력
-- step : 현재 스텝
-- step_c : 비교 스텝
-- ment_id : 맨트 색인
-- char_time : 문자 출력 속도
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

-- 0 스텝 초기화
-- step : 현재 스텝
function Tutorial_Step_First(step)
	if step == 0 then

	-- 캐릭터 스폰.
	TutorialSystem2:CreateActorBox(ACTOR.ME, true, STR.SPAWN_BOX_01, 0, 0);
--	TutorialSystem2:CreateActorPos(ACTOR.ME,
--		WAYPOINT_POS._000[1],WAYPOINT_POS._000[2],WAYPOINT_POS._000[3], 90, 0, 0);

	-- 캐릭터 무기 설정.
	TutorialSystem2:SetWeaponSlot(ACTOR.ME, 0, WEAPON.SUB_MACHINE_GUN, 0 ); -- 서브 머신건 설정.
	TutorialSystem2:SetWeaponSlot(ACTOR.ME, 1, WEAPON.EXO_SIDE, 0 ); -- 엑소 사이드 설정.
--	TutorialSystem2:SetWeaponSlot(ACTOR.ME, 2, WEAPON.TURRET, 0 ); --
	TutorialSystem2:ChangeWeapon(ACTOR.ME, 0);
	TutorialSystem2:SetWeaponChange(ACTOR.ME, true); -- 웨폰 변경 방지 ON

	-- 충돌 설정.
	TutorialSystem2:EnableCollisionType(ACTOR.ME, TYPE_ACTOR, false);
	
	-- 캐릭터 스킬 설정.
	TutorialSystem2:SetSkill(ACTOR.ME, SKILL.SHIELD);

	TutorialSystem2:LockGamePlayInput(true); -- 게임 플레이 입력 차단.

	TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
	
	-- 아군 캐릭터 스폰.
	--TutorialSystem2:CreateActorPos(ACTOR.OURS_1,
	--	WAYPOINT_POS._001[1],WAYPOINT_POS._001[2],WAYPOINT_POS._001[3], 270, 0, 0);

	-- 아군 캐릭터 복장 설정.
	-- uiHairID, uiFaceID, uiCoatID, uiPantsID, uiGlovesID, uiShoesID
	--TutorialSystem2:SetCostume(ACTOR.OURS_1,
	--	1000000, 0, 1020000, 1030000, 1040040, 0 );

	-- 캐릭터 1 이미지 출력
--	TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);
	TutorialSystem2:SetStep(step+1);
--**********************************************************************************
--**********************************************************************************
	TutorialSystem2:SetLevel(1);
--**********************************************************************************
--**********************************************************************************

	-- TutorialSystem2:SetStep(71); -- 디버깅을 위해 앞 스탭 점프.
	-- TutorialSystem2:Goal();

	-- TutorialSystem2:SetCameraBaseTarget(ACTOR.OURS_1, CAMERA_TYPE_FOCUS);
	-- TutorialSystem2:PushActorCommandSocialAction(ACTOR.OURS_1, 3); -- 안녕 액션 명령.

	TutorialSystem2:SetPrevTargetPos( TutorialSystem2:GetSpawnBoxPos(STR.SPAWN_BOX_01) );

	TutorialSystem2:SetProtectCondition(true);
	end
end

-----------------------------------------------------------------------------------------
-- Tutorial_Loop()
-- 초보자 훈련소의 튜토리얼 메인 루프
-- 이 함수는 튜토리얼에 들어가면 항상 호출하는 튜토리얼 메인 루프이다.
-----------------------------------------------------------------------------------------

function Tutorial_Loop()

	local step = TutorialSystem2:GetStep();
	local char_time = 50; -- 한 문자가 출력되는 속도.
	local step_c 	= 0;
	local ment_id 	= 0;

---------------------------------------------------------------------------
	-- 초기화 스텝.
	Tutorial_Step_First(step);
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:SetActorSpawnPos(STR.SPAWN_BOX_01, ACTOR.ME);
		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;		
---------------------------------------------------------------------------	
	-- 5 페이지 스크립트 출력.
---------------------------------------------------------------------------	
	-- 안녕하세요. 넷스피어의 S4리그에 오신것을 환영합니다.{N}전 앞으로 %s님을 도울 오퍼레이터 새봄입니다.^^	
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------		
	-- 이제부터 S4리거가 되기위한 간단한 훈련을 진행하겠습니다.{N}훈련을 종료하면 보급품 세트를 지급해드리니 적극적인참여 부탁드려요 ^^
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time,MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------		
	-- 훈련은 S4리그의 특징인 터치다운 모드로 진행될 예정입니다.{N}간단하게 룰을 알려드릴께요.^^ 양팀이 맵 중앙에 있는 볼을 차지해서{N}상대팀의 골에 볼을 넣어 점수를 획득합니다.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time,MENT.CHARACTER1, EMOTION._03);
---------------------------------------------------------------------------			
	-- 볼은 하늘방향으로 빛이 나오고 TAB버튼을 눌러 현재 위치를{N}확인할 수 있습니다.	
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time,MENT.CHARACTER1, EMOTION._03);
---------------------------------------------------------------------------			
	-- 그럼 일단 볼을 잡기위해 이동을 해보겠습니다.{N}[WASD]키와 마우스를 사용하여 캐릭터를 정해진 위치까지 이동하세요.	
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time,MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------
	-- 가이드 UI HIDE, A 지점 표시
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
			
		-- 디버깅..
		-- TutorialSystem2:ReqCompleteReward(); -- 서버로 보상 요청.
			
		TutorialSystem2:SetShowControlGuide(true, CTRL_GUIDE1_BASIC, CTRL_GUIDE1_HIDE);
		TutorialSystem2:ChangeMessageWindow(MENT.HIDE,	0); -- 가이드 UI HIDE
		TutorialSystem2:SetTimer(0, 30000); -- 타이머 설정.
		TutorialSystem2:GenerateEffect(
			POS.TARGET._01[1], POS.TARGET._01[2], POS.TARGET._01[3],
			STR.TARGET_POS_SEQ );
		TutorialSystem2:SetStep(step+1);

		-- 1차 목표 지점 이동 화살표 노드 등록

		local j = 1;
		while POS.NAVI._01[j] do
			TutorialSystem2:RegistArrowNode(POS.NAVI._01[j][1], POS.NAVI._01[j][2], POS.NAVI._01[j][3]);
			j = j + 1;
		end
--------------------------------------------------------------------------------------------------
--[[
		-- 2번 적 생성.
		TutorialSystem2:CreateActorPos(ACTOR.ENEMY_2,
						POS.NAVI._01[6][1], POS.NAVI._01[6][2], POS.NAVI._01[6][3],
						0, 100, 100, "Enemy2");
		-- 2번 적 무기 생성.
		TutorialSystem2:SetWeaponSlot(ACTOR.ENEMY_2, 0, WEAPON.TURRET, 0 ); --
		--TutorialSystem2:SetWeaponSlot(ACTOR.ENEMY_2, 0, WEAPON.SUB_MACHINE_GUN, 0 ); -- 서브 머신건 설정.
		TutorialSystem2:SetActorDir(270, ACTOR.ENEMY_2);

		-- 2번 적 동작 설정.
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

		TutorialSystem2:LockGamePlayInput(false); -- 게임 플레이 입력 풀기.

	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then

		TutorialSystem2:SetCountDownNumber( TutorialSystem2:GetTimerLeftTime(0)/1000 );
		
		-- 특정 시간 동안 가지 못하면 되돌아 가기 기능.
		if TutorialSystem2:GetTimerState(0) == TIMER.END then
			TutorialSystem2:SetActorSpawnPos(STR.SPAWN_BOX_01, ACTOR.ME);

			TutorialSystem2:SetActorDir(90, ACTOR.ME);
			TutorialSystem2:SetTimer(0, 30000);
		end

		-- A 지점과 자신 거리 체크
		if TutorialSystem2:IsActorLocated(ACTOR.ME,
			POS.TARGET._01[1], POS.TARGET._01[2], POS.TARGET._01[3],
			300) == true then
			
			TutorialSystem2:SetCountDownNumber( -1 );
			
			TutorialSystem2:SetShowControlGuide(false,0,0);
		
			-- 새봄 출력.
--			TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1,0);

			TutorialSystem2:RemoveGenEffectAll();
			TutorialSystem2:UnRegistAllArrowNodes();

			-- 1번 적 생성.
			TutorialSystem2:CreateActorPos(ACTOR.ENEMY_1, true,
							MAKEVECTOR3(
							POS.ENEMY_SPAWN._01[1],POS.ENEMY_SPAWN._01[2],POS.ENEMY_SPAWN._01[3]),
							0, 100, 100, g_Script_Name[ACTOR.ENEMY_1]);

			-- 1번 적 복장 설정.
			-- uiHairID, uiFaceID, uiCoatID, uiPantsID, uiGlovesID, uiShoesID
			TutorialSystem2:SetCostume(ACTOR.ENEMY_1,
				COSTUME.ENEMY_1[1],COSTUME.ENEMY_1[2],COSTUME.ENEMY_1[3],
				COSTUME.ENEMY_1[4],COSTUME.ENEMY_1[5],COSTUME.ENEMY_1[6] );

			-- 1번 적 무기 설정.
			TutorialSystem2:SetWeaponSlot(ACTOR.ENEMY_1, 0, WEAPON.SUB_MACHINE_GUN, 0 ); -- 서브 머신건 설정.
			TutorialSystem2:ChangeWeapon(ACTOR.ENEMY_1, 0);

			-- 1번 적 타겟 표시	
			TutorialSystem2:GenerateEffect(
			POS.ENEMY_SPAWN._01[1],POS.ENEMY_SPAWN._01[2]+500,POS.ENEMY_SPAWN._01[3],
			STR.ENEMY_TARGET_POS_SEQ );			

			TutorialSystem2:LockGamePlayInput(true); -- 게임 플레이 입력 차단.
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
	-- 잠깐!! 상대팀 스트라이커가 여기까지 왔어요!!
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time,MENT.CHARACTER1, EMOTION._02);
---------------------------------------------------------------------------
	-- 뭐야?! 저 헐벗은 훈련병은?? 무기는 가지고있는거야??{N}이런이런 상대할 가치도 없겠구만.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time,MENT.CHARACTER3, EMOTION._05);
---------------------------------------------------------------------------
	-- 저희를 무시하는군요. 흥.{N}제가 이미 무기는 지급해드렸으니 저 건방진 녀석에게 본때를 보여주세요.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time,MENT.CHARACTER1, EMOTION._02);
---------------------------------------------------------------------------	
	-- 아참, 무기 사용법을 알려드릴께요.{N}우선 착용하고있는 발사무기 사용법을 알려드릴께요.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time,MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------	
	-- 그럼 화면 중앙에 있는 크로스헤어를 마우스를 이용해 붉은색으로 변하도록 상대에게 조준한뒤 마우스 좌클릭으로 공격하세요.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time,MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------	
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
		TutorialSystem2:ChangeMessageWindow(MENT.HIDE,	0); -- 가이드 UI HIDE
		TutorialSystem2:LockGamePlayInput(false); -- 게임 플레이 입력 풀기.
		TutorialSystem2:SetShowControlGuide(true,CTRL_GUIDE1_HIDE,CTRL_GUIDE1_ATTACK);

		TutorialSystem2:SetTimer(0, 60000); -- 60초 시간 제한 걸기.
		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
	
		TutorialSystem2:SetCountDownNumber( TutorialSystem2:GetTimerLeftTime(0)/1000 );
	
		-- 특정 시간 동안 가지 못하면 되돌아 가기 기능.
		if TutorialSystem2:GetTimerState(0) == TIMER.END then
			TutorialSystem2:SetActorPos(
				POS.TARGET._01[1], POS.TARGET._01[2], POS.TARGET._01[3],
				--TARGET_POS._01[1], TARGET_POS._01[2], TARGET_POS._01[3],
				ACTOR.ME);
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);

			TutorialSystem2:SetTimer(0, 60000);
		end

		-- 처음 생성된 적 캐릭터 사망 여부
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
	-- 큭..
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time,MENT.CHARACTER3, EMOTION._06);
---------------------------------------------------------------------------
	-- 잘하셨어요.^^ 속이 후련하네요.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------
	-- 만약을 대비해서 재장전을 하고 이동할까요?? {N}우선 화면 우측하단에 있는 숫자가 %s님이 착용하고있는 총알 수를 알려줘요. {N}앞의 숫자가 0이되면 자동으로 재장전을 해요.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._03);
---------------------------------------------------------------------------
	goto_step8 = step_c;
---------------------------------------------------------------------------
	-- 수동으로 재장전을 하시려면 [R]키를 눌러 실행해주세요.
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
			TutorialSystem2:SetStep(step+6); -- 한 페이지 이동.
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------	
	ment_id = ment_id + 1;
	-- 지금은 재장전을 할필요가 없겠네요. {N}훈련을 위해 탄을 사용하고 재장전을 해볼까요??
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
	
		-- 시간이 종료되면 사용법 UI 출력.
		if TutorialSystem2:GetTimerState(0) == TIMER.END then
			TutorialSystem2:ClearPrevStep();
			TutorialSystem2:SetStep(goto_step8);
		end

		-- 리로드 완료되었는가?
		if TutorialSystem2:GetWeaponCurrentAmmo() == TutorialSystem2:GetWeaponMagazineCapacity() then
			TutorialSystem2:SetCountDownNumber( -1 );
		
			TutorialSystem2:SetStep(step+1);
			TutorialSystem2:LockGamePlayInput(false); -- 게임 플레이 입력 차단 풀기.			
			TutorialSystem2:SetShowControlGuide(false,0,0);
			
			TutorialSystem2:SetWeaponChange(ACTOR.ME, false); -- 웨폰 변경 방지 ON
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		-- (ㄱ) 지점에 아군 캐릭터 제작.
		TutorialSystem2:CreateActorPos(ACTOR.OURS_1, false,
		MAKEVECTOR3(
		POS.OURS_SPAWN._01[1], POS.OURS_SPAWN._01[2], POS.OURS_SPAWN._01[3]),
		180, 0, 0, g_Script_Name[ACTOR.OURS_1] );
		
		TutorialSystem2:SetCostume(ACTOR.OURS_1,
			COSTUME.OURS_1[1],COSTUME.OURS_1[2],COSTUME.OURS_1[3],
			COSTUME.OURS_1[4],COSTUME.OURS_1[5],COSTUME.OURS_1[6] );

		TutorialSystem2:SetWeaponSlot(ACTOR.OURS_1, 0, WEAPON.SUB_MACHINE_GUN, 0 ); -- 서브 머신건 설정.
		TutorialSystem2:ChangeWeapon(ACTOR.OURS_1, 0);
		
		-- 충돌 설정.
		TutorialSystem2:EnableCollisionType(ACTOR.OURS_1, TYPE_ACTOR, false);

		TutorialSystem2:SetInvincibility(ACTOR.OURS_1, true);

		-- 아군캐릭터를 이동 목표 지점으로 설정.
		TutorialSystem2:GenerateEffect(
		POS.TARGET._02[1], POS.TARGET._02[2], POS.TARGET._02[3],
		--POS.OURS_SPAWN._01[1], POS.OURS_SPAWN._01[2], POS.OURS_SPAWN._01[3],
		STR.TARGET_POS_SEQ );

		TutorialSystem2:SetPrevTargetPos(
			MAKEVECTOR3(POS.TARGET._01[1], POS.TARGET._01[2], POS.TARGET._01[3]) );

--		TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);
		TutorialSystem2:LockGamePlayInput(true); -- 게임 플레이 입력 차단.
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
	-- 좋아요!! 이제 볼을 가지러 빠르게 이동해볼까요?
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------
	-- 지정된위치까지 대쉬이동으로 이동해주세요. {N}대쉬이동은 [W]키를 빠르게 두번 누르면 누르면 대쉬이동을 합니다. 가볼까요?
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._03);
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
		-- 2차 목표 지점 이동 화살표 노드 등록
		local j = 1;
		while POS.NAVI._02[j] do
			TutorialSystem2:RegistArrowNode(POS.NAVI._02[j][1], POS.NAVI._02[j][2], POS.NAVI._02[j][3]);
			j = j + 1;
		end

		TutorialSystem2:SetShowControlGuide(false,CTRL_GUIDE1_HIDE,CTRL_GUIDE1_DASH);

		TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0);
		TutorialSystem2:LockGamePlayInput(false); -- 게임 플레이 입력 차단 풀기.
		TutorialSystem2:SetStep(step+1);

		TutorialSystem2:SetTimer(0, 60000);
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:SetCountDownNumber( TutorialSystem2:GetTimerLeftTime(0)/1000 );
	
		-- 시간이 종료 되면 다시 원점으로 보낸다.
		if TutorialSystem2:GetTimerState(0) == TIMER.END then

			TutorialSystem2:SetActorPos(
				POS.NAVI._02[1][1], POS.NAVI._02[1][2]+100, POS.NAVI._02[1][3],
				ACTOR.ME);
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);

			TutorialSystem2:SetTimer(0, 60000);
		end

		-- A 지점과 자신 거리 체크
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
			TutorialSystem2:LockGamePlayInput(true); -- 게임 플레이 입력 차단.
			TutorialSystem2:SetStep(step+1);

		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	-- 깜짝이야!! 우리팀이었잖아~ {N}다행이다.  빨리와 서퍼트좀부탁해!
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
			TutorialSystem2:CatchTheBall(ACTOR.OURS_1); -- 볼 취득.
			TutorialSystem2:SetStep(step+1);
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	--우리팀 스트라이커가 볼을 획득했네요.
	--볼을 획득하면 SP가 지속적으로 감소하고 회복이 되지 않아요.
	--따라가서 지원해주세요.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
	--일단 따라가보죠.	
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
		TutorialSystem2:LockGamePlayInput(false); -- 게임 플레이 입력 차단 풀기.
		
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
			TutorialSystem2:LockGamePlayInput(true); -- 게임 플레이 입력 차단.
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

			-- 2번 적 생성.
			TutorialSystem2:CreateActorPos(ACTOR.ENEMY_2, true,
							MAKEVECTOR3(
							POS.ENEMY_SPAWN._02[1], POS.ENEMY_SPAWN._02[2], POS.ENEMY_SPAWN._02[3]),
							0, 100, 100, g_Script_Name[ACTOR.ENEMY_2] );
							
			TutorialSystem2:SetCostume(ACTOR.ENEMY_2,
				COSTUME.ENEMY_2[1],COSTUME.ENEMY_2[2],COSTUME.ENEMY_2[3],
				COSTUME.ENEMY_2[4],COSTUME.ENEMY_2[5],COSTUME.ENEMY_2[6] );
			
			-- 2번 적 무기 생성.
			TutorialSystem2:SetWeaponSlot(ACTOR.ENEMY_2, 0, WEAPON.TURRET, 0 ); -- 서브 머신건 설정.
			TutorialSystem2:SetActorDir(270, ACTOR.ENEMY_2);

			-- 스킬 설정.
			TutorialSystem2:SetSkill(ACTOR.ENEMY_2, SKILL.WALL_CREATION);

			-- 2번 적 동작 설정.
			TutorialSystem2:PushActorCommandAttack(ACTOR.ENEMY_2, ACTOR.OURS_1, false, true, 0);	-- 무기 거치.
			
			-- 무적 설정.
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
		TutorialSystem2:LockGamePlayInput(false); -- 게임 플레이 입력 차단 풀기.
		
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
	-- 켈리다!! 골대를 방어해!! 어서!!
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
	-- 휴~~ 깜짝이야!! {N}긴급회피가 아니었으면 큰일날뻔했네.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER2, EMOTION._07);
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
			
		TutorialSystem2:ChangeMessageWindow(MENT.HIDE,	0); -- 가이드 UI HIDE
		TutorialSystem2:LockGamePlayInput(false); -- 게임 플레이 입력 차단 풀기.

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
	
		-- 특정 시간 동안 가지 못하면 되돌아 가기 기능.
		if TutorialSystem2:GetTimerState(0) == TIMER.END then

			TutorialSystem2:SetActorPos(
				POS.TARGET._02[1], POS.TARGET._02[2], POS.TARGET._02[3],
				ACTOR.ME);
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);

			TutorialSystem2:SetTimer(0, 10000); -- 타이머 설정.
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

			TutorialSystem2:LockGamePlayInput(true); -- 게임 플레이 입력 차단.
			
			TutorialSystem2:SetPrevTargetPos(
				MAKEVECTOR3(POS.TARGET._03[1], POS.TARGET._03[2], POS.TARGET._03[3]) );			

			TutorialSystem2:SetStep(step+1);
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	goto_step7 = step_c;
	
	-- 상대편이 방어를하기 시작했네요. {N}켈리처럼 긴급회피로 공격을 피해서 이동해볼까요?
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._04);
	-- 긴급회피는 [A/S]키를 누르고있는 상태에서 [SPACEBAR]를 누르면 되요. {N}SP를 소비하니 조심히 사용하세요~
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

		TutorialSystem2:LockGamePlayInput(false); -- 게임 플레이 입력 차단 풀기.
		
		TutorialSystem2:SetTimer(0,15000);

		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:SetCountDownNumber( TutorialSystem2:GetTimerLeftTime(0)/1000 );

			-- 특정 시간 동안 가지 못하면 되돌아 가기 기능.
		if TutorialSystem2:GetTimerState(0) == TIMER.END then

			TutorialSystem2:SetActorPos(
				POS.TARGET._03[1], POS.TARGET._03[2], POS.TARGET._03[3],
				ACTOR.ME);
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
			TutorialSystem2:LockGamePlayInput(true); -- 게임 플레이 입력 차단.
			
			TutorialSystem2:SetTimer(0, 15000); -- 타이머 설정.
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

			TutorialSystem2:SetTimer(0, 15000); -- 타이머 설정.

			-- 2번 적 이동~
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
	
		-- 특정 시간 동안 가지 못하면 되돌아 가기 기능.
		if TutorialSystem2:GetTimerState(0) == TIMER.END then

			TutorialSystem2:SetActorPos(
				POS.TARGET._03[1], POS.TARGET._03[2], POS.TARGET._03[3],
				ACTOR.ME);
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);

			TutorialSystem2:SetTimer(0, 15000); -- 타이머 설정.
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
	-- 다왔어!! 가자!!
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER2, EMOTION._01);
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
		
		TutorialSystem2:SetShowControlGuide(true,CTRL_GUIDE1_BASIC,CTRL_GUIDE1_HIDE);
		
		-- 3,4,5번 적 생성.
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

		-- 무기 설정.
		TutorialSystem2:SetWeaponSlot(ACTOR.ENEMY_3, 0, WEAPON.SUB_MACHINE_GUN, 0 ); -- 서브 머신건 설정.
		TutorialSystem2:SetWeaponSlot(ACTOR.ENEMY_4, 0, WEAPON.SUB_MACHINE_GUN, 0 ); -- 서브 머신건 설정.
		TutorialSystem2:SetWeaponSlot(ACTOR.ENEMY_5, 0, WEAPON.SUB_MACHINE_GUN, 0 ); -- 서브 머신건 설정.

		-- 무적 설정.
		TutorialSystem2:SetInvincibility(ACTOR.ENEMY_3, true);
		TutorialSystem2:SetInvincibility(ACTOR.ENEMY_4, true);
		TutorialSystem2:SetInvincibility(ACTOR.ENEMY_5, true);

		-- 1번 팀원 이동.
		local j = 1;
		while POS.OURS_AUTO._04[j] do
			TutorialSystem2:PushActorCommandMoveToTarget(
				POS.OURS_AUTO._04[j][1], POS.OURS_AUTO._04[j][2]+100, POS.OURS_AUTO._04[j][3],
				-1, ACTOR.OURS_1);
			j = j + 1;
		end

		-- 목표 지점 설정.
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
	
		-- 특정 시간 동안 가지 못하면 되돌아 가기 기능.
		if TutorialSystem2:GetTimerState(0) == TIMER.END then

			TutorialSystem2:SetActorPos(
				POS.TARGET._04[1], POS.TARGET._04[2], POS.TARGET._04[3],
				ACTOR.ME);
			TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);

			TutorialSystem2:SetTimer(0, 15000); -- 타이머 설정.
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
			TutorialSystem2:LockGamePlayInput(true); -- 게임 플레이 입력 차단.
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	-- 상대팀 골대에 다와가네요. 이젠 공격에 대비해 쉴드스킬을 사용해주세요. {N}스킬은 이미 지급해드렸어요. {N}화면 좌측하단을 보시면 장착하고있는 스킬의 종류를 알 수 있어요.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------
	-- 액티브스킬은 [SHIFT]키를 사용해 발동되요.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------
	-- 막아!!
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER5, EMOTION._06);
---------------------------------------------------------------------------
	-- 에잇!!
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER6, EMOTION._06);
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
		
		TutorialSystem2:SetShowControlGuide(true,CTRL_GUIDE1_HIDE,CTRL_GUIDE1_SKILL);
		
		TutorialSystem2:PushActorCommandAttack(ACTOR.ENEMY_3, ACTOR.OURS_1, true, false, 1000000);
		TutorialSystem2:LockGamePlayInput(false); -- 게임 플레이 입력 차단 풀기.

		TutorialSystem2:ChangeMessageWindow(MENT.HIDE,	0); -- 가이드 UI HIDE

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
		-- 특정 시간 동안 가지 못하면 되돌아 가기 기능.
		if TutorialSystem2:GetTimerState(0) == TIMER.END then
			if TutorialSystem2:IsDoingState(ACTOR.ME, STATE_SKILL_SHIELD ) == true and
				TutorialSystem2:ElapsedTimeFromAttack(ACTOR.ME) > 0 and
				TutorialSystem2:ElapsedTimeFromAttack(ACTOR.ME) < 500 then

				TutorialSystem2:ClearAllActorCommands(ACTOR.ENEMY_3);
				TutorialSystem2:PushActorCommandState(ACTOR.ENEMY_3, STATE_NORMAL, 0);
				--TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
				TutorialSystem2:SetSPInfinite(ACTOR.ME, true);
				TutorialSystem2:LockGamePlayInput(true); -- 게임 플레이 입력 차단.

--			    TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);

				TutorialSystem2:SetStep(step+1);
			end
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	-- 쉴드는 발사무기의 공격은 방어하지만 근접무기 공격은 방어할 수 없어요.
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
			-- 10초간 죽이지 못하면 예외 발생.
			-- 모든 명령을 삭제하고 바로 죽이기 실시.
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

			TutorialSystem2:LockGamePlayInput(false); -- 게임 플레이 입력 차단 풀기.
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
			TutorialSystem2:LockGamePlayInput(true); -- 게임 플레이 입력 차단.

			TutorialSystem2:SetSPInfinite(ACTOR.ME, false);
			TutorialSystem2:ClearAllActorCommands(ACTOR.ENEMY_2);
			TutorialSystem2:PushActorCommandState(ACTOR.ENEMY_2, STATE_NORMAL, 0);

--		    TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);
			TutorialSystem2:SetStep(step+1);
		end
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	-- 에잇!! 블록으로 일단은 골대를 보호해야겠군.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER4, EMOTION._06);
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
		
		-- 타깃 AI-3(3)가 Beta 골대 앞에 블록스킬 시전 후 유저 캐릭터를 바라 봄 (블록 파괴불가)
		-----------------------------------------------------------------------------
		TutorialSystem2:PushActorCommandLookAtDir(ACTOR.ENEMY_2, 90);
		TutorialSystem2:PushActorCommandInput(ACTOR.ENEMY_2, INPUT_SPECIAL_ACTION1); -- 스킬 사용.
		-----------------------------------------------------------------------------

		TutorialSystem2:SetTimer(0, 1000);
		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	if step == step_c then
		if TutorialSystem2:GetTimerState(0) == TIMER.END then

			-- 타깃 AI-3(3)가 Beta 골대 앞에 블록스킬 시전 후 유저 캐릭터를 바라 봄 (블록 파괴불가)
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
	
	-- 아군이 당해버렸네요…. 일단 남아있는 적군을 처치할까요?? {N}지금 적에게는 근접무기가 효과적이겠네요. {N}[2]키를 눌러 근접무기로 바꾼후 이동해주세요.
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
	
		-- 뒤로 가기~
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

		-- 15초 이내에 무기를 엑소사이드로 변경하였는가??
		if TutorialSystem2:GetCurrentWeaponID(ACTOR.ME) == WEAPON.EXO_SIDE then
			TutorialSystem2:SetCountDownNumber( -1 );

			TutorialSystem2:SetShowControlGuide(true,CTRL_GUIDE1_BASIC,CTRL_GUIDE1_HIDE);
			TutorialSystem2:LockGamePlayInput(false);
		-- 1. AI-3(3) 정면을 이동목표 지점으로 설정
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

		-- 15초 이내에 캐릭터가 목표 지점에 도착하였는가?
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
	-- 저 앞에 적군이 있네요. 우선 근접무기 사용법을 알려드릴께요. {N}근접무기는 다양한 공격방식을 가지고있어요.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._03);
	-- 우선 노멀공격에 대해 알려드릴께요. {N}[마우스 좌클릭]을 연속적으로 입력하면 노멀공격을 할 수 있어요. {N}근접무기마다 공격방식은 모두 달라요. 그럼 공격해볼까요??
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._03);
---------------------------------------------------------------------------
-- 2. UI : 노멀 공격 사용방법 출력
-- 3. 노멀 공격 입력만 가능하도록 설정
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
		
		-- 2. UI : 노멀 공격 사용방법 출력	
		TutorialSystem2:SetShowControlGuide(true,CTRL_GUIDE1_HIDE,CTRL_GUIDE1_SWORDATT);
		
		TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0);

		-- 3. 노멀 공격 입력만 가능하도록 설정
		TutorialSystem2:SetAllAttackLimit(true);
		TutorialSystem2:SetEnableAttack(Weapon1WeakState);

		TutorialSystem2:InitPlayerAttackCount();
		TutorialSystem2:InitDamageCounter(ACTOR.ENEMY_2);

--		TutorialSystem2:SaveActorPos(ACTOR.ME);

		TutorialSystem2:LockGamePlayInput(false);

		-- 적 타겟 표시	
		TutorialSystem2:GenerateEffect(
		0,0,0, STR.ENEMY_TARGET_POS_SEQ );			
		
		TutorialSystem2:AttachCurrentSequence(ACTOR.ENEMY_2, MAKEVECTOR3(0,500,0));
			
		TutorialSystem2:SetTimer(0, 15000);

		-- 충돌 설정.
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

		-- 유저가 15초 이내에 노멀공격을 4회 이상하였나?
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
	-- 좋아요!! 그럼 다음으로 노멀공격보단 강한 강공격을 알려드릴께요.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
	-- [마우스 좌클릭]을 누르고있으면 강공격을 할 수 있어요. 그럼 공격해볼까요??
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
			
		-- 1. 노멀+강공격 입력만 가능하도록 설정 (좌클릭공격)
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

		-- 유저가 15초 이내에 강공격을 2회 이상하였나?
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
	
	-- 특정 스텝에서 로이의 좌표를 고정시킨다.
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
-- 적이 많이 지쳤네요. 그럼 다음으로 스페셜 공격을 알려드릴께요. {N}스페셜인만큼 그 무기의 가장 특징이 강한 공격이라고 생각하시면 되요.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._03);
-- [마우스 우클릭]을 누르면 스페셜공격을 할 수 있어요. 그럼 공격해볼까요??
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
		
		TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0);

		-- 우클릭&점프공격만 입력 가능하도록 설정
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

		-- 유저가 1분 이내에 우클릭 공격을 사용하여 AI를 2회 타격하였나?
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
	-- 마지막이에요!! 점프공격으로 마무리를 하죠!!
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
	-- [SPACEBAR]를 눌러 점프한 후 [마우스 좌클릭]을 입력하면 점프공격이 발동되요. 그럼 마무리!!
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

		-- 유저가 30초 이내에 점프 공격을 사용하여 AI를 2회 타격하였나?
		if 	TutorialSystem2:GetPlayerAttackCount(Weapon1JumpState) >= 2 and
			TutorialSystem2:GetDamageCounter(ACTOR.ENEMY_2) >= 2 then
		
			TutorialSystem2:SetCountDownNumber( -1 );
		
			TutorialSystem2:SetShowControlGuide(false,0,0);
			
			-- 타깃 AI 파괴처리
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
	-- 휴~~ 이제 아군이 떨어뜨린 볼을 회수해서 볼을 넣으면 되겠네요.
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
	-- 아차! 아까 적군이 골대를 블록으로 막아버렸네요… {N}이 블록은 일반블록하고 달라서 파괴도 안될 것 같은데요….{N}아!! 그럼 저 벽을 이용해 벽점프를 해서 넘어가면 되겠군요.
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._04);
---------------------------------------------------------------------------

	-- 표시된 벽으로 [W]키를 누른 상태에서 [SPACEBAR]를 눌러 점프한 후 다시한번 [SPACEBAR]를 누르면 벽점프를 할 수 있습니다. {N}벽점프로 골대로 이동해볼까요??
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------	
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
		
		TutorialSystem2:SetShowControlGuide(true,CTRL_GUIDE1_HIDE,CTRL_GUIDE1_WALLJUMP);
		
		TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0);

		-- 벽점프 위치를 타겟으로 설정.
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
		
		TutorialSystem2:SetSPInfinite(ACTOR.ME, true); -- 계속 설정한다. 예외 처리.
		
		if 	TutorialSystem2:IsLocatedWallJump(
			MAKEVECTOR3(POS.TARGET._08[1], POS.TARGET._08[2], POS.TARGET._08[3]),
			300) == true then
			TutorialSystem2:SetData(DATA_KEY_WALLJUMP, 1);
		end
			
		-- 벽 점프를 성공 하고 골을 넣은 경우를 판정.
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
	-- 축하합니다. 이것으로 S4리거가 되셨습니다!! {N}앞으로도 저는 대기실에서 실행할 수 있는 훈련소에서 %s님을 기다리고있을 께요. 꼭 와주세요^^
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
---------------------------------------------------------------------------
	if step == step_c then
		TutorialSystem2:ClearPrevStep();
		
		TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0);
		TutorialSystem2:ReqCompleteReward(); -- 서버로 보상 요청.
		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
---------------------------------------------------------------------------
	-- 프로그램 단에서 보상을 받을 경우 레벨을 8로 정의 한다.
	if TutorialSystem2:GetLevel() == 8 then 
		TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
--------------------------------------------------------------------------
	-- 그럼 약속대로 보급품을 드릴께요. 수고했어요 ^^
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(),MENT.CHARACTER1, EMOTION._01);
	
-- 끝~~
end
