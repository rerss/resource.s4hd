require "Resources/Script/AIDef.lua"
require "Resources/Script/AIActor_Common.lua"


function TypeTRB_Big_Init()

	TEAM_ALPHA	= 1;
	TEAM_BETA	= 2;

	AIActor:SetTeamByID( TEAM_BETA );
	AIActor:SetBaseMoveSpeedMax( 1200.0 );
	AIActor:SetBaseHP( 420 );
	AIActor:SetOrigBoundWidth( 200 );
	AIActor:SetOrigBoundHeight( 320 );
	AIActor:SetScale( 1.4, 1.4, 1.4 );
	AIActor:SetSceneFileName( "Resources/Model/Monster/jaco1_strong_bip.scn" );
	-- AIActor:RegisterDamageSound( "Resources/Sound/voice_man_damage_1.ogg" );
	AIActor:RegisterDamageSound( "Resources/Sound/Acade/crazyrobot_damage.ogg" );
	AIActor:SetUsingLowerPart( false );
	AIActor:SetBoundingVolume( 100.0 );
	
	-- 바인드 방지
	AIActor:SetApplyBind( false );
	
	AIActor:SetShowHPBar( true );
	AIActor:SetTimeToSeeingHPBar( 1500 );
	AIActor:SetTimeToFadeOutHPBar( 1000 );

	AIActor:SetAiActorHpRate( 0.75 );
	AIActor:SetAiActorNamed( true );
end


function TypeTRB_Big_CostumeSetting()
	
end

	
function TypeTRB_Big_WeaponSetting()

end


function TypeTRB_Big_AIActorSetting()
	
	TypeTRB_Big_AddDeathAIActorState	();
	TypeTRB_Big_AddNormalAIActorState	();
	TypeTRB_Big_AddRunAIActorState		();
	TypeTRB_Big_AddDamageAIActorState	();
	TypeTRB_Big_AddAttackAIActorState	();
	TypeTRB_Big_AddAttack2AIActorState	();
	Common_AddIdleState				();
		
	AIActor:ChangeAIActorState( AASTATE_NORMAL );
		
end


function TypeTRB_Big_AddDeathAIActorState()

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
	state:RegisterSound( "Resources/Sound/Acade/crazyrobot_dead.ogg", "Bip01", 0, 5000 );

	local index = 0;
	ANIMPARAMLIST_FALLDOWN_NORMAL_WEAK			= index; index = index + 1;	
	ANIMPARAMLIST_FALLDOWN_NORMAL_STRONG		= index; index = index + 1;	
	ANIMPARAMLIST_FALLDOWN_BLOW					= index; index = index + 1;	
	ANIMPARAMLIST_FALLDOWN_BOUNDBLOW			= index; index = index + 1;	
	ANIMPARAMLIST_LIEDOWN_BOUNDBLOW				= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MC006", 0, 0, 0, false, 1.3, true );
	state:RegisterAnimParam( ANIMPARAMLIST_FALLDOWN_NORMAL_WEAK, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_FALLDOWN_NORMAL_STRONG, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_FALLDOWN_BLOW, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_FALLDOWN_BOUNDBLOW, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_LIEDOWN_BOUNDBLOW, animParam );

end


function TypeTRB_Big_AddNormalAIActorState()

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
	animParam:SetAnim( "MC001", 0, 1000, 0, true, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );

end


function TypeTRB_Big_AddRunAIActorState()

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
	animParam:SetAnim( "MC004", 0,	200, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_COMMON, animParam );

end


function TypeTRB_Big_AddDamageAIActorState()

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
	state:RegisterSound( "Resources/Sound/Acade/crazyrobot_damage.ogg", "Bip01", 0, 5000 );

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
	animParam:SetAnim( "MC005", 0, 0, 0, true, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_FRONT, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_BACK, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_LEFT, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_RIGHT, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_FRONT_WEAK, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_BACK_WEAK, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_LEFT_WEAK, animParam );
	state:RegisterAnimParam( ANIMPARAMLIST_RIGHT_WEAK, animParam );

end


function TypeTRB_Big_AddAttackAIActorState()

	local state = StateFactory:GetAttackAIActorState();

	AIActor:AddAIActorState( AASTATE_ATTACK1, state );
	
	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );

	state:InitAttackAIActorState( 1200, 0, false, false, 0.0, false );
	StateFactory:AddTRB_Attacks( state, 2.0, 125.0, 0.04 );
	state:RegisterSound( "Resources/Sound/Acade/crazyrobot_attack.ogg", "Bip01", 0, 5000 );

	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MC002", 1200, 200, 500, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );
	
end


function TypeTRB_Big_AddAttack2AIActorState()

	local state = StateFactory:GetAttackAIActorState();

	AIActor:AddAIActorState( AASTATE_ATTACK2, state );
	
	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );

	state:InitAttackAIActorState( 1200, 0, false, false, 0.0, false );
	StateFactory:AddTRB_Attack2_Attacks( state, 300, 450, 600, 10.0, 1000.0 );
	state:RegisterSound( "Resources/Sound/Acade/TRB_wind.ogg", "Bip01", 0, 5000 );

	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "MC003", 1200, 200, 0, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );
	
end
