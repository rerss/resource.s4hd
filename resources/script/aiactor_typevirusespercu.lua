require "Resources/Script/AIDef.lua"
require "Resources/Script/AIActor_Common.lua"

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

function TypeVirusEsperCU_Init()

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

	AIActor:SetTeamByID( TEAM_BETA );
	AIActor:SetBaseHP( 200 );
	AIActor:SetOrigBoundWidth( 200 );
	AIActor:SetOrigBoundHeight( 320 );
	AIActor:SetScale( 1.3, 1.3, 1.3 );
	AIActor:SetSceneFileName( "Resources/Model/Character/female_bip.scn" );
	AIActor:RegisterDamageSound( "Resources/Sound/Acade/virus_voice_girl_damage_1.ogg" );
end


function TypeVirusEsperCU_CostumeSetting()

	AIActor:SetCostume( 1001041, 1 );
	AIActor:SetCostume( 1010009, 0 );
	AIActor:SetCostume( 1021041, 1 );
	AIActor:SetCostume( 1031041, 1 );
	AIActor:SetCostume( 1041041, 1 );
	AIActor:SetCostume( 1051041, 1 );
	AIActor:SetCostume( 1060000, 0 );
end

	
function TypeVirusEsperCU_WeaponSetting()

	AIActor:SetWeapon( 2000002, 2 );

end


function TypeVirusEsperCU_AIActorSetting()
	
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
		
	TypeVirusEsperCU_AddDeathAIActorState		();
	TypeVirusEsperCU_AddNormalAIActorState	();
	TypeVirusEsperCU_AddRunAIActorState		();
	TypeVirusEsperCU_AddDamageAIActorState	();
	TypeVirusEsperCU_AddAttack1AIActorState	();
		
	AIActor:ChangeAIActorState( AASTATE_NORMAL );
		
end



function TypeVirusEsperCU_AddNormalAIActorState()

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
	animParam:SetAnim( "R0004", 0, 1000, 0, true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );

end


function TypeVirusEsperCU_AddRunAIActorState()

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
	animParam:SetAnim( "R0016", 0,	1000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_UPPER_FRONT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "R0017", 0,	1000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "R0018", 0,	1000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_UPPER_LEFT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "R0022", 0,	1000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "R0019", 0,	1000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "R0020", 0,	1000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_UPPER_RIGHT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "R0023", 0,	1000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "R0021", 0,	1000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_UPPER_BACK, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "R0016", 0,	1000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_LOWER_FRONT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "R0017", 0,	1000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "R0018", 0,	1000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_LOWER_LEFT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "R0022", 0,	1000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "R0019", 0,	1000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "R0020", 0,	1000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_LOWER_RIGHT, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "R0023", 0,	1000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "R0021", 0,	1000, 0,	true, 1.0, false );
	state:RegisterAnimParam( ANIMPARAMLIST_LOWER_BACK, animParam );

end


function TypeVirusEsperCU_AddDamageAIActorState()

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


function TypeVirusEsperCU_AddAttack1AIActorState()

	local state = StateFactory:GetAttackAIActorState();

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

	state:InitAttackAIActorState( 1000, 500, false, false, 0.0, true );
	state:RegisterSound( "Resources/Sound/Acade/virus_voice_girl_attack_3.ogg", "Bip01", 0, 2500.0 );
	state:RegisterGhostTrail( "GhostTrail_counter_sword_01", 50, 600 );
	state:RegisterSequence( 0, "Resources/Effects/weapon_counter_upper02.seq", "Resources/Sound/bsword_counter.ogg", 250, 5000 );

	StateFactory:AddCounterSwordCounterAttacks( state, 17.0, 500.0 );
 
	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_DELAY							= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "R0030", 0, 200, 0, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );

	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "R0031", 0, 1000, 1000, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_DELAY, animParam );

end


function TypeVirusEsperCU_AddDeathAIActorState()

	local state = StateFactory:GetDeathAIActorState();

	AIActor:AddAIActorState( AASTATE_DEATH, state );

	local index = 0;
	DEATH_NULL							= index; index = index + 1;	
	DEATH_NORMAL_WEAK					= index; index = index + 1;	
	DEATH_NORMAL_STRONG					= index; index = index + 1;	
	DEATH_BLOW							= index; index = index + 1;	
	DEATH_BOUNDBLOW						= index; index = index + 1;	

	state:RegisterSoundFileName( DEATH_NULL				, "Resources/Sound/Acade/_rc_virus_voice_girl_dead_normal.ogg" );
	state:RegisterSoundFileName( DEATH_NORMAL_WEAK		, "Resources/Sound/Acade/_rc_virus_voice_girl_dead_normal.ogg" );
	state:RegisterSoundFileName( DEATH_NORMAL_STRONG	, "Resources/Sound/Acade/_rc_virus_voice_girl_dead_hard.ogg" );
	state:RegisterSoundFileName( DEATH_BLOW				, "Resources/Sound/Acade/_rc_virus_voice_girl_dead_blow.ogg" );
	state:RegisterSoundFileName( DEATH_BOUNDBLOW		, "Resources/Sound/Acade/_rc_virus_voice_girl_dead_shock.ogg" );
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
