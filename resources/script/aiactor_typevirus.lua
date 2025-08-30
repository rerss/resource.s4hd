require "Resources/Script/AIDef.lua"
require "Resources/Script/AIActor_Common.lua"


function TypeVirus_Init()

	TEAM_ALPHA	= 1;
	TEAM_BETA	= 2;

	AIActor:SetTeamByID( TEAM_BETA );
	AIActor:SetBaseMoveSpeedMax( 1500.0 );
	AIActor:SetBaseHP( 40 );
	AIActor:SetOrigBoundWidth( 100 );
	AIActor:SetOrigBoundHeight( 200 );
	AIActor:SetScale( 2.3, 2.3, 2.3 );
	AIActor:SetSceneFileName( "Resources/Model/Monster/virus_bip.scn" );
	AIActor:RegisterDamageSound( "Resources/Sound/Acade/virus_damage.ogg" );
	AIActor:SetUsingLowerPart( false );
	AIActor:SetBoundingVolume( 100.0 );
	
	-- 바인드 방지
	AIActor:SetApplyBind( false );

end


function TypeVirus_CostumeSetting()
	
end

	
function TypeVirus_WeaponSetting()

end


function TypeVirus_AIActorSetting()
	
	TypeVirus_AddDeathAIActorState	();
	TypeVirus_AddNormalAIActorState	();
	TypeVirus_AddRunAIActorState	();
	TypeVirus_AddDamageAIActorState	();
	TypeVirus_AddAttackAIActorState	();
	Common_AddIdleState				();
	-- 점프 테스트 중
	TypeVirus_AddJumpAIActorState		();
		
	AIActor:ChangeAIActorState( AASTATE_NORMAL );
		
end

function TypeVirus_AddJumpAIActorState()

	local state = StateFactory:GetJumpAIActorState();

	AIActor:AddAIActorState( AASTATE_JUMP, state );

	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_BLOW, AASTATE_BLOW );
	state:SetNextStateID( AAINPUT_DAMAGE, AASTATE_DAMAGE );
	state:SetNextStateID( AAINPUT_COUNTERATTACK_DAMAGE, AASTATE_COUNTERATTACK_DAMAGE );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );
	state:SetNextStateID( AAINPUT_ATTACK1, AASTATE_ATTACK1 );
	state:SetNextStateID( AAINPUT_STUN, AASTATE_STUN );

	local index = 0;
	ANIMPARAMLIST_DELAY_BEFORE_JUMP		= index; index = index + 1;	
	ANIMPARAMLIST_JUMP_RISE						= index; index = index + 1;	
	ANIMPARAMLIST_JUMP_MOVE_RISE				= index; index = index + 1;	
	ANIMPARAMLIST_LANDING							= index; index = index + 1;	
	ANIMPARAMLIST_LANDING_MOVE				= index; index = index + 1;	
	ANIMPARAMLIST_FALL								= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00000", 0, 500, 1000, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_DELAY_BEFORE_JUMP, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00001", 0, 500, 0, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_JUMP_RISE, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00004", 600, 100, 300, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_JUMP_MOVE_RISE, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00003", 500, 200, 500, false, 0.8, true );
	state:RegisterAnimParam( ANIMPARAMLIST_LANDING, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00000", 0, 100, 0, false, 0.8, true );
	state:RegisterAnimParam( ANIMPARAMLIST_LANDING_MOVE, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00002", 0, 1000, 0, true, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_FALL, animParam );

end




function TypeVirus_AddDeathAIActorState()

	local state = StateFactory:GetDeathAIActorState();

	AIActor:AddAIActorState( AASTATE_DEATH, state );

	local index = 0;
	DEATH_NULL							= index; index = index + 1;	
	DEATH_NORMAL_WEAK					= index; index = index + 1;	
	DEATH_NORMAL_STRONG					= index; index = index + 1;	
	DEATH_BLOW							= index; index = index + 1;	
	DEATH_BOUNDBLOW						= index; index = index + 1;	

	-- state:RegisterSoundFileName( DEATH_NULL				, "Resources/Sound/_rc_voice_man_dead_normal.ogg" );
	-- state:RegisterSoundFileName( DEATH_NORMAL_WEAK		, "Resources/Sound/_rc_voice_man_dead_normal.ogg" );
	-- state:RegisterSoundFileName( DEATH_NORMAL_STRONG		, "Resources/Sound/_rc_voice_man_dead_hard.ogg" );
	-- state:RegisterSoundFileName( DEATH_BLOW				, "Resources/Sound/_rc_voice_man_dead_blow.ogg" );
	-- state:RegisterSoundFileName( DEATH_BOUNDBLOW			, "Resources/Sound/_rc_voice_man_dead_shock.ogg" );
	state:RegisterSequence( 1, "Resources/Effects/dead_eff.seq", "", 1, 0 );
	state:RegisterSound( "Resources/Sound/Acade/virus_dead.ogg", "Bip01", 0, 5000 );

	local index = 0;
	ANIMPARAMLIST_FALLDOWN_NORMAL_WEAK			= index; index = index + 1;	
	ANIMPARAMLIST_FALLDOWN_NORMAL_STRONG		= index; index = index + 1;	
	ANIMPARAMLIST_FALLDOWN_BLOW					= index; index = index + 1;	
	ANIMPARAMLIST_FALLDOWN_BOUNDBLOW			= index; index = index + 1;	
	ANIMPARAMLIST_LIEDOWN_BOUNDBLOW				= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MV003", 0, 0, 0, false, 1.3, true );
	state:RegisterAnimParam( ANIMPARAMLIST_FALLDOWN_NORMAL_WEAK, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_FALLDOWN_NORMAL_STRONG, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_FALLDOWN_BLOW, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_FALLDOWN_BOUNDBLOW, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_LIEDOWN_BOUNDBLOW, animParam );

end


function TypeVirus_AddNormalAIActorState()

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
	state:SetNextStateID( AAINPUT_STUN, AASTATE_STUN );

	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MV007", 0, 1000, 0, true, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );

end


function TypeVirus_AddRunAIActorState()

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
	state:SetNextStateID( AAINPUT_ATTACK5, AASTATE_ATTACK5 );
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
	animParam:SetAnim( "MV005", 0,	200, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_COMMON, animParam );

end


function TypeVirus_AddDamageAIActorState()

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
	state:SetNextStateID( AAINPUT_STUN, AASTATE_STUN );
	state:RegisterSound( "Resources/Sound/Acade/virus_damage.ogg", "Bip01", 0, 5000 );

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
	animParam:SetAnim( "MV004", 0, 0, 0, true, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_FRONT, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_BACK, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_LEFT, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_RIGHT, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_FRONT_WEAK, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_BACK_WEAK, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_LEFT_WEAK, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_RIGHT_WEAK, animParam );

end


function	TypeVirus_AddAttackAIActorState()

	local state = StateFactory:GetAttackAIActorState();

	AIActor:AddAIActorState( AASTATE_ATTACK1, state );
	
	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );

	state:InitAttackAIActorState( 1500, 0, false, false, 1.0, true );
	StateFactory:AddVirus_Attacks( state, 800, 3.0, 500.0 );
	state:RegisterSound( "Resources/Sound/Acade/virusattack2.ogg", "Bip01", 0, 5000 );

	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MV002", 1500, 200, 0, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );
	
end