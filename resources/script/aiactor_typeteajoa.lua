require "Resources/Script/AIDef.lua"
require "Resources/Script/AIActor_Common.lua"

-- 전역변수


function TypeTeajoA_Init()

	TEAM_ALPHA	= 1;
	TEAM_BETA	= 2;

	AIActor:SetTeamByID( TEAM_ALPHA );
	AIActor:SetBaseHP( 2500 );
	AIActor:SetOrigBoundWidth( 200 );
	AIActor:SetOrigBoundHeight( 320 );
	AIActor:SetScale( 1.3, 1.3, 1.3 );
	AIActor:SetSceneFileName( "Resources/Model/Character/male_bip.scn" );
	AIActor:RegisterDamageSound( "Resources/Sound/voice_man_damage_1.ogg" );
	
	AIActor:SetShowHPBar( true );
	AIActor:SetTimeToSeeingHPBar( 99999 );
	AIActor:SetTimeToFadeOutHPBar( 1000 );

end


function TypeTeajoA_CostumeSetting()

	AIActor:SetCostume( 1000014, 0 ); --와일드
	AIActor:SetCostume( 1010017, 0 ); --콜드 스타일
	AIActor:SetCostume( 1020033, 0 ); --스페이스 슈트
	AIActor:SetCostume( 1030030, 0 ); --스페이스 슬렉스
	AIActor:SetCostume( 1040033, 0 ); --와일드 블랙 너클
	AIActor:SetCostume( 1050029, 0 ); --스페이스 부츠

end


function TypeTeajoA_WeaponSetting()

	--AIActor:SetWeapon( 2, 0, 1008 );

end


function TypeTeajoA_AIActorSetting()
	
	Common_AddIdleState					();
	
	TypeTeajoA_AddDeathAIActorState		();
	TypeTeajoA_AddNormalAIActorState		();
	TypeTeajoA_AddDamageAIActorState		();
	Common_AddIdleState						();
		
	AIActor:ChangeAIActorState( AASTATE_NORMAL );
		
end



function TypeTeajoA_AddNormalAIActorState()

	local state = StateFactory:GetSocialActionAIActorState();

	state:Init( 1000, AIUSEWEAPON_NO );

	AIActor:AddAIActorState( AASTATE_NORMAL, state );
	
	state:SetNextStateID( AAINPUT_DAMAGE, AASTATE_DOWN_DAMAGE );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );


	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	
	
	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00065", 0, 1000, 0, true, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );

end


function TypeTeajoA_AddDamageAIActorState()

	local state = StateFactory:GetDownDamageAIActorState();

	AIActor:AddAIActorState( AASTATE_DAMAGE, state );

	state:SetNextStateID( AAINPUT_NORMAL, AASTATE_NORMAL );
	state:SetNextStateID( AAINPUT_DAMAGE, AASTATE_DAMAGE );
	state:SetNextStateID( AAINPUT_DEATH, AASTATE_DEATH );


	local index = 0;
	ANIMPARAMLIST_NORMAL						= index; index = index + 1;	
	ANIMPARAMLIST_TOTAL							= index; index = index + 1;	

	local animParam;
	
	animParam = StateFactory:GetAnimParam();
	animParam:SetAnim( "00023", 0, 100, 0, false, 1.0, true );
	state:RegisterAnimParam( ANIMPARAMLIST_NORMAL, animParam );

end


function TypeTeajoA_AddDeathAIActorState()

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