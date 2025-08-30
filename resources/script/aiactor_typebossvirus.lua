require "Resources/Script/AIDef.lua"
require "Resources/Script/AIActor_Common.lua"


function TypeBossVirus_Init()

	TEAM_ALPHA	= 1;
	TEAM_BETA	= 2;

	AIActor:SetTeamByID( TEAM_BETA );
	AIActor:SetBaseMoveSpeedMax( 1400.0 );
	AIActor:SetBaseHP( 12000 );
	AIActor:SetOrigBoundHeight( 1200 );
	AIActor:SetOrigBoundWidth( 500 );
	AIActor:SetScale( 1.0, 1.0, 1.0 );
	AIActor:SetSceneFileName( "Resources/Model/Monster/boss_bip.scn" );
   AIActor:RegisterDamageSound( "Resources/Sound/Acade/bossvirus_damage.ogg" );
	AIActor:SetUsingLowerPart( false );
	AIActor:SetBoundingVolume( 1000.0 );
	
	-- 넉백여부 디폴트 true
	AIActor:SetEnablePushEffect( false );
	
	-- 바인드 방지
	AIActor:SetApplyBind( false );
	
	AIActor:SetAlwaysShowHPBar( true );
	AIActor:SetShowHPBar( true );
	AIActor:SetTimeToSeeingHPBar( 1500 );
	AIActor:SetTimeToFadeOutHPBar( 1000 );
	AIActor:Bind_SetAvailable( true );

	AIActor:SetAiActorHpRate( 0.75 );
	AIActor:SetAiActorNamed( true );
	
end


function TypeBossVirus_CostumeSetting()
	
end

	
function TypeBossVirus_WeaponSetting()

end


function TypeBossVirus_AIActorSetting()
	
	TypeBossVirus_AddDeathAIActorState				();
	TypeBossVirus_AddNormalAIActorState				();
	TypeBossVirus_AddRunAIActorState				();
	TypeBossVirus_AddDamageAIActorState				();
--	TypeBossVirus_AddStunAIActorState				();
--	TypeBossVirus_AddCounterAttackDamage			();
	Common_AddIdleState								();
	TypeBossVirus_AddLeftKnuckleAttackAIActorState	();
	TypeBossVirus_AddRightKnuckleAttackAIActorState	();
	TypeBossVirus_AddSmokeAttackAIActorState		();
	TypeBossVirus_AddExplosionAttackAIActorState	();
	TypeBossVirus_AddStunAttackAIActorState			();
	TypeBossVirus_AddSummonAIActorState				();
	TypeBossVirus_AddSummon2AIActorState			();
		
	AIActor:ChangeAIActorState( AASTATE_NORMAL );
		
end



function TypeBossVirus_AddNormalAIActorState()

	local state = StateFactory:GetNormalAIActorState();

	AIActor:AddAIActorState( AASTATE_NORMAL, state );

	state:SetNextStateID( AAINPUT_RUN, AASTATE_RUN );
	state:SetNextStateID( AAINPUT_JUMP, AASTATE_JUMP );
	state:SetNextStateID( AAINPUT_FALL, AASTATE_FALL );
	state:SetNextStateID( AAINPUT_BLOW, AASTATE_BLOW );
	state:SetNextStateID( AAINPUT_DAMAGE, AASTATE_DAMAGE );
	state:SetNextStateID( AAINPUT_COUNTERATTACK_DAMAGE, AASTATE_COUNTERATTACK_DAMAGE );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );
	state:SetNextStateID( AAINPUT_ATTACK1, AASTATE_ATTACK1 );
	state:SetNextStateID( AAINPUT_ATTACK2, AASTATE_ATTACK2 );
	state:SetNextStateID( AAINPUT_ATTACK3, AASTATE_ATTACK3 );
	state:SetNextStateID( AAINPUT_ATTACK4, AASTATE_ATTACK4 );
	state:SetNextStateID( AAINPUT_ATTACK5, AASTATE_ATTACK5 );
	state:SetNextStateID( AAINPUT_ATTACK6, AASTATE_ATTACK6 );
	state:SetNextStateID( AAINPUT_ATTACK7, AASTATE_ATTACK7 );
	state:SetNextStateID( AAINPUT_STUN, AASTATE_STUN );

	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MM012", 0, 1000, 0, true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );

end

function TypeBossVirus_AddRunAIActorState()

	local state = StateFactory:GetBossVirusRunAIActorState();

	AIActor:AddAIActorState( AASTATE_RUN, state );

	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_JUMP, AASTATE_JUMP );
	state:SetNextStateID( AAINPUT_FALL, AASTATE_FALL );
	state:SetNextStateID( AAINPUT_BLOW, AASTATE_BLOW );
	state:SetNextStateID( AAINPUT_DAMAGE, AASTATE_DAMAGE );
	state:SetNextStateID( AAINPUT_COUNTERATTACK_DAMAGE, AASTATE_COUNTERATTACK_DAMAGE );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );
	state:SetNextStateID( AAINPUT_ATTACK1, AASTATE_ATTACK1 );
	state:SetNextStateID( AAINPUT_ATTACK2, AASTATE_ATTACK2 );
	state:SetNextStateID( AAINPUT_ATTACK3, AASTATE_ATTACK3 );
	state:SetNextStateID( AAINPUT_ATTACK4, AASTATE_ATTACK4 );
	state:SetNextStateID( AAINPUT_ATTACK5, AASTATE_ATTACK5 );
	state:SetNextStateID( AAINPUT_ATTACK6, AASTATE_ATTACK6 );
	state:SetNextStateID( AAINPUT_ATTACK7, AASTATE_ATTACK7 );
	state:SetNextStateID( AAINPUT_STUN, AASTATE_STUN );

	local index = 0;
	ANIMPARAMLIST_UPPER_FRONT					= index; index = index + 1;	
	ANIMPARAMLIST_UPPER_LEFT_FRONT				= index; index = index + 1;	
	ANIMPARAMLIST_UPPER_LEFT					= index; index = index + 1;	
	ANIMPARAMLIST_UPPER_LEFT_BACK				= index; index = index + 1;	
	ANIMPARAMLIST_UPPER_RIGHT_FRONT				= index; index = index + 1;	
	ANIMPARAMLIST_UPPER_RIGHT					= index; index = index + 1;	
	ANIMPARAMLIST_UPPER_RIGHT_BACK				= index; index = index + 1;	
	ANIMPARAMLIST_UPPER_BACK					= index; index = index + 1;	
	ANIMPARAMLIST_LOWER_FRONT					= index; index = index + 1;	
	ANIMPARAMLIST_LOWER_LEFT_FRONT				= index; index = index + 1;	
	ANIMPARAMLIST_LOWER_LEFT					= index; index = index + 1;	
	ANIMPARAMLIST_LOWER_LEFT_BACK				= index; index = index + 1;	
	ANIMPARAMLIST_LOWER_RIGHT_FRONT				= index; index = index + 1;	
	ANIMPARAMLIST_LOWER_RIGHT					= index; index = index + 1;	
	ANIMPARAMLIST_LOWER_RIGHT_BACK				= index; index = index + 1;	
	ANIMPARAMLIST_LOWER_BACK					= index; index = index + 1;	
	ANIMPARAMLIST_COMMON						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MM005", 0, 1000, 0, true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_COMMON, animParam );

end


function TypeBossVirus_AddDamageAIActorState()

	local state = StateFactory:GetDamageAIActorState();

	AIActor:AddAIActorState( AASTATE_DAMAGE, state );

	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_DAMAGE, AASTATE_DAMAGE );
	state:SetNextStateID( AAINPUT_COUNTERATTACK_DAMAGE, AASTATE_COUNTERATTACK_DAMAGE );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );
	state:SetNextStateID( AAINPUT_ATTACK1, AASTATE_ATTACK1 );
	state:SetNextStateID( AAINPUT_ATTACK2, AASTATE_ATTACK2 );
	state:SetNextStateID( AAINPUT_ATTACK3, AASTATE_ATTACK3 );
	state:SetNextStateID( AAINPUT_ATTACK4, AASTATE_ATTACK4 );
	state:SetNextStateID( AAINPUT_ATTACK5, AASTATE_ATTACK5 );
	state:SetNextStateID( AAINPUT_ATTACK6, AASTATE_ATTACK6 );
	state:SetNextStateID( AAINPUT_ATTACK7, AASTATE_ATTACK7 );
	state:SetNextStateID( AAINPUT_STUN, AASTATE_STUN );


	local index = 0;
	ANIMPARAMLIST_FRONT							= index; index = index + 1;	
	ANIMPARAMLIST_BACK							= index; index = index + 1;	
	ANIMPARAMLIST_LEFT							= index; index = index + 1;	
	ANIMPARAMLIST_RIGHT							= index; index = index + 1;	
	ANIMPARAMLIST_FRONT_WEAK					= index; index = index + 1;	
	ANIMPARAMLIST_BACK_WEAK						= index; index = index + 1;	
	ANIMPARAMLIST_LEFT_WEAK						= index; index = index + 1;	
	ANIMPARAMLIST_RIGHT_WEAK					= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MM004", 0, 0, 0, true, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_FRONT, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_BACK, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_LEFT, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_RIGHT, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_FRONT_WEAK, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_BACK_WEAK, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_LEFT_WEAK, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_RIGHT_WEAK, animParam );

end

-- 왼손공격
function	TypeBossVirus_AddLeftKnuckleAttackAIActorState()

	local state = StateFactory:GetAttackAIActorState();
	
	AIActor:AddAIActorState( AASTATE_ATTACK1, state );
	
	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );

	state:InitAttackAIActorState( 1500, 0, false, false, 0.0, true );
	StateFactory:AddBossVirus_LeftKnuckleAttacks( state, 600, 25.0, 1200.0 );
	state:RegisterSound( "Resources/Sound/Acade/bossvirus_leftattack.ogg", "Bip01", 0, 2500.0 );


	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MM001", 0, 200, 500, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );
	
end

-- 오른손 공격
function	TypeBossVirus_AddRightKnuckleAttackAIActorState()

	local state = StateFactory:GetAttackAIActorState();

	AIActor:AddAIActorState( AASTATE_ATTACK2, state );
	
	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );

	state:InitAttackAIActorState( 1500, 0, false, false, 0.0, true );
	StateFactory:AddBossVirus_RightKnuckleAttacks( state, 600, 30.0, 1200.0 );
	state:RegisterSound( "Resources/Sound/Acade/bossvirus_rightattack.ogg", "Bip01", 0, 2500.0 );


	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MM002", 0, 200, 500, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );
	
end

-- 연기공격
function	TypeBossVirus_AddSmokeAttackAIActorState()

	local state = StateFactory:GetAttackAIActorState();

	AIActor:AddAIActorState( AASTATE_ATTACK3, state );
	
	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );

	-- 카메라 흔들림 효과 설정
	state:EnableCameraShake( true, true, 3300 );
	state:SetCameraShakeFactor1( 700, 0, 7 );
	state:SetCameraShakeFactor2( 1.3, 1.7, 3000, 8000 );
	
	state:InitAttackAIActorState( 5000, 0, false, false, 0.0, true );
	StateFactory:AddBossVirus_SmokeAttacks( state, 3500, 20.0, 8000.0 );

	state:RegisterSequence( 1, "Resources/Effects/pve_boss_att04.seq", "", 1, 0 );
	state:RegisterSound( "Resources/Sound/Acade/bossvirus_smokeattack.ogg", "Bip01", 0, 2500.0 );

	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MM008", 0, 200, 500, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );
	
end

-- 끌어당긴 후 폭파
function	TypeBossVirus_AddExplosionAttackAIActorState()

	local state = StateFactory:GetBossVirusExplosionAttackAIActorState();

	AIActor:AddAIActorState( AASTATE_ATTACK4, state );
	
	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );

	state:InitAttackAIActorState( 4500, 0, false, false, 0.0, true );

	state:RegisterSequence( 1, "Resources/Effects/pve_boss_att03.seq", "", 1, 0 );
	state:RegisterSound( "Resources/Sound/Acade/bossvirus_boom.ogg", "Bip01", 0, 2500.0 );
	
	-- 카메라 흔들림 효과 설정
	state:EnableCameraShake( true, true, 0 );
	state:SetCameraShakeFactor1( 3400, 0, 10 );
	state:SetCameraShakeFactor2( 1.7, 2.3, 3000, 10000 );
	
	--state:SetAttractiveData( 시작시간, 끝시간( 해당 스테이트의 시간보다 작아야한다 ), 끌어당길힘, 최소거리, 최대거리 );( 최소거리와 최대거리 사이에 있는 플레이어를 끌어당긴다. )
	state:SetAttractiveData( 500, 2500, 2300.0, 0.0, 10000.0 );
	--StateFactory:AddBossVirus_ExplosionAttacks( state, 3200, 70.0, 3000.0 );
	StateFactory:AddBossVirus_ExplosionAttacks( state, 3200, 60.0, 2800 );


	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MM009", 0, 200, 500, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );
	
end


-- 5연타 공격
function	TypeBossVirus_AddStunAttackAIActorState()

	local state = StateFactory:GetAttackAIActorState();

	AIActor:AddAIActorState( AASTATE_ATTACK5, state );
	
	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );

	state:InitAttackAIActorState( 4000, 0, false, false, 0.0, true );
	StateFactory:AddBossVirus_StunAttacks( state, 500, 20.0, 1000.0 );
	StateFactory:AddBossVirus_StunAttacks( state, 1100, 20.0, 1000.0 );
	StateFactory:AddBossVirus_StunAttacks( state, 1800, 20.0, 1000.0 );
	StateFactory:AddBossVirus_StunAttacks( state, 2400, 20.0, 1000.0 );
	StateFactory:AddBossVirus_StunAttacks( state, 3100, 20.0, 1000.0 );
	state:RegisterSound( "Resources/Sound/Acade/bossvirus_comboattack.ogg", "Bip01", 0, 2500.0 );


	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MM010", 0, 200, 500, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );

end

-- 자코 소환
function	TypeBossVirus_AddSummonAIActorState()

	local state = StateFactory:GetBossVirusSummonAIActorState();

	AIActor:AddAIActorState( AASTATE_ATTACK6, state );
	
	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );
	state:RegisterSound( "Resources/Sound/Acade/bossvirus_ summons.ogg", "Bip01", 0, 2500.0 );
	
	state:Init( 2000 );
	--state:RegisterSequence( 1, "Resources/Effects/stun.seq", "Resources/Sound/rc_voice_man_dead_normal.ogg", 1, 0 );
	
	--state:AddSummonData( 소환시간( 해당 스테이트의 시간보다 작아야한다 ), AIType, ActorType, 스폰될 노드 이름( 이름을 넣지 않으면 보스의 위치에서 스폰 ) );
	state:AddSummonData( 1000, "INFECTED_HEALER", "TypeVirusHelper", "" );
	state:AddSummonData( 1000, "INFECTED_HEALER", "TypeVirusHelper", "" );
	state:AddSummonData( 1000, "INFECTED_HEALER", "TypeVirusHelper", "" );
	

	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MM006", 0, 200, 500, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );

end

-- 자코 소환2
function	TypeBossVirus_AddSummon2AIActorState()

	local state = StateFactory:GetBossVirusSummonAIActorState();

	AIActor:AddAIActorState( AASTATE_ATTACK7, state );
	
	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );
	state:RegisterSound( "Resources/Sound/Acade/bossvirus_ summons.ogg", "Bip01", 0, 2500.0 );
	
	state:Init( 2000 );
	--state:RegisterSequence( 1, "Resources/Effects/stun.seq", "Resources/Sound/rc_voice_man_dead_normal.ogg", 1, 0 );
	
	--state:AddSummonData( 소환시간( 해당 스테이트의 시간보다 작아야한다 ), AIType, ActorType, 스폰될 노드 이름( 이름을 넣지 않으면 보스의 위치에서 스폰 ) );
	state:AddSummonData( 1000, "VIRUS", "TypeVirus", "" );
	state:AddSummonData( 1000, "VIRUS", "TypeVirus", "" );
	state:AddSummonData( 1000, "VIRUS", "TypeVirus", "" );
	state:AddSummonData( 1000, "VIRUS", "TypeVirus", "" );
	state:AddSummonData( 1000, "VIRUS", "TypeVirus", "" );
	state:AddSummonData( 1000, "VIRUS", "TypeVirus", "" );
	state:AddSummonData( 1000, "VIRUS", "TypeVirus", "" );
	state:AddSummonData( 1000, "VIRUS", "TypeVirus", "" );
	state:AddSummonData( 1000, "VIRUS", "TypeVirus", "" );
	state:AddSummonData( 1000, "VIRUS", "TypeVirus", "" );
	state:AddSummonData( 1000, "VIRUS", "TypeVirus", "" );
	state:AddSummonData( 1000, "VIRUS", "TypeVirus", "" );
	
	

	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MM006", 0, 200, 500, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );

end
	
function TypeBossVirus_AddDeathAIActorState()

	local state = StateFactory:GetDeathAIActorState();

	AIActor:AddAIActorState( AASTATE_DEATH, state );

	local index = 0;
	DEATH_NULL							= index; index = index + 1;	
	DEATH_NORMAL_WEAK					= index; index = index + 1;	
	DEATH_NORMAL_STRONG					= index; index = index + 1;	
	DEATH_BLOW							= index; index = index + 1;	
	DEATH_BOUNDBLOW						= index; index = index + 1;	
	--[[
	state:RegisterSoundFileName( DEATH_NULL				, "Resources/Sound/rc_voice_man_dead_normal.ogg" );
	state:RegisterSoundFileName( DEATH_NORMAL_WEAK		, "Resources/Sound/rc_voice_man_dead_normal.ogg" );
	state:RegisterSoundFileName( DEATH_NORMAL_STRONG	, "Resources/Sound/rc_voice_man_dead_hard.ogg" );
	state:RegisterSoundFileName( DEATH_BLOW				, "Resources/Sound/rc_voice_man_dead_blow.ogg" );
	state:RegisterSoundFileName( DEATH_BOUNDBLOW		, "Resources/Sound/rc_voice_man_dead_shock.ogg" );
	--]]

	local index = 0;
	ANIMPARAMLIST_FALLDOWN_NORMAL_WEAK			= index; index = index + 1;	
	ANIMPARAMLIST_FALLDOWN_NORMAL_STRONG		= index; index = index + 1;	
	ANIMPARAMLIST_FALLDOWN_BLOW					= index; index = index + 1;	
	ANIMPARAMLIST_FALLDOWN_BOUNDBLOW			= index; index = index + 1;	
	ANIMPARAMLIST_LIEDOWN_BOUNDBLOW				= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MM003", 0, 0, 0, false, 1.3, true );
	state:RegisterAnimParam( ANIMPARAMLIST_FALLDOWN_NORMAL_WEAK, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_FALLDOWN_NORMAL_STRONG, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_FALLDOWN_BLOW, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_FALLDOWN_BOUNDBLOW, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_LIEDOWN_BOUNDBLOW, animParam );
   state:RegisterSound( "Resources/Sound/Acade/bossvirus_death.ogg", "Bip01", 0, 2500.0 );
   
end

function TypeBossVirus_AddStunAIActorState()

	local state = StateFactory:GetStunAIActorState();

	state:InitStunAIActorState( 0 );
	state:RegisterSequence( 1, "Resources/Effects/stun.seq", "Resources/Sound/stun.ogg", 1, 2500 );
   state:RegisterSound( "Resources/Sound/Acade/bossvirus_stun.ogg", "Bip01", 0, 2500.0 );
	AIActor:AddAIActorState( AASTATE_STUN, state );
	
	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_STUN, AASTATE_STUN );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );

	local index = 0;
	ANIMPARAMLIST_PRECEDING						= index; index = index + 1;	
	ANIMPARAMLIST_STUN							= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MM004", 0, 0, 0, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_PRECEDING, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MM011", 0, 1000, 0, true, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_STUN, animParam );
	
end

function TypeBossVirus_AddCounterAttackDamage()

	local state = StateFactory:GetStunAIActorState();

	state:InitStunAIActorState( 700 );
	state:RegisterSequence( 1, "Resources/Effects/stun.seq", "Resources/Sound/stun.ogg", 1, 2500 );

	AIActor:AddAIActorState( AASTATE_COUNTERATTACK_DAMAGE, state );
	
	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_STUN, AASTATE_STUN );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );

	local index = 0;
	ANIMPARAMLIST_PRECEDING						= index; index = index + 1;	
	ANIMPARAMLIST_STUN							= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MM004", 0, 0, 0, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_PRECEDING, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MM011", 0, 1000, 0, true, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_STUN, animParam );
	
end