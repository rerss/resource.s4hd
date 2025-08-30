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
	TARGET_POS_SEQ 	= "groundtarget_eff_01",
	SPAWN_BOX_01	= "alpha_spawn_pos_01"
};

ACTOR = {
	ME = 0,
	OURS_1 = 1,
	ENEMY_1 = 2,
	ENEMY_2 = 3,	
};

POS = { -- 모든 지점 설정.
	MYPOINT = { -- 나의 스폰 위치
		_01 = {  -30 , 2925 , 4308 }, -- 첫번째 스폰위치
	},
	
	ENEMY_SPAWN = { -- 적 지점.
		_01 = { -227 , 2925 , -3888 }, -- 1번 적 지점.	
	},
	
	TARGET = {
		_01 = { -11 , 2928 , 60 },
		_02 = { -48 , 2922 , -1866 },
	},
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

STATE_USE_WEAPON1 	= 39;
STATE_USE_WEAPON2	= 40;
STATE_USE_WEAPON2_WEAK = 41;
STATE_USE_WEAPON2_STRONG = 42;
STATE_USE_WEAPON1_WEAK = 43;
STATE_USE_WEAPON1_STRONG = 44;
STATE_USE_WEAPON1_JUMP = 45;
STATE_USE_WEAPON1_STRONG1 = 46;
STATE_USE_WEAPON1_ATTACK2 = 47;
STATE_USE_WEAPON1_COUNTERATTACK = 51;

STATE_ARCADERESULTACTION = 52;

STATE_STANDBY_INSTALL	 = 53;
STATE_NORMAL_INSTALL = 54;
STATE_USE_WEAPON1_INSTALL = 56;
STATE_USE_WEAPON2_INSTALL = 57;

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

TIMER = {
	NOINIT = 0,
	DOING = 1,
	END = 2,
};

SKILL = {
	BROCK = 3060001 ,
};

WEAPON = {
	SUB_MACHINE_GUN = 2010001,
};

MAX_SCRIPT_MENT_COUNT 	= 7;
g_Script_Ment = {}

-- 스크립트 최초 로딩시 초기화.
function Init_tutorial2()

	local scriptTotal = MAX_SCRIPT_MENT_COUNT;

	-- 문자열 로딩
	for i=1,scriptTotal do
		strKey = string.format( "BTC_SKILL_Block_%d", i );
		g_Script_Ment[i] = GetString( strKey );
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
function Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, strA1)
	
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
function Tutorial_Step_PageScript(step, step_c, ment_id, char_time)
	
	Tutorial_Step_PrintAniScript(step, step_c, ment_id, char_time); step_c = step_c + 1;
	Tutorial_Step_WaitInput_TAni(step, step_c); step_c = step_c + 1;

	Tutorial_Step_PrintScript	(step, step_c, ment_id); step_c = step_c + 1;
	Tutorial_Step_WaitInput		(step, step_c); step_c = step_c + 1;
	
	return step_c;
end

function Initialize()
	-- Initialize()
TutorialSystem2:InitCount(); -- PlayCount 초기화
TutorialSystem2:SetReturn(false); -- 리턴초기화 -> 1분이내처리
TutorialSystem2:SetData(1,0);
TutorialSystem2:SetData(0,0);
TutorialSystem2:SetPointMent(0);
TutorialSystem2:ClearEnableInput();
end

-- 0 스텝 초기화
-- step : 현재 스텝
function Tutorial_Step_First(step)
	if step == 0 then

	Initialize();
	-- 캐릭터 스폰.
	TutorialSystem2:CreateActorPos(ACTOR.ME, true , 
	MAKEVECTOR3(POS.MYPOINT._01[1] ,POS.MYPOINT._01[2],POS.MYPOINT._01[3]), 90, 0, 0 , "");

	TutorialSystem2:ClearEnableInput();
	
	-- 캐릭터 스킬 설정.
	TutorialSystem2:SetSkill(ACTOR.ME, SKILL.BROCK );  -- 블록스킬
	
	TutorialSystem2:SetWeaponChange(ACTOR.ME,true);	
	TutorialSystem2:LockGamePlayInput(true); -- 게임 플레이 입력 차단.
	TutorialSystem2:SetInvincibility(ACTOR.ME,true); -- 플레이어 무적상태
	
	--TutorialSystem2:SetWeaponSlot(ACTOR.ME, 0, WEAPON.SUB_MACHINE_GUN , 0 ); -- 서브머신건.
	--TutorialSystem2:ChangeWeapon(ACTOR.ME , 0);
	
	TutorialSystem2:CreateActorPos(ACTOR.ENEMY_1, true , 
						MAKEVECTOR3(POS.ENEMY_SPAWN._01[1],POS.ENEMY_SPAWN._01[2],POS.ENEMY_SPAWN._01[3]),
						0, 100, 100, "A" );			
	TutorialSystem2:SetActorDir( -90 , ACTOR.ENEMY_1 );	
	TutorialSystem2:SetCostume(ACTOR.ENEMY_1, 
			1000016, 1010017, 1020031, 1030026, 0, 1050031 );
			
	TutorialSystem2:SetWeaponSlot(ACTOR.ENEMY_1, 0, WEAPON.SUB_MACHINE_GUN , 0 ); -- 서브머신건.
	TutorialSystem2:ChangeWeapon(ACTOR.ENEMY_1 , 0);
	
	-- 캐릭터 1 이미지 출력
	TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);
	TutorialSystem2:SetStep(step+1);

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
	local ment_id 	= 1;	
-----------------------------------------------------------------
	-- 초기화스텝
Tutorial_Step_First(step);
step_c = step_c + 1;
MoveStep = step_c;
----------------------------------------------------------------
step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName()); 
-- 블록은 SHIFT]키를 눌러 설치하고 하나만 설치됩니다. 그럼 [SHIFT]키로 블록을 정해진 장소에 설치해보세요. 여기까지출력.
-- for i = ment_id+1, ment_id+2 do
-- ment_id = i;
-- step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time);
-- end
---------------------------------------------------------------------------
-- 포인트 출력
if step == step_c then
		-- TutorialSystem2:ChangeMessageWindow(MENT.HIDE,	0); -- 가이드 UI HIDE
		-- TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1,	0);
		TutorialSystem2:PushActorCommandState(ACTOR.ENEMY_1, STATE_NORMAL, 0);
	
		TutorialSystem2:GenerateEffect(
		POS.TARGET._01[1], POS.TARGET._01[2], POS.TARGET._01[3],
		STR.TARGET_POS_SEQ ); -- 구름다리 중앙을 스킬사용 목적지로 지정
		TutorialSystem2:SetItemControlUI(SKILL.BROCK);
	
		TutorialSystem2:SetInvincibility(ACTOR.ENEMY_1,true); -- 플레이어 무적상태
		
		TutorialSystem2:SetStep(step+1);
end
step_c = step_c + 1;
ReturnStep = step_c;
------------------------------------------------------------------------
for i = ment_id+1, ment_id+2 do
ment_id = i;
step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time);
end
---------------------------------------------------------------------------
if step == step_c then 
	TutorialSystem2:SetActorPos( POS.ENEMY_SPAWN._01[1],POS.ENEMY_SPAWN._01[2],POS.ENEMY_SPAWN._01[3], ACTOR.ENEMY_1 );
	TutorialSystem2:SetActorDir( -90 , ACTOR.ENEMY_1 );
	TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0);
	TutorialSystem2:LockGamePlayInput(false);
	--TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
	TutorialSystem2:SetTimer(0,60000); -- 1분이내로 캐릭터 이동해야한다.
	TutorialSystem2:SetStep(step+1);
end
step_c = step_c + 1;
---------------------------------------------------------------------------
if step == step_c then
	
	if TutorialSystem2:GetActorPosY(ACTOR.ME) < -3000 then
			TutorialSystem2:SetActorPos(
			POS.MYPOINT._01[1],POS.MYPOINT._01[2],POS.MYPOINT._01[3], ACTOR.ME);
			TutorialSystem2:SetActorDir( 90 , ACTOR.ME );
	end
	
	if TutorialSystem2:GetTimerState(0) == TIMER.END then
		TutorialSystem2:RemveAllObject();
	TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
	 TutorialSystem2:SetReturn(true);
	 TutorialSystem2:SetStep(step+1);
	 TutorialSystem2:LockGamePlayInput(true);
	 TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
	 TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);
	end	
	
	-- 플레이어가 블록스킬사용중이고 이펙트위치에 왔다면
	if TutorialSystem2:GetMatchActorState(ACTOR.ME, STATE_SKILL_WALL_CREATION ) == true and 
	TutorialSystem2:IsActorLocated(ACTOR.ME,
			POS.TARGET._01[1], POS.TARGET._01[2], POS.TARGET._01[3], 300) == true then
	  TutorialSystem2:SetStep(step+1);
	end
	
end
step_c = step_c + 1;
---------------------------------------------------------------------------
if TutorialSystem2:GetReturn() == true then -- 1분완료 X 
	ment_id = ment_id + 3;  -- 1분동안못해서 돌아가는 멘트출력.
	step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time);
end
---------------------------------------------------------------------------
if step == step_c then
	
	if TutorialSystem2:GetReturn() == false then
	TutorialSystem2:RemoveGenEffectAll();
	TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);
	TutorialSystem2:SetStep(step+1);
	TutorialSystem2:LockGamePlayInput(true);
	TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
	end
	
	if TutorialSystem2:GetReturn() == true then
	TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0);
	--TutorialSystem2:RemoveGenEffectAll();
	TutorialSystem2:SetReturn(false);
	TutorialSystem2:SetStep(ReturnStep);
	TutorialSystem2:SetActorPos( POS.MYPOINT._01[1],POS.MYPOINT._01[2],POS.MYPOINT._01[3], ACTOR.ME );
	TutorialSystem2:SetActorDir( 90 , ACTOR.ME );
	TutorialSystem2:LockGamePlayInput(true);
	TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
	TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);
	end
	
end
step_c = step_c + 1;
-------------------------------------------------------------------------------
ment_id = ment_id + 1; -- 블록 스킬은 사용시 SP를 한번 소모하고 상대방의 공격으로 내구도가 떨어지면 파괴됩니다.
step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time);
---------------------------------------------------------------------------------
if step == step_c then
	TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0);
	TutorialSystem2:SetPlayCount(); 
	TutorialSystem2:LockGamePlayInput(true);
	TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);
	
	TutorialSystem2:PushActorCommandMoveToTarget(
		POS.TARGET._02[1], POS.TARGET._02[2], POS.TARGET._02[3], -1, ACTOR.ENEMY_1 );
		
	TutorialSystem2:SetStep(step+1);
end
step_c = step_c + 1;
-------------------------------------------------------------------------------
if step == step_c then
	
	if TutorialSystem2:IsExistCommand(ACTOR.ENEMY_1) == false then
		TutorialSystem2:PushActorCommandAttack(ACTOR.ENEMY_1,
			ACTOR.ME,
			true, false, 1500);
		TutorialSystem2:SetTimer(0,2000);
		TutorialSystem2:SetData(0,0);
		TutorialSystem2:SetStep(step+1);
	end

end
step_c = step_c + 1;
-------------------------------------------------------------------------------
if step == step_c then
		
		if TutorialSystem2:IsExistCommand(ACTOR.ENEMY_1) == false then
			if TutorialSystem2:GetData(0) == 0 then
			
				TutorialSystem2:RemveAllObject();
				TutorialSystem2:SetData(0,1);
			end

		if  TutorialSystem2:GetTimerState(0) == TIMER.END then
			 TutorialSystem2:PushBlastDamage("blast3_centerpillar",50);
			 TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);
			 TutorialSystem2:SetData(0,0);
			 TutorialSystem2:SetStep(step+1);
		end
	 end

end
step_c = step_c + 1;
---------------------------------------------------------------------------------------
if TutorialSystem2:GetPlayCount() == 1 then
ment_id = ment_id + 3; -- 잘하셨어요^^ 다시한번 해볼까요?.
step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time);
end
--------------------------------------------------------------------------------------------
if step == step_c then

	TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0);

	if TutorialSystem2:GetPlayCount() == 1 then
		--TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0);
		TutorialSystem2:AllRebirth();
		TutorialSystem2:GenerateEffect(
		POS.TARGET._01[1], POS.TARGET._01[2], POS.TARGET._01[3],
		STR.TARGET_POS_SEQ ); -- 구름다리 중앙을 스킬사용 목적지로 지정
		TutorialSystem2:SetActorPos( POS.MYPOINT._01[1],POS.MYPOINT._01[2],POS.MYPOINT._01[3], ACTOR.ME );
		TutorialSystem2:SetActorDir( 90 , ACTOR.ME );
		TutorialSystem2:SetStep(ReturnStep);
	end
	
	if TutorialSystem2:GetPlayCount() == 2 then
		TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0);
		TutorialSystem2:AllRebirth();
		TutorialSystem2:SetStep(step+1);
	end
	
end
step_c = step_c + 1;
-----------------------------------------------------------------------------------
	ment_id = ment_id + 1;
	step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time); 
-----------------------------------------------------------------------------------
	if step ==step_c then
	TutorialSystem2:ChangeMessageWindow(MENT.HIDE,	0); -- 가이드 UI HIDE
	TutorialSystem2:SetStep(step+1);
	end
	step_c = step_c + 1;
----------------------------------------------------------------------------
	if step == step_c then
	TutorialSystem2:SetStep(step+1);
	TutorialSystem2:SetShowWeaponUI(true);
	end		
		
end