
require "Resources/Script/ActorStates_Constants.lua"

local index = 0;

MONINPUT_NORMAL     		= index; index = index + 1;	
MONINPUT_RUN        		= index; index = index + 1;	
MONINPUT_DAMAGE     	= index; index = index + 1;	
MONINPUT_BLOW	    		= index; index = index + 1;	
MONINPUT_DEATH      		= index; index = index + 1;	
MONINPUT_ATTACK_0		= index; index = index + 1;	
MONINPUT_ATTACK_1		= index; index = index + 1;	
MONINPUT_ATTACK_2		= index; index = index + 1;	
MONINPUT_PRE_FASTRUN	= index; index = index + 1;	
MONINPUT_FASTRUN    	= index; index = index + 1;	
MONINPUT_MOVE_ATTACK	= index; index = index + 1;	
MONINPUT_TOTAL      		= index; index = index + 1;	

index = 0;

MONSTATE_NORMAL		= index; index = index + 1;	
MONSTATE_RUN        		= index; index = index + 1;	
MONSTATE_DAMAGE     	= index; index = index + 1;	
MONSTATE_BLOW       		= index; index = index + 1;	
MONSTATE_DEATH      		= index; index = index + 1;	
MONSTATE_ATTACK_0		= index; index = index + 1;	
MONSTATE_ATTACK_1		= index; index = index + 1;	
MONSTATE_ATTACK_2		= index; index = index + 1;	
MONSTATE_PRE_FASTRUN	= index; index = index + 1;	
MONSTATE_FASTRUN    	= index; index = index + 1;	
MONSTATE_MOVE_ATTACK   	= index; index = index + 1;	
MONSTATE_TOTAL		= index; index = index + 1;	

index = 0;

MONMOVE_WAYPOINT	= index; index = index + 1;	
MONMOVE_ACTOR		= index; index = index + 1;	
MONMOVE_TOTAL		= index; index = index + 1;	


-- 모드 별 사용 AI 패턴 구분자
index = 0;

MONPATTERN_MISSION_PUPPET		= index; index = index + 1; -- 베이스를 인식하지 않으며, 유저도 인식하지 않음. 공격 없음.
MONPATTERN_MISSION_RETURN		= index; index = index + 1;	-- 베이스를 인식하지 않으며, 유저 인식이 없으면 리스폰 포인트로 복귀
MONPATTERN_MISSION_ATTACK		= index; index = index + 1;	-- 베이스를 인식하지 않으며, 유저를 대상으로 계속 공격
MONPATTERN_DEFFNCE_ATTACK		= index; index = index + 1; -- 베이스를 인식하며, 유저가 있으면 유저를 대상으로 공격하고, 유저가 없으면, 베이스로 들어감.

MONPATTERN_TOTAL		= index; index = index + 1;	

--[[-------------------------------------------------------------
몬스터 스크립트에 기본적으로 있어야 하는 함수, 없으면 에러남.
-----------------------------------------------------------------
function Create( monster ) 				end		-- 최초 몬스터 생성 시
function Update( timeDelta, monster )	end		-- 업데이트

--]]-------------------------------------------------------------

--[[-------------------------------------------------------------
몬스터 스크립트에서 사용가능한 변수 및 함수
-----------------------------------------------------------------
AI_CONTROLLER:RegisterReservedCommand( 커맨드 );	-- 커맨드 등록을 해야 몬스터가 동작을 한다.
ADDTIME												-- 112
INTERVAL_UPDATE_TIME								-- 150
RayDistanceLimit									-- constant_info.xml 에 정의된 값
]]---------------------------------------------------------------

--[[-------------------------------------------------------------
몬스터 스크립트에서 사용가능한 함수 : UTIL클래스를 사용하는 함수
-----------------------------------------------------------------
IsValidActor( 액터 );					-- 해당 액터가 TEAM_ALPHA 팀에 있는가?, true/false
IsVisible( 액터1, 액터2 );				-- 액터1에서 액터2가 보이는가?, true/false
GetHP( 액터 );							-- 액터의 HP를 반환한다.
GetHPRate( 액터 );						-- 현재HP/최대HP			
GetDist( 액터1, 액터2 );				-- 액터1에서 액터2 까지의 거리
GetDistByArea( 액터, 노드이름 );		-- 액터와 노드사이의 거리, 노드가 없다면 0을 반환함.		
GetActorByMinDist( 적을 찾을 것인가?, 기준액터, 최소거리, 최대거리, 보이는 유저만 찾을것인가?, 인비상태의 적도 찾을 것인가? );
GetActorByMaxDist( 적을 찾을 것인가?, 기준액터, 최소거리, 최대거리, 보이는 유저만 찾을것인가?, 인비상태의 적도 찾을 것인가? );
GetActorByMinHP( 적을 찾을 것인가?, 기준액터, 최소거리, 최대거리, 보이는 유저만 찾을것인가?, 인비상태의 적도 찾을 것인가? );
GetActorByMaxHP( 적을 찾을 것인가?, 기준액터, 최소거리, 최대거리, 보이는 유저만 찾을것인가?, 인비상태의 적도 찾을 것인가? );
GetPositionActor( 액터 );				-- 액터의 위치를 반환한다.
GetDirection2To1( 액터1, 액터2 );		-- 액터2에서 액터1의 방향을 반환한다.
GetDistBySafeArea( 액터, 노드이름 );	-- 베이스와 액터의 거리를 반환한다.
GetSafeAreaPos( 노드이름 );				-- 베이스의 위치를 반환한다.
GetDirection2To1Rand( 액터1, 액터2, 랜덤width, 랜덤height, 가우스값:높을 수록 가운데로 몰린다 );	-- 액터2에서 액터1의 방향을 반환할 때 랜덤값만큼을 적용해서 반환한다.
GetAreaPos( 노드이름 );					-- 해당 노드의 위치를 반환한다.
IsSafeZoneEnable( 노드이름 );			-- 베이스가 활성화 되어 있는가? true/false
IsInSafeArea( 노드이름, 액터 );			-- 액터가 베이스에 속해 있는가? true/false

]]---------------------------------------------------------------

--[[-------------------------------------------------------------
몬스터 스크립트에서 사용가능한 함수 : 몬스터 클래스를 사용하지 않는 함수
-----------------------------------------------------------------
-- 커맨드관련
CreateMoveToCommand( u32 uiGameTime, common::SActorID actorID, BaseLib::SVector3& vStartPos, BaseLib::SVector3& vEndPos, float fMoveSpeedMultiplier = 1.f );
CreateRemoveCommand( u32 uiGameTime, common::SActorID actorID, BaseLib::SVector3& vPos, s32 iRemoveType );
CreateAttackCommand( u32 uiGameTime, common::SActorID actorID, s32 iAttackIndex, BaseLib::SVector3& vPos, BaseLib::SVector3& vDir );
CreateStealthCommand( u32 uiGameTime, common::SActorID actorID, bool isOn );
CreatePreFastRunCommand( u32 uiGameTime, common::SActorID actorID );
CreateFastRunCommand( u32 uiGameTime, common::SActorID actorID, u32 uiDurationTime );
CreateMoveAttackCommand( u32 uiGameTime, common::SActorID actorID, u32 uiDurationTime );
CreateSelfBombCommand( u32 uiGameTime, common::SActorID actorID, u32 uiBombTime );
CreateAccumDamageCancel( u32 uiDurationTime, float fAccumDamage );

-- 상태관련
CreateAttackState( 몬스터, 상태ID, 상태지속시간 );
CreatePreFastRunState( 몬스터, 상태ID, 상태지속시간 );
CreateFastRunState( 몬스터, 상태ID, 상태지속시간 );
CreateMoveAttackState( 몬스터, 상태ID, 상태지속시간 );
CreateDeathBombState( 몬스터, 상태ID, 상태지속시간 );

-- 공격관련
공격 스크립트 참고.( Weapon_Airgun.lua 등 )

]]----------------------------------------------------------------

--[[-------------------------------------------------------------
몬스터 스크립트에서 사용가능한 함수 : state 클래스를 사용하는 함수.( state:function() 형식으로 사용해야 함. )
-----------------------------------------------------------------
-- MonsterState
SetID( 상태ID );
AddSequence( 효과시간시작, 효과붙일노드, 효과파일스트링 );
SetMoveBoxMultiplier( 무브박스 이동 비율 );											-- 1 이면 정상속도
SetSuperArmor( 해당상태가 슈퍼아머가 되는가? );										-- true/false
SetAnimationSpeed( 애니메이션 재생속도 비율 );										-- 
SetNextStateID( 상태키값, 상태ID );													-- 현 상태에서 이동 가능한 상태를 추가
IsCreateNewCommand();																-- 현 상태에서 커맨드를 추가 가능한가?
SetCreateNewCommand( 현재 상태에서 새로운 커맨드 생성이 가능하게 하겠는가? );		-- true/false
SetAnimtionBlend( 애니메이션 스트링, bool bBlend, u32 uiBlendTime, u32 uiRecoveryTime, bool bLoop, bool bReset );
SetDestSaturationColor( u32 uiTime, float fSaturation, float fR, float fG, float fB );
SetDurationTime( 상태 지속 시간 );													-- 현재 상태 지속 시간 이후에 보통은 다른 상태로 넘어간다.
IsOnlyToGoal();																		-- 현재 상태가 무조건 베이스를 향하는가? true/false 반환
SetOnlyToGoal( 무조건 베이스를 향하는가? );											-- true/false
SetCancel( 해당 상태를 캔슬 할 수 있는 클래스 );									-- 킹 관련 하여 작업됨.
ChangeMonsterState( 상태ID );													-- 해당 상태로 변경

-- AttackMonsterState, MonsterState에서 쓰는 함수는 전부 사용 가능
Create();																			-- 상태생성
AddAttack( 공격 );																	-- 현재 상태에 공격을 추가
SetUpdatePosDir( 몬스터의 위치와 방향을 공격에 사용할 것인가?  );					-- true/false

-- BlowMonsterState, MonsterState에서 쓰는 함수는 전부 사용 가능

-- DamageMonsterState, MonsterState에서 쓰는 함수는 전부 사용 가능

-- DeathBombMonsterState, MonsterState에서 쓰는 함수는 전부 사용 가능
Create();																			-- 상태생성
AddAttack( 공격 );																	-- 현재 상태에 공격을 추가
SetUpdatePosDir( 몬스터의 위치와 방향을 공격에 사용할 것인가?  );					-- true/false

-- DeathMonsterState, MonsterState에서 쓰는 함수는 전부 사용 가능

-- FastRunMonsterState, MonsterState에서 쓰는 함수는 전부 사용 가능
SetMoveSpeedMultiplier( 이동 속도 비율 );											-- 현재 상태에서 기본 이동 속도에 곱해지는 비율

-- MoveAttackMonsterState, MonsterState에서 쓰는 함수는 전부 사용 가능
SetMoveSpeedMultiplier( 이동 속도 비율 );											-- 현재 상태에서 기본 이동 속도에 곱해지는 비율
AddAttack( 공격 );																	-- 현재 상태에 공격을 추가

-- NormalMonsterState, MonsterState에서 쓰는 함수는 전부 사용 가능

-- PreFastRunMonsterState, MonsterState에서 쓰는 함수는 전부 사용 가능

-- RunMonsterState, MonsterState에서 쓰는 함수는 전부 사용 가능

--]]-------------------------------------------------------------

--[[--------------------------------------------------------------
몬스터 스크립트에서 사용가능한 함수 : 몬스터 클래스를 사용하는 함수
------------------------------------------------------------------
monster:SetWaitTime							( 시간 );																-- 해당 시간 만큼 스크립트가 호출 되지 않는다. 1초=1000
monster:FindPath							( BaseLib::SVector3* pOutVec3, const BaseLib::SVector3& vEndPos );		-- 결과값( 현재는 사용 안함 ), 최종 목표
monster:AddAttack							( 상태값, 공격 ); 														-- 
monster:UpdateHost							( deltaTime );															-- 델타시간
monster:GetGoalPosition						(); 																	-- 몬스터의 이동 목표지점, return const BaseLib::SVector3& 
monster:GetID								(); 																	-- 몬스터의 ID                  
monster:GetPosition							(); 																	-- 현재위치            
monster:SetMoveType							( 이동타입 ); 															-- MONMOVE_WAYPOINT, MONMOVE_ACTOR            
monster:SetTargetActorID					( 타겟의 ID ); 															--        
monster:AddState							( 추가 상태ID, 상태 ); 													-- 
monster:GetMonsterState						( 가져올 상태의 ID ); 													-- 상태가 있을 경우엔 상태값을 없을 경우엔 null을 리턴      
monster:CreateDefenseAura					( 체크시간, 효과영역, 데미지비율, 효과파일스트링 );      
monster:SetCanSufferDefenseAura				( 디펜스오오라는 받을지 여부 );											-- true/false
monster:CreateStealth						(); 																	-- 스텔스 기능 생성
monster:IsStealthOn							(); 																	-- 현재 스텔스 기능이 활성화 되어 있는가? true/false
monster:GetLastAttackStateID				(); 																	-- 마지막 공격 상태 ID을 반환한다.
monster:SetLastAttackStateID				( 마지막 공격 상태 ID );
monster:GetRandom							( 랜덤수치영역 ); 														-- 0~수치영역중에서 랜덤한 값을 반환함.
monster:GetAccumTime						();																		-- 생성된 이후에 누적시간을 반환함.
monster:ResetAccumTime						(); 																	-- 누적 시간 초기화
monster:GetPower							(); 																	-- 공격력을 반환함.
monster:SetMoveSpeedMultiplier				( 이동속도비율값 ); 													-- 최종이동속도 = 이동속도 비율 값 * 기본이동속도
monster:IsRateOfFire						( 어택인덱스 );															-- MONSTATE_ATTACK_0, MONSTATE_ATTACK_1, MONSTATE_ATTACK_2 만 가능, 현재 공격 중 인가. true/false
monster:ResetRateOfFire						( 어택인덱스, 초기화시간 ); 											-- ( MONSTATE_ATTACK_0, MONSTATE_ATTACK_1, MONSTATE_ATTACK_2 ), 기본값은 0
monster:GetRateOfFire						( 어택인덱스 ); 														-- MONSTATE_ATTACK_0, MONSTATE_ATTACK_1, MONSTATE_ATTACK_2 만 가능, 해당 공격의 시간을 반환함.
monster:GetRakeMoveSpeedRate				();																		-- 유저를 쫓아가는 속도 비율
monster:GetEscapeMoveSpeedRate				(); 																	-- 유저로 부터 달아나는 속도 비율
monster:IsCreateNewCommand					(); 																	-- 현재 상태에서 커맨드를 만들 수 있는가? true/false
monster:IsOnlyToGoal						(); 																	-- 베이스만 향해서 가는가? true/false
monster:IsProbOn							( 확률값 ); 															-- 0 ~ 100, 해당 확률 안에서 true/false
monster:CreateTimerBomb						( 타이머이펙트스트링, 이펙트가 붙을 노드 이름 ); 						-- AddTimerBombAttack 을 이용하지 않으면 몬스터 본인만 죽는다.
monster:AddTimerBombAttack					( 공격 ); 																-- 시간폭탄에 공격을 추가한다.
monster:GetTargetActor						();																		-- 현재 타겟 유저를 반환함.
monster:GetArg								();																		-- 스크립트 상에서 자유롭게 사용하기위한 변수( 몬스터 별로 가지고 있음 ), 사용 가능 함수들은 아래 참고.
monster:ChangeMonsterState			( 변경할 상태의 ID ); 													-- 상태가 있을 경우엔 상태값을 없을 경우엔 null을 리턴      
]]----------------------------------------------------------------

--[[--------------------------------------------------------------
프로그램에서 monster:GetArg() 에 넣어주는 값들
------------------------------------------------------------------
monster:GetArg():GetLStr( "SpawnBase" );				-- 몬스터의 스폰지역 이름을 반환함.
monster:GetArg():GetLU32( "MainPattern" );				-- 몬스터의 메인패턴을 반환함. monster_status.xml 참고
monster:GetArg():GetLStr( "NameKey" );					-- 몬스터의 이름의 키값을 반환함. monster_status.xml 참고
monster:GetArg():GetLStr( "GroupKey" );					-- 몬스터의 그룹 키값을 반환함. monster_status.xml 참고
monster:GetArg():GetLStr( "MonsterKey" );				-- 몬스터의 키값을 반환함. monster_status.xml 참고
--]]--------------------------------------------------------------

--[[--------------------------------------------------------------
monster:GetArg() 에서 사용할 수 있는 함수들
------------------------------------------------------------------
-- Get 함수는 값을 가져오기.
bool	GetLBool			( 키 문자열 )				
u8		GetLU8				( 키 문자열 )				
u16		GetLU16				( 키 문자열 )				
u32		GetLU32				( 키 문자열 )				
float	GetLFloat			( 키 문자열 )				
cchar *	GetLStr				( 키 문자열 )				
void *	GetLVoid			( 키 문자열 )				

-- Set 함수는 값을 설정하기.
void 	SetLBool			( 키 문자열, bool sData )	
void 	SetLU8				( 키 문자열, u8 sData )		
void 	SetLU16				( 키 문자열, u16 sData )		
void 	SetLU32				( 키 문자열, u32 sData )		
void 	SetLFloat			( 키 문자열, float sData )	
void 	SetLStr				( 키 문자열, char * pData )	
void 	SetLVoid			( 키 문자열, void * pData )	

-- Push 값의 버퍼를 만들기( 먼저 선언하고 Set, Get을 쓸 수 있음 )
u32 	PushLBool			( 키 문자열, bool sData )	
u32 	PushLU8				( 키 문자열, u8 sData )		
u32 	PushLU16			( 키 문자열, u16 sData )		
u32 	PushLU32			( 키 문자열, u32 sData )		
u32 	PushLFloat			( 키 문자열, float sData )	
u32 	PushLStr			( 키 문자열, char * pData )	
u32 	PushLVoid			( 키 문자열, void * pData )	
]]----------------------------------------------------------------