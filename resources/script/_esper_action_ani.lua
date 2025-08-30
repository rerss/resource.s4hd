-------------------------------------------------------------------------------------------------------------
-- STATE_SET_SKILL_ESPER_BEAM
-------------------------------------------------------------------------------------------------------------
function EsperSkill_EsperBeam( state )

	--state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSequence( 0, "Resources/Effects/esper5_bim.seq", "Resources/Sound/rail_blast.ogg", 200, 2000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	--( cchar * szAnim, u32 uiBasePlayTime, u32 uiBaseBlendTime, u32 uiRecoveryTime, bool bLoop, float fSpeed, bool bReset )
		-- uiBasePlayTime -> ㅇ선언되어있지않으면 모션 스피드 따라감
		-- uiBaseBlendTime -> 블랜딩 타임. -> 없어도 상관이없긴하다.
		-- uiRecoveryTime -> 블랜딩 회복 타임.

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "ES004",		0,	500,	100,	LOOP_FALSE,	1.0, RESET_TRUE		);
	--state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "KN024",		800,	0,		1000,	LOOP_FALSE,	1.0, RESET_TRUE		);

end

-------------------------------------------------------------------------------------------------------------
-- STATE_SET_SKILL_ESPER_COAT
-------------------------------------------------------------------------------------------------------------
function EsperSkill_EsperCoat( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_4.ogg", "Bip01", 0, 2500 );
	--state:AddSequence( 0, "Resources/Effects/espercoat_active_eff_01.seq", "Resources/Sound/mindenergy_dry_fire.ogg", 0, 55000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "DC007",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);  --변신
	--state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "R0031",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end

-------------------------------------------------------------------------------------------------------------
-- STATE_SET_SKILL_ESPER_BOMB --
-------------------------------------------------------------------------------------------------------------
function EsperSkill_EsperBomb( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_charge.ogg", "Resources/Sound/voice_girl_charge.ogg", "Bip01", 0, 2500 );
	state:AddSequence( 0, "Resources/Effects/esperbomb_eff_01.seq", "Resources/Sound/airgun_blast.ogg", 450, 2000 );

	local index = 0;
	local ANIMPARAMLIST_BEGIN		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	local ANIMPARAMLIST_MIDAIRSTATE	= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_BEGIN					):SetAnim( "ES003",		0,	500,	100,	LOOP_FALSE,	1.0, RESET_TRUE		);
	--state:GetAnimParam( ANIMPARAMLIST_DELAY					):SetAnim( "KN023",		0,	500,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_MIDAIRSTATE				):SetAnim( "ES013",		0,	500,	100,	LOOP_FALSE,	1.0, RESET_TRUE	);

end

-------------------------------------------------------------------------------------------------------------
-- STATE_SET_SKILL_KNEE_SLIDE
-------------------------------------------------------------------------------------------------------------
function EsperSkill_EsperKneeSlide( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL	= index; index = index + 1;
	local ANIMPARAMLIST_DELAY	= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL	):SetAnim( "ES001",	0,	500,	300   , LOOP_FALSE, 1.0, RESET_TRUE );
	--state:GetAnimParam( ANIMPARAMLIST_DELAY		):SetAnim( "IB006",	0,	0   ,	100 , LOOP_FALSE, 1.0, RESET_TRUE );

end
