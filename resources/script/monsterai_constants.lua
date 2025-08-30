
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


-- ��� �� ��� AI ���� ������
index = 0;

MONPATTERN_MISSION_PUPPET		= index; index = index + 1; -- ���̽��� �ν����� ������, ������ �ν����� ����. ���� ����.
MONPATTERN_MISSION_RETURN		= index; index = index + 1;	-- ���̽��� �ν����� ������, ���� �ν��� ������ ������ ����Ʈ�� ����
MONPATTERN_MISSION_ATTACK		= index; index = index + 1;	-- ���̽��� �ν����� ������, ������ ������� ��� ����
MONPATTERN_DEFFNCE_ATTACK		= index; index = index + 1; -- ���̽��� �ν��ϸ�, ������ ������ ������ ������� �����ϰ�, ������ ������, ���̽��� ��.

MONPATTERN_TOTAL		= index; index = index + 1;	

--[[-------------------------------------------------------------
���� ��ũ��Ʈ�� �⺻������ �־�� �ϴ� �Լ�, ������ ������.
-----------------------------------------------------------------
function Create( monster ) 				end		-- ���� ���� ���� ��
function Update( timeDelta, monster )	end		-- ������Ʈ

--]]-------------------------------------------------------------

--[[-------------------------------------------------------------
���� ��ũ��Ʈ���� ��밡���� ���� �� �Լ�
-----------------------------------------------------------------
AI_CONTROLLER:RegisterReservedCommand( Ŀ�ǵ� );	-- Ŀ�ǵ� ����� �ؾ� ���Ͱ� ������ �Ѵ�.
ADDTIME												-- 112
INTERVAL_UPDATE_TIME								-- 150
RayDistanceLimit									-- constant_info.xml �� ���ǵ� ��
]]---------------------------------------------------------------

--[[-------------------------------------------------------------
���� ��ũ��Ʈ���� ��밡���� �Լ� : UTILŬ������ ����ϴ� �Լ�
-----------------------------------------------------------------
IsValidActor( ���� );					-- �ش� ���Ͱ� TEAM_ALPHA ���� �ִ°�?, true/false
IsVisible( ����1, ����2 );				-- ����1���� ����2�� ���̴°�?, true/false
GetHP( ���� );							-- ������ HP�� ��ȯ�Ѵ�.
GetHPRate( ���� );						-- ����HP/�ִ�HP			
GetDist( ����1, ����2 );				-- ����1���� ����2 ������ �Ÿ�
GetDistByArea( ����, ����̸� );		-- ���Ϳ� �������� �Ÿ�, ��尡 ���ٸ� 0�� ��ȯ��.		
GetActorByMinDist( ���� ã�� ���ΰ�?, ���ؾ���, �ּҰŸ�, �ִ�Ÿ�, ���̴� ������ ã�����ΰ�?, �κ������ ���� ã�� ���ΰ�? );
GetActorByMaxDist( ���� ã�� ���ΰ�?, ���ؾ���, �ּҰŸ�, �ִ�Ÿ�, ���̴� ������ ã�����ΰ�?, �κ������ ���� ã�� ���ΰ�? );
GetActorByMinHP( ���� ã�� ���ΰ�?, ���ؾ���, �ּҰŸ�, �ִ�Ÿ�, ���̴� ������ ã�����ΰ�?, �κ������ ���� ã�� ���ΰ�? );
GetActorByMaxHP( ���� ã�� ���ΰ�?, ���ؾ���, �ּҰŸ�, �ִ�Ÿ�, ���̴� ������ ã�����ΰ�?, �κ������ ���� ã�� ���ΰ�? );
GetPositionActor( ���� );				-- ������ ��ġ�� ��ȯ�Ѵ�.
GetDirection2To1( ����1, ����2 );		-- ����2���� ����1�� ������ ��ȯ�Ѵ�.
GetDistBySafeArea( ����, ����̸� );	-- ���̽��� ������ �Ÿ��� ��ȯ�Ѵ�.
GetSafeAreaPos( ����̸� );				-- ���̽��� ��ġ�� ��ȯ�Ѵ�.
GetDirection2To1Rand( ����1, ����2, ����width, ����height, ���콺��:���� ���� ����� ������ );	-- ����2���� ����1�� ������ ��ȯ�� �� ��������ŭ�� �����ؼ� ��ȯ�Ѵ�.
GetAreaPos( ����̸� );					-- �ش� ����� ��ġ�� ��ȯ�Ѵ�.
IsSafeZoneEnable( ����̸� );			-- ���̽��� Ȱ��ȭ �Ǿ� �ִ°�? true/false
IsInSafeArea( ����̸�, ���� );			-- ���Ͱ� ���̽��� ���� �ִ°�? true/false

]]---------------------------------------------------------------

--[[-------------------------------------------------------------
���� ��ũ��Ʈ���� ��밡���� �Լ� : ���� Ŭ������ ������� �ʴ� �Լ�
-----------------------------------------------------------------
-- Ŀ�ǵ����
CreateMoveToCommand( u32 uiGameTime, common::SActorID actorID, BaseLib::SVector3& vStartPos, BaseLib::SVector3& vEndPos, float fMoveSpeedMultiplier = 1.f );
CreateRemoveCommand( u32 uiGameTime, common::SActorID actorID, BaseLib::SVector3& vPos, s32 iRemoveType );
CreateAttackCommand( u32 uiGameTime, common::SActorID actorID, s32 iAttackIndex, BaseLib::SVector3& vPos, BaseLib::SVector3& vDir );
CreateStealthCommand( u32 uiGameTime, common::SActorID actorID, bool isOn );
CreatePreFastRunCommand( u32 uiGameTime, common::SActorID actorID );
CreateFastRunCommand( u32 uiGameTime, common::SActorID actorID, u32 uiDurationTime );
CreateMoveAttackCommand( u32 uiGameTime, common::SActorID actorID, u32 uiDurationTime );
CreateSelfBombCommand( u32 uiGameTime, common::SActorID actorID, u32 uiBombTime );
CreateAccumDamageCancel( u32 uiDurationTime, float fAccumDamage );

-- ���°���
CreateAttackState( ����, ����ID, �������ӽð� );
CreatePreFastRunState( ����, ����ID, �������ӽð� );
CreateFastRunState( ����, ����ID, �������ӽð� );
CreateMoveAttackState( ����, ����ID, �������ӽð� );
CreateDeathBombState( ����, ����ID, �������ӽð� );

-- ���ݰ���
���� ��ũ��Ʈ ����.( Weapon_Airgun.lua �� )

]]----------------------------------------------------------------

--[[-------------------------------------------------------------
���� ��ũ��Ʈ���� ��밡���� �Լ� : state Ŭ������ ����ϴ� �Լ�.( state:function() �������� ����ؾ� ��. )
-----------------------------------------------------------------
-- MonsterState
SetID( ����ID );
AddSequence( ȿ���ð�����, ȿ�����ϳ��, ȿ�����Ͻ�Ʈ�� );
SetMoveBoxMultiplier( ����ڽ� �̵� ���� );											-- 1 �̸� ����ӵ�
SetSuperArmor( �ش���°� ���۾ƸӰ� �Ǵ°�? );										-- true/false
SetAnimationSpeed( �ִϸ��̼� ����ӵ� ���� );										-- 
SetNextStateID( ����Ű��, ����ID );													-- �� ���¿��� �̵� ������ ���¸� �߰�
IsCreateNewCommand();																-- �� ���¿��� Ŀ�ǵ带 �߰� �����Ѱ�?
SetCreateNewCommand( ���� ���¿��� ���ο� Ŀ�ǵ� ������ �����ϰ� �ϰڴ°�? );		-- true/false
SetAnimtionBlend( �ִϸ��̼� ��Ʈ��, bool bBlend, u32 uiBlendTime, u32 uiRecoveryTime, bool bLoop, bool bReset );
SetDestSaturationColor( u32 uiTime, float fSaturation, float fR, float fG, float fB );
SetDurationTime( ���� ���� �ð� );													-- ���� ���� ���� �ð� ���Ŀ� ������ �ٸ� ���·� �Ѿ��.
IsOnlyToGoal();																		-- ���� ���°� ������ ���̽��� ���ϴ°�? true/false ��ȯ
SetOnlyToGoal( ������ ���̽��� ���ϴ°�? );											-- true/false
SetCancel( �ش� ���¸� ĵ�� �� �� �ִ� Ŭ���� );									-- ŷ ���� �Ͽ� �۾���.
ChangeMonsterState( ����ID );													-- �ش� ���·� ����

-- AttackMonsterState, MonsterState���� ���� �Լ��� ���� ��� ����
Create();																			-- ���»���
AddAttack( ���� );																	-- ���� ���¿� ������ �߰�
SetUpdatePosDir( ������ ��ġ�� ������ ���ݿ� ����� ���ΰ�?  );					-- true/false

-- BlowMonsterState, MonsterState���� ���� �Լ��� ���� ��� ����

-- DamageMonsterState, MonsterState���� ���� �Լ��� ���� ��� ����

-- DeathBombMonsterState, MonsterState���� ���� �Լ��� ���� ��� ����
Create();																			-- ���»���
AddAttack( ���� );																	-- ���� ���¿� ������ �߰�
SetUpdatePosDir( ������ ��ġ�� ������ ���ݿ� ����� ���ΰ�?  );					-- true/false

-- DeathMonsterState, MonsterState���� ���� �Լ��� ���� ��� ����

-- FastRunMonsterState, MonsterState���� ���� �Լ��� ���� ��� ����
SetMoveSpeedMultiplier( �̵� �ӵ� ���� );											-- ���� ���¿��� �⺻ �̵� �ӵ��� �������� ����

-- MoveAttackMonsterState, MonsterState���� ���� �Լ��� ���� ��� ����
SetMoveSpeedMultiplier( �̵� �ӵ� ���� );											-- ���� ���¿��� �⺻ �̵� �ӵ��� �������� ����
AddAttack( ���� );																	-- ���� ���¿� ������ �߰�

-- NormalMonsterState, MonsterState���� ���� �Լ��� ���� ��� ����

-- PreFastRunMonsterState, MonsterState���� ���� �Լ��� ���� ��� ����

-- RunMonsterState, MonsterState���� ���� �Լ��� ���� ��� ����

--]]-------------------------------------------------------------

--[[--------------------------------------------------------------
���� ��ũ��Ʈ���� ��밡���� �Լ� : ���� Ŭ������ ����ϴ� �Լ�
------------------------------------------------------------------
monster:SetWaitTime							( �ð� );																-- �ش� �ð� ��ŭ ��ũ��Ʈ�� ȣ�� ���� �ʴ´�. 1��=1000
monster:FindPath							( BaseLib::SVector3* pOutVec3, const BaseLib::SVector3& vEndPos );		-- �����( ����� ��� ���� ), ���� ��ǥ
monster:AddAttack							( ���°�, ���� ); 														-- 
monster:UpdateHost							( deltaTime );															-- ��Ÿ�ð�
monster:GetGoalPosition						(); 																	-- ������ �̵� ��ǥ����, return const BaseLib::SVector3& 
monster:GetID								(); 																	-- ������ ID                  
monster:GetPosition							(); 																	-- ������ġ            
monster:SetMoveType							( �̵�Ÿ�� ); 															-- MONMOVE_WAYPOINT, MONMOVE_ACTOR            
monster:SetTargetActorID					( Ÿ���� ID ); 															--        
monster:AddState							( �߰� ����ID, ���� ); 													-- 
monster:GetMonsterState						( ������ ������ ID ); 													-- ���°� ���� ��쿣 ���°��� ���� ��쿣 null�� ����      
monster:CreateDefenseAura					( üũ�ð�, ȿ������, ����������, ȿ�����Ͻ�Ʈ�� );      
monster:SetCanSufferDefenseAura				( ���潺������� ������ ���� );											-- true/false
monster:CreateStealth						(); 																	-- ���ڽ� ��� ����
monster:IsStealthOn							(); 																	-- ���� ���ڽ� ����� Ȱ��ȭ �Ǿ� �ִ°�? true/false
monster:GetLastAttackStateID				(); 																	-- ������ ���� ���� ID�� ��ȯ�Ѵ�.
monster:SetLastAttackStateID				( ������ ���� ���� ID );
monster:GetRandom							( ������ġ���� ); 														-- 0~��ġ�����߿��� ������ ���� ��ȯ��.
monster:GetAccumTime						();																		-- ������ ���Ŀ� �����ð��� ��ȯ��.
monster:ResetAccumTime						(); 																	-- ���� �ð� �ʱ�ȭ
monster:GetPower							(); 																	-- ���ݷ��� ��ȯ��.
monster:SetMoveSpeedMultiplier				( �̵��ӵ������� ); 													-- �����̵��ӵ� = �̵��ӵ� ���� �� * �⺻�̵��ӵ�
monster:IsRateOfFire						( �����ε��� );															-- MONSTATE_ATTACK_0, MONSTATE_ATTACK_1, MONSTATE_ATTACK_2 �� ����, ���� ���� �� �ΰ�. true/false
monster:ResetRateOfFire						( �����ε���, �ʱ�ȭ�ð� ); 											-- ( MONSTATE_ATTACK_0, MONSTATE_ATTACK_1, MONSTATE_ATTACK_2 ), �⺻���� 0
monster:GetRateOfFire						( �����ε��� ); 														-- MONSTATE_ATTACK_0, MONSTATE_ATTACK_1, MONSTATE_ATTACK_2 �� ����, �ش� ������ �ð��� ��ȯ��.
monster:GetRakeMoveSpeedRate				();																		-- ������ �Ѿư��� �ӵ� ����
monster:GetEscapeMoveSpeedRate				(); 																	-- ������ ���� �޾Ƴ��� �ӵ� ����
monster:IsCreateNewCommand					(); 																	-- ���� ���¿��� Ŀ�ǵ带 ���� �� �ִ°�? true/false
monster:IsOnlyToGoal						(); 																	-- ���̽��� ���ؼ� ���°�? true/false
monster:IsProbOn							( Ȯ���� ); 															-- 0 ~ 100, �ش� Ȯ�� �ȿ��� true/false
monster:CreateTimerBomb						( Ÿ�̸�����Ʈ��Ʈ��, ����Ʈ�� ���� ��� �̸� ); 						-- AddTimerBombAttack �� �̿����� ������ ���� ���θ� �״´�.
monster:AddTimerBombAttack					( ���� ); 																-- �ð���ź�� ������ �߰��Ѵ�.
monster:GetTargetActor						();																		-- ���� Ÿ�� ������ ��ȯ��.
monster:GetArg								();																		-- ��ũ��Ʈ �󿡼� �����Ӱ� ����ϱ����� ����( ���� ���� ������ ���� ), ��� ���� �Լ����� �Ʒ� ����.
monster:ChangeMonsterState			( ������ ������ ID ); 													-- ���°� ���� ��쿣 ���°��� ���� ��쿣 null�� ����      
]]----------------------------------------------------------------

--[[--------------------------------------------------------------
���α׷����� monster:GetArg() �� �־��ִ� ����
------------------------------------------------------------------
monster:GetArg():GetLStr( "SpawnBase" );				-- ������ �������� �̸��� ��ȯ��.
monster:GetArg():GetLU32( "MainPattern" );				-- ������ ���������� ��ȯ��. monster_status.xml ����
monster:GetArg():GetLStr( "NameKey" );					-- ������ �̸��� Ű���� ��ȯ��. monster_status.xml ����
monster:GetArg():GetLStr( "GroupKey" );					-- ������ �׷� Ű���� ��ȯ��. monster_status.xml ����
monster:GetArg():GetLStr( "MonsterKey" );				-- ������ Ű���� ��ȯ��. monster_status.xml ����
--]]--------------------------------------------------------------

--[[--------------------------------------------------------------
monster:GetArg() ���� ����� �� �ִ� �Լ���
------------------------------------------------------------------
-- Get �Լ��� ���� ��������.
bool	GetLBool			( Ű ���ڿ� )				
u8		GetLU8				( Ű ���ڿ� )				
u16		GetLU16				( Ű ���ڿ� )				
u32		GetLU32				( Ű ���ڿ� )				
float	GetLFloat			( Ű ���ڿ� )				
cchar *	GetLStr				( Ű ���ڿ� )				
void *	GetLVoid			( Ű ���ڿ� )				

-- Set �Լ��� ���� �����ϱ�.
void 	SetLBool			( Ű ���ڿ�, bool sData )	
void 	SetLU8				( Ű ���ڿ�, u8 sData )		
void 	SetLU16				( Ű ���ڿ�, u16 sData )		
void 	SetLU32				( Ű ���ڿ�, u32 sData )		
void 	SetLFloat			( Ű ���ڿ�, float sData )	
void 	SetLStr				( Ű ���ڿ�, char * pData )	
void 	SetLVoid			( Ű ���ڿ�, void * pData )	

-- Push ���� ���۸� �����( ���� �����ϰ� Set, Get�� �� �� ���� )
u32 	PushLBool			( Ű ���ڿ�, bool sData )	
u32 	PushLU8				( Ű ���ڿ�, u8 sData )		
u32 	PushLU16			( Ű ���ڿ�, u16 sData )		
u32 	PushLU32			( Ű ���ڿ�, u32 sData )		
u32 	PushLFloat			( Ű ���ڿ�, float sData )	
u32 	PushLStr			( Ű ���ڿ�, char * pData )	
u32 	PushLVoid			( Ű ���ڿ�, void * pData )	
]]----------------------------------------------------------------