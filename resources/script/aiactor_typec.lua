require "Resources/Script/AIDef.lua"
require "Resources/Script/AIActor_Common.lua"


function TypeC_Init()

	TEAM_ALPHA	= 1;
	TEAM_BETA	= 2;

	AIActor:SetTeamByID( TEAM_BETA );
	AIActor:SetBaseHP( 1000 );
	AIActor:SetOrigBoundWidth( 200 );
	AIActor:SetOrigBoundHeight( 320 );
	AIActor:SetScale( 1.0, 1.0, 1.0 );
	AIActor:SetSceneFileName( "Resources/Model/Monster/boss_bip.scn" );
	-- AIActor:RegisterDamageSound( "Resources/Sound/voice_man_damage_1.ogg" );
	AIActor:SetUsingLowerPart( false );
	AIActor:SetBoundingVolume( 1000.0 );

end


function TypeC_CostumeSetting()
	
end

	
function TypeC_WeaponSetting()

end


function TypeC_AIActorSetting()
	
	TypeC_AddDeathAIActorState		();
	TypeC_AddNormalAIActorState		();
	TypeC_AddRunAIActorState		();
	TypeC_AddDamageAIActorState		();
	TypeC_AddAttackAIActorState		();
	TypeC_AddStunAIActorState		();
	TypeC_AddCounterAttackDamage	();
	Common_AddIdleState				();
		
	AIActor:ChangeAIActorState( AASTATE_NORMAL );
		
end



function TypeC_AddNormalAIActorState()

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
	state:SetNextStateID( AAINPUT_STUN, AASTATE_STUN );

	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MMOO5", 0, 1000, 0, true, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );

end


function TypeC_AddRunAIActorState()

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
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MMOO5", 0,	1000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_UPPER_FRONT, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_UPPER_LEFT, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_UPPER_RIGHT, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_UPPER_BACK, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_LOWER_FRONT, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_LOWER_LEFT, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_LOWER_RIGHT, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_LOWER_BACK, animParam );

end


function TypeC_AddDamageAIActorState()

	local state = StateFactory:GetDamageAIActorState();

	AIActor:AddAIActorState( AASTATE_DAMAGE, state );

	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_DAMAGE, AASTATE_DAMAGE );
	state:SetNextStateID( AAINPUT_COUNTERATTACK_DAMAGE, AASTATE_COUNTERATTACK_DAMAGE );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );
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


function TypeC_AddAttackAIActorState()

	local state = StateFactory:GetAttackAIActorState();

	AIActor:AddAIActorState( AASTATE_ATTACK1, state );
	
	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_FALL, AASTATE_FALL );
	state:SetNextStateID( AAINPUT_DAMAGE, AASTATE_DAMAGE );
	state:SetNextStateID( AAINPUT_COUNTERATTACK_DAMAGE, AASTATE_COUNTERATTACK_DAMAGE );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );
	state:SetNextStateID( AAINPUT_STUN, AASTATE_STUN );

	state:InitAttackAIActorState( 1000, 0, false, false, 0.0, true );
	state:RegisterGhostTrail( "GhostTrail_two_hand_sword_01", 50, 350 );
	StateFactory:AddPlasmaSwordStrongAttacks( state, 7.0, 800.0 );


	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MM001", 900, 200, 500, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );

end


function TypeC_AddDeathAIActorState()

	local state = StateFactory:GetDeathAIActorState();

	AIActor:AddAIActorState( AASTATE_DEATH, state );

	local index = 0;
	DEATH_NULL							= index; index = index + 1;	
	DEATH_NORMAL_WEAK					= index; index = index + 1;	
	DEATH_NORMAL_STRONG					= index; index = index + 1;	
	DEATH_BLOW							= index; index = index + 1;	
	DEATH_BOUNDBLOW						= index; index = index + 1;	

	state:RegisterSoundFileName( DEATH_NULL				, "Resources/Sound/_rc_voice_man_dead_normal.ogg" );
	state:RegisterSoundFileName( DEATH_NORMAL_WEAK		, "Resources/Sound/_rc_voice_man_dead_normal.ogg" );
	state:RegisterSoundFileName( DEATH_NORMAL_STRONG	, "Resources/Sound/_rc_voice_man_dead_hard.ogg" );
	state:RegisterSoundFileName( DEATH_BLOW				, "Resources/Sound/_rc_voice_man_dead_blow.ogg" );
	state:RegisterSoundFileName( DEATH_BOUNDBLOW		, "Resources/Sound/_rc_voice_man_dead_shock.ogg" );
	state:RegisterSequence( 1, "Resources/Effects/dead_eff.seq", "", 1, 0 );


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

end

function TypeC_AddStunAIActorState()

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
	animParam:SetAnim( "MM004", 0, 0, 0, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_PRECEDING, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MM011", 0, 1000, 0, true, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_STUN, animParam );
	
end

function TypeC_AddCounterAttackDamage()

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
	animParam:SetAnim( "MM004", 0, 0, 0, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_PRECEDING, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MM011", 0, 1000, 0, true, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_STUN, animParam );
	
end