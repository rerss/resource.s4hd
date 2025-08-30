require "Resources/Script/AIDef.lua"
require "Resources/Script/AIActor_Common.lua"
require "Resources/Script/ActorStates_Constants.lua"

-- 전역변수
wCostumeHair = {}
wCostumeHair[1] = 35
wCostumeHair[2] = 53
wCostumeHair[3] = 16
wCostumeHair[4] = 7
wCostumeHair[5] = 8
wCostumeHair[6] = 11
wCostumeHair[7] = 12
wCostumeHair[8] = 15
wCostumeHair[9] = 16
wCostumeHair[10] = 21
wCostumeHair[11] = 22

wCostumeFace = {}
wCostumeFace[1] = 9
wCostumeFace[2] = 10
wCostumeFace[3] = 11

wCostumeTop = {}
wCostumeTop[1] = 4
wCostumeTop[2] = 5
wCostumeTop[3] = 6
wCostumeTop[4] = 10
wCostumeTop[5] = 18

wCostumeBottom = {}
wCostumeBottom[1] = 4
wCostumeBottom[2] = 5
wCostumeBottom[3] = 10
wCostumeBottom[4] = 27

function TypeMindEnergy_Init()

--	TEAM_ALPHA	= 1;
--	TEAM_BETA	= 2;

--	AIActor:SetTeamByID( TEAM_BETA );
--	AIActor:SetBaseHP( 100 );
--	AIActor:SetOrigBoundWidth( 200 );
--	AIActor:SetOrigBoundHeight( 320 );
--	AIActor:SetScale( 1.3, 1.3, 1.3 );
--	AIActor:SetSceneFileName( "Resources/Model/Character/male_bip.scn" );
--	AIActor:RegisterDamageSound( "Resources/Sound/voice_man_damage_1.ogg" );


	TEAM_ALPHA	= 1;
	TEAM_BETA	= 2;

	AIActor:SetTeamByID( TEAM_ALPHA );
	AIActor:SetBaseHP( 50 );
	AIActor:SetOrigBoundWidth( 200 );
	AIActor:SetOrigBoundHeight( 320 );
	AIActor:SetScale( 1.3, 1.3, 1.3 );
	AIActor:SetSceneFileName( "Resources/Model/Character/female_bip.scn" );
	AIActor:RegisterDamageSound( "Resources/Sound/voice_girl_damage_1.ogg" );
end


function TypeMindEnergy_CostumeSetting()

	AIActor:SetCostume( 1000002, 0 );
	AIActor:SetCostume( 1010002, 0 );
	AIActor:SetCostume( 1020003, 1 );
	AIActor:SetCostume( 1030003, 1 );
	AIActor:SetCostume( 1040001, 0 );
	AIActor:SetCostume( 1050001, 0 );
	AIActor:SetCostume( 1060046, 0 );
	
end

	
function TypeMindEnergy_WeaponSetting()

	AIActor:SetWeapon( 2060002, 0 );

end


function TypeMindEnergy_AIActorSetting()
	
	Common_AddJumpAIActorState		();
	Common_AddFallAIActorState		();
	Common_AddDownAIActorState		();
	Common_AddStandUpAIActorState	();
	Common_AddBlowAIActorState		();
	Common_AddBoundBlowAIActorState	();
	Common_AddDownDamageAIActorState();
	Common_AddStunAIActorState		();
	Common_AddCounterAttackDamage	();
	Common_AddIdleState				();
	Common_AddDodgeLeftAIActorState	();
	Common_AddDodgeRightAIActorState();

	TypeMindEnergy_AddDeathAIActorState		();
	TypeMindEnergy_AddNormalAIActorState	();
	TypeMindEnergy_AddRunAIActorState		();
	TypeMindEnergy_AddDamageAIActorState	();
	TypeMindEnergy_AddAttackAIActorState	();
		
	AIActor:ChangeAIActorState( AASTATE_NORMAL );
		
end



function TypeMindEnergy_AddNormalAIActorState()

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
	state:SetNextStateID( AAINPUT_BLOW, AASTATE_BLOW );
	state:SetNextStateID( AAINPUT_DODGE_LEFT, AASTATE_DODGE_LEFT );
	state:SetNextStateID( AAINPUT_DODGE_RIGHT, AASTATE_DODGE_RIGHT );

	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00029", 0, 1000, 0, true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );

end


function TypeMindEnergy_AddRunAIActorState()

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
	state:SetNextStateID( AAINPUT_BLOW, AASTATE_BLOW );
	state:SetNextStateID( AAINPUT_DODGE_LEFT, AASTATE_DODGE_LEFT );
	state:SetNextStateID( AAINPUT_DODGE_RIGHT, AASTATE_DODGE_RIGHT );

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
	animParam:SetAnim( "00008", 0,	2000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_UPPER_FRONT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00009", 0,	2000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00010", 0,	2000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_UPPER_LEFT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00014", 0,	2000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00011", 0,	2000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00012", 0,	2000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_UPPER_RIGHT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00015", 0,	2000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00013", 0,	2000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_UPPER_BACK, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00008", 0,	1000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_LOWER_FRONT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00009", 0,	1000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00010", 0,	1000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_LOWER_LEFT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00014", 0,	1000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00011", 0,	1000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00012", 0,	1000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_LOWER_RIGHT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00015", 0,	1000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00013", 0,	1000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_LOWER_BACK, animParam );

end


function TypeMindEnergy_AddDamageAIActorState()

	local state = StateFactory:GetDamageAIActorState();

	AIActor:AddAIActorState( AASTATE_DAMAGE, state );

	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_DAMAGE, AASTATE_DAMAGE );
	state:SetNextStateID( AAINPUT_COUNTERATTACK_DAMAGE, AASTATE_COUNTERATTACK_DAMAGE );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );
	state:SetNextStateID( AAINPUT_STUN, AASTATE_STUN );
	state:SetNextStateID( AAINPUT_BLOW, AASTATE_BLOW );


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
	animParam:SetAnim( "00016", 0, 0, 0, true, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_FRONT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00017", 0, 0, 0, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_BACK, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00018", 0, 0, 0, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_LEFT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00019", 0, 0, 0, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_RIGHT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00016", 0, 0, 0, false, 0.05, true );
	state:RegisterAnimParam( ANIMPARAMLIST_FRONT_WEAK, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00017", 0, 0, 0, false, 0.05, true );
	state:RegisterAnimParam( ANIMPARAMLIST_BACK_WEAK, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00018", 0, 0, 0, false, 0.05, true );
	state:RegisterAnimParam( ANIMPARAMLIST_LEFT_WEAK, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00019", 0, 0, 0, false, 0.05, true );
	state:RegisterAnimParam( ANIMPARAMLIST_RIGHT_WEAK, animParam );

	Common_AddDefaultAILowerStates( state );

end


function TypeMindEnergy_AddAttackAIActorState()

	local state = StateFactory:GetMindEnergyAIActorState();

	AIActor:AddAIActorState( AASTATE_ATTACK1, state );
	
	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_FALL, AASTATE_FALL );
	state:SetNextStateID( AAINPUT_DAMAGE, AASTATE_DAMAGE );
	state:SetNextStateID( AAINPUT_COUNTERATTACK_DAMAGE, AASTATE_COUNTERATTACK_DAMAGE );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );
	state:SetNextStateID( AAINPUT_STUN, AASTATE_STUN );
	state:SetNextStateID( AAINPUT_BLOW, AASTATE_BLOW );
	state:SetNextStateID( AAINPUT_DODGE_LEFT, AASTATE_DODGE_LEFT );
	state:SetNextStateID( AAINPUT_DODGE_RIGHT, AASTATE_DODGE_RIGHT );


	local index = 0;
	LIMITEDTAGET_ENEMY							= index; index = index + 1;	
	LIMITEDTAGET_ALLY							= index; index = index + 1;	
	LIMITEDTAGET_ALL							= index; index = index + 1;	
	LIMITEDTAGET_TOTAL							= index; index = index + 1;	

	state:InitMindEnergyAIActorState( 2200, 700, true, LIMITEDTAGET_ALLY, ATTACKATTRIB_MIND_ENERGY );
	state:SetHealSeq( "resources/effects/skill_hacker_mindenergy_team_body.seq", "resources/sound/bmindenergy_team.ogg", "resources/effects/skill_hacker_mindenergy_team_line1.seq", "resources/effects/skill_hacker_mindenergy_team_line2.seq", "resources/effects/skill_hacker_mindenergy_team_line3.seq", "resources/effects/skill_hacker_mindenergy_team_hand.seq" );
	state:SetHealingHP( 10.0, 20.0 );

	local animBlender = state:GetAnimBlender();

	animParam = StateFactory:GetAnimParam();
	animParam:SetBlendingAnim( "H0000", "H0001", 0,	500, 0,	true, 1.0, true );
	animBlender:AddAnimParam( ALSTATE_NORMAL, true, animParam );
	animBlender:AddAnimParam( ALSTATE_RUN, true, animParam );
	animBlender:AddAnimParam( ALSTATE_JUMP, true, animParam );
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetBlendingAnim( "H0002", "H0001", 0,	500, 0,	true, 1.0, true );
	animBlender:AddAnimParam( ALSTATE_NORMAL, false, animParam );
	animBlender:AddAnimParam( ALSTATE_RUN, false, animParam );
	animBlender:AddAnimParam( ALSTATE_JUMP, false, animParam );

	TypeMindEnergy_AddAttackAILowerStates( state );
	
end


function TypeMindEnergy_AddAttackAILowerStates( state )

	TypeMindEnergy_AddAttackNormalLowerState( state );
	TypeMindEnergy_AddAttackRunLowerState( state );
	Common_AddJumpLowerState( state );

end


function TypeMindEnergy_AddAttackNormalLowerState( state )

	local lowerState = StateFactory:GetNormalAILowerState();

	state:AddLowerState( ALSTATE_NORMAL, lowerState );

	lowerState:SetNextStateID( ALINPUT_RUN, ALSTATE_RUN );
	lowerState:SetNextStateID( ALINPUT_JUMP, ALSTATE_JUMP );


	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "H0001", 0, 500, 0, true, 1.0, true );
	lowerState:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );

end


function TypeMindEnergy_AddAttackRunLowerState( state )

	local lowerState = StateFactory:GetRunAILowerState();

	state:AddLowerState( ALSTATE_RUN, lowerState );

	lowerState:InitRunAILowerState( true );
	lowerState:SetNextStateID( ALINPUT_NORMAL, ALSTATE_NORMAL );
	lowerState:SetNextStateID( ALINPUT_JUMP, ALSTATE_JUMP );


	local index = 0;
	ANIMPARAMLIST_FRONT								= index; index = index + 1;	
	ANIMPARAMLIST_LEFT_FRONT						= index; index = index + 1;	
	ANIMPARAMLIST_LEFT								= index; index = index + 1;	
	ANIMPARAMLIST_LEFT_BACK							= index; index = index + 1;	
	ANIMPARAMLIST_RIGHT_FRONT						= index; index = index + 1;	
	ANIMPARAMLIST_RIGHT								= index; index = index + 1;	
	ANIMPARAMLIST_RIGHT_BACK						= index; index = index + 1;	
	ANIMPARAMLIST_BACK								= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL								= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "H0004", 0, 500, 0, true, 1.0, false );
	lowerState:RegisterAnimParam( ANIMPARAMLIST_FRONT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "H0005", 0, 500, 0, true, 1.0, false );
	lowerState:RegisterAnimParam( ANIMPARAMLIST_LEFT_FRONT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "H0006", 0, 500, 0, true, 1.0, false );
	lowerState:RegisterAnimParam( ANIMPARAMLIST_LEFT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "H0010", 0, 500, 0, true, 1.0, false );
	lowerState:RegisterAnimParam( ANIMPARAMLIST_LEFT_BACK, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "H0007", 0, 500, 0, true, 1.0, false );
	lowerState:RegisterAnimParam( ANIMPARAMLIST_RIGHT_FRONT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "H0008", 0, 500, 0, true, 1.0, false );
	lowerState:RegisterAnimParam( ANIMPARAMLIST_RIGHT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "H0011", 0, 500, 0, true, 1.0, false );
	lowerState:RegisterAnimParam( ANIMPARAMLIST_RIGHT_BACK, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "H0009", 0, 500, 0, true, 1.0, false );
	lowerState:RegisterAnimParam( ANIMPARAMLIST_BACK, animParam );

end


function TypeMindEnergy_AddDeathAIActorState()

	local state = StateFactory:GetDeathAIActorState();

	AIActor:AddAIActorState( AASTATE_DEATH, state );

	local index = 0;
	DEATH_NULL							= index; index = index + 1;	
	DEATH_NORMAL_WEAK					= index; index = index + 1;	
	DEATH_NORMAL_STRONG					= index; index = index + 1;	
	DEATH_BLOW							= index; index = index + 1;	
	DEATH_BOUNDBLOW						= index; index = index + 1;	

	state:RegisterSoundFileName( DEATH_NULL				, "Resources/Sound/_rc_voice_girl_dead_normal.ogg" );
	state:RegisterSoundFileName( DEATH_NORMAL_WEAK		, "Resources/Sound/_rc_voice_girl_dead_normal.ogg" );
	state:RegisterSoundFileName( DEATH_NORMAL_STRONG	, "Resources/Sound/_rc_voice_girl_dead_hard.ogg" );
	state:RegisterSoundFileName( DEATH_BLOW				, "Resources/Sound/_rc_voice_girl_dead_blow.ogg" );
	state:RegisterSoundFileName( DEATH_BOUNDBLOW		, "Resources/Sound/_rc_voice_girl_dead_shock.ogg" );
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
	animParam:SetAnim( "00030", 0, 0, 0, false, 1.3, true );
	state:RegisterAnimParam( ANIMPARAMLIST_FALLDOWN_NORMAL_WEAK, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00069", 0, 0, 0, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_FALLDOWN_NORMAL_STRONG, animParam );
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00024", 0, 500, 0, false, 1.5, true );
	state:RegisterAnimParam( ANIMPARAMLIST_FALLDOWN_BLOW, animParam );
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00071", 0, 500, 0, true, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_FALLDOWN_BOUNDBLOW, animParam );
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00072", 0, 500, 0, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_LIEDOWN_BOUNDBLOW, animParam );

end
