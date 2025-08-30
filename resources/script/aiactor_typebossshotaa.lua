require "Resources/Script/AIDef.lua"
require "Resources/Script/AIActor_Common.lua"


function TypeBossShotaA_Init()

	TEAM_ALPHA	= 1;
	TEAM_BETA	= 2;

	AIActor:SetTeamByID( TEAM_ALPHA );
	AIActor:SetBaseMoveSpeedMax( 1200.0 );
	AIActor:SetBaseHP( 3200 );
	AIActor:SetOrigBoundWidth( 800 );
	AIActor:SetOrigBoundHeight( 800 );
	AIActor:SetScale( 1.0, 1.0, 1.0 );
	AIActor:SetSceneFileName( "Resources/Model/Monster/pam_bip.scn" );
	AIActor:RegisterDamageSound( "Resources/Sound/Acade/pam_damage.ogg" );
	AIActor:SetUsingLowerPart( false );
	AIActor:SetBoundingVolume( 1000.0 );
	AIActor:SetEnablePushEffect( false );
	
	-- 바인드 방지
	AIActor:SetApplyBind( false );

	AIActor:SetShowHPBar( true );
	AIActor:SetTimeToSeeingHPBar( 1500 );
	AIActor:SetTimeToFadeOutHPBar( 1000 );
	AIActor:Bind_SetAvailable( false );
	
end


function TypeBossShotaA_CostumeSetting()
	
end

	
function TypeBossShotaA_WeaponSetting()

end


function TypeBossShotaA_AIActorSetting()
	
	TypeBossShotaA_AddDeathAIActorState				();
	TypeBossShotaA_AddNormalAIActorState				();
	TypeBossShotaA_AddRunAIActorState				();
	TypeBossShotaA_AddDamageAIActorState				();
--	TypeBossShotaA_AddStunAIActorState				();
--	TypeBossShotaA_AddCounterAttackDamage			();
	Common_AddIdleState								();
	TypeBossShotaA_AddLeftKnuckleAttackAIActorState	();
	TypeBossShotaA_AddRightKnuckleAttackAIActorState	();
	TypeBossShotaA_AddAssaultAttackAIActorState		();
	TypeBossShotaA_AddLaserAttackAIActorState		();
		
	AIActor:ChangeAIActorState( AASTATE_NORMAL );
		
end



function TypeBossShotaA_AddNormalAIActorState()

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
	state:SetNextStateID( AAINPUT_STUN, AASTATE_STUN );

	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MB005", 0, 1000, 0, true, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );

end


function TypeBossShotaA_AddRunAIActorState()

	local state = StateFactory:GetRunAIActorState();

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
	animParam:SetAnim( "MB006", 0,	1000, 0, true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_COMMON, animParam );

end


function TypeBossShotaA_AddDamageAIActorState()

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
	state:SetNextStateID( AAINPUT_STUN, AASTATE_STUN );
	--state:RegisterSound( "Resources/Sound/Acade/fam_damage.ogg", "Bip01", 0, 5000 );


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
	animParam:SetAnim( "MB004", 0, 0, 0, true, 1.0, true );
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
function	TypeBossShotaA_AddLeftKnuckleAttackAIActorState()

	local state = StateFactory:GetAttackAIActorState();

	AIActor:AddAIActorState( AASTATE_ATTACK1, state );
	
	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );

	state:InitAttackAIActorState( 1300, 0, false, false, 0.0, true );
	
	StateFactory:AddBossShota_LeftKnuckleAttacks( state, 300, 20.0, 1000.0 );
	state:RegisterSound( "Resources/Sound/Acade/pam_leftattack.ogg", "Bip01", 0, 5000 );
	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MB001", 0, 200, 500, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );
	
end

-- 오른손공격
function	TypeBossShotaA_AddRightKnuckleAttackAIActorState()

	local state = StateFactory:GetAttackAIActorState();

	AIActor:AddAIActorState( AASTATE_ATTACK2, state );
	
	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );

	state:InitAttackAIActorState( 1300, 0, false, false, 0.0, true );
	
	StateFactory:AddBossShota_RightKnuckleAttacks( state, 300, 25.0, 1000.0 );
	state:RegisterSound( "Resources/Sound/Acade/pam_rightattack.ogg", "Bip01", 0, 5000 );

	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MB002", 0, 200, 500, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );
	
end


-- 돌진
function	TypeBossShotaA_AddAssaultAttackAIActorState()

	local state = StateFactory:GetAttackAIActorState();

	AIActor:AddAIActorState( AASTATE_ATTACK3, state );
	
	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );

	state:InitAttackAIActorState( 3600, 0, false, false, 1.0, true );
	state:RegisterSequence( 1, "", "Resources/Sound/sword_stance.ogg", 2500, 10000 );
	StateFactory:AddBossShota_AssaultAttacks( state, 1800, 10.0, 1500.0, false );
	StateFactory:AddBossShota_AssaultAttacks( state, 2000, 10.0, 1500.0, false );
	StateFactory:AddBossShota_AssaultAttacks( state, 2300, 10.0, 1500.0, false );	
	StateFactory:AddBossShota_AssaultAttacks( state, 2600, 10.0, 1500.0, false );
	StateFactory:AddBossShota_AssaultAttacks( state, 2900, 10.0, 1500.0, true );

	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MB007", 0, 200, 500, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );
	
end

-- 레이져
function	TypeBossShotaA_AddLaserAttackAIActorState()

	local state = StateFactory:GetAttackAIActorState();

	AIActor:AddAIActorState( AASTATE_ATTACK4, state );
	
	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );

	state:InitAttackAIActorState( 5000, 0, false, false, 0.0, true );
	StateFactory:AddBossShota_LaserAttacks( state, 3200, 80.0, 10000.0 );
	state:RegisterSequence( 1, "Resources/Effects/pve_shota_beam.seq", "", 1, 0 );

	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MB008", 0, 200, 500, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );
	
end
	
function TypeBossShotaA_AddDeathAIActorState()

	local state = StateFactory:GetDeathAIActorState();

	AIActor:AddAIActorState( AASTATE_DEATH, state );

	local index = 0;
	DEATH_NULL							= index; index = index + 1;	
	DEATH_NORMAL_WEAK					= index; index = index + 1;	
	DEATH_NORMAL_STRONG					= index; index = index + 1;	
	DEATH_BLOW							= index; index = index + 1;	
	DEATH_BOUNDBLOW						= index; index = index + 1;	

	--[[
	state:RegisterSoundFileName( DEATH_NULL				, "Resources/Sound/_rc_voice_man_dead_normal.ogg" );
	state:RegisterSoundFileName( DEATH_NORMAL_WEAK		, "Resources/Sound/_rc_voice_man_dead_normal.ogg" );
	state:RegisterSoundFileName( DEATH_NORMAL_STRONG	, "Resources/Sound/_rc_voice_man_dead_hard.ogg" );
	state:RegisterSoundFileName( DEATH_BLOW				, "Resources/Sound/_rc_voice_man_dead_blow.ogg" );
	state:RegisterSoundFileName( DEATH_BOUNDBLOW		, "Resources/Sound/_rc_voice_man_dead_shock.ogg" );
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
	animParam:SetAnim( "MB003", 0, 0, 0, false, 1.3, true );
	state:RegisterAnimParam( ANIMPARAMLIST_FALLDOWN_NORMAL_WEAK, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_FALLDOWN_NORMAL_STRONG, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_FALLDOWN_BLOW, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_FALLDOWN_BOUNDBLOW, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_LIEDOWN_BOUNDBLOW, animParam );

end

function TypeBossShotaA_AddStunAIActorState()

	local state = StateFactory:GetStunAIActorState();

	state:InitStunAIActorState( 0 );
	state:RegisterSequence( 1, "Resources/Effects/stun.seq", "Resources/Sound/stun.ogg", 1, 2500 );

	AIActor:AddAIActorState( AASTATE_STUN, state );
	
	state:SetNextStateID( ALINPUT_NORMAL, ALSTATE_NORMAL );
	state:SetNextStateID( ALINPUT_STUN, ALSTATE_STUN );
	state:SetNextStateID( ALINPUT_DEATH, ALSTATE_DEATH );

	local index = 0;
	ANIMPARAMLIST_PRECEDING						= index; index = index + 1;	
	ANIMPARAMLIST_STUN							= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MB004", 0, 0, 0, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_PRECEDING, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MB010", 0, 1000, 0, true, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_STUN, animParam );
	
end

function TypeBossShotaA_AddCounterAttackDamage()

	local state = StateFactory:GetStunAIActorState();

	state:InitStunAIActorState( 700 );
	state:RegisterSequence( 1, "Resources/Effects/stun.seq", "Resources/Sound/stun.ogg", 1, 2500 );

	AIActor:AddAIActorState( AASTATE_COUNTERATTACK_DAMAGE, state );
	
	state:SetNextStateID( ALINPUT_NORMAL, ALSTATE_NORMAL );
	state:SetNextStateID( ALINPUT_STUN, ALSTATE_STUN );
	state:SetNextStateID( ALINPUT_DEATH, ALSTATE_DEATH );
	
	local index = 0;
	ANIMPARAMLIST_PRECEDING						= index; index = index + 1;	
	ANIMPARAMLIST_STUN							= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MB004", 0, 0, 0, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_PRECEDING, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MB010", 0, 1000, 0, true, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_STUN, animParam );
	
end