require "Resources/Script/ActorStates_Constants.lua"


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH1,	WEAPONTYPE_SIGMA_BLADE	(일반공격1타)
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash1State_SigmaBlade( state )

	-- state:AddSoundBySex( "Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 0, 2500 ); --딜레이,적이 들리는 범위 MAx
	state:AddSound( "Resources/Sound/sigmablade_cut.ogg", "Bip01", 180, 2500 ); --딜레이,적이 들리는 범위 MAx
	
	state:AddSoundTransBySex(  "Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 0, 2500 ); --딜레이,적이 들리는 범위 MAx
	state:AddSoundTransBySex( "Resources/Sound/sigmablade_cut_power.ogg", "Resources/Sound/sigmablade_cut_power.ogg",  "Bip01", 400, 2500 ); --딜레이,적이 들리는 범위 MAx

	state:AddGhostTrail( "GhostTrail_sigma_blade_01", 50, 500 );
	state:AddGhostTrail( "GhostTrail_sigma_blade_02", 50, 2400 );

	local index = 0;

	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	local ANIMPARAMLIST_SHAPECHNAGE_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_SHAPECHNAGE_DELAY		= index; index = index + 1;

	-- 변신전
        state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "DC001",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);  -- 공격
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "DC000",		0,	800,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);   -- 회수

        -- 변신후
	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_NORMAL		):SetAnim( "DC009",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_DELAY			):SetAnim( "DC019",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end	


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH2,	WEAPONTYPE_SIGMA_BLADE	(일반공격2타)
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash2State_SigmaBlade( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 2500 );
	state:AddSound( "Resources/Sound/sigmablade_cut_finish.ogg", "Bip01", 220, 2500 );
	
	state:AddSoundTransBySex( "Resources/Sound/sigmablade_cut_power.ogg", "Resources/Sound/sigmablade_cut_power.ogg",  "Bip01", 390, 2500 ); --딜레이,적이 들리는 범위 MAx
	
	
	state:AddGhostTrail( "GhostTrail_sigma_blade_01", 50, 0 );
	state:AddGhostTrail( "GhostTrail_sigma_blade_02", 50, 2400 );

	state:AddSequenceBySex( 0, "Resources/Effects/sigmablade_leg_eff.seq", "Resources/Effects/sigmablade_leg_eff.seq", "", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	local ANIMPARAMLIST_SHAPECHNAGE_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_SHAPECHNAGE_DELAY		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "DC002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "DC005",		0,	400,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);

	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_NORMAL		):SetAnim( "DC011",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_DELAY			):SetAnim( "DC019",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end	


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH3,	WEAPONTYPE_SIGMA_BLADE	 (일반공격3타)
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash3State_SigmaBlade( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );
	
	state:AddSoundTransBySex( "Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 1, 2500 ); --딜레이,적이 들리는 범위 MAx
	state:AddSoundTransBySex( "Resources/Sound/sigmablade_cut_power.ogg", "Resources/Sound/sigmablade_cut_power.ogg",  "Bip01", 300, 2500 ); --딜레이,적이 들리는 범위 MAx
	
	state:AddGhostTrail( "GhostTrail_sigma_blade_01", 50, 2400 );
	state:AddGhostTrail( "GhostTrail_sigma_blade_02", 50, 2400 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	local ANIMPARAMLIST_SHAPECHNAGE_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_SHAPECHNAGE_DELAY		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "DC003",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "DC028",		800,	800,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);

	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_NORMAL		):SetAnim( "DC010",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_DELAY			):SetAnim( "DC016",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end	

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH4,	WEAPONTYPE_SIGMA_BLADE	  (일반공격 강타후 연타)
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash4State_SigmaBlade( state )

	state:AddSoundTransBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSoundTransBySex( "Resources/Sound/sigmablade_cut_power.ogg", "Resources/Sound/sigmablade_cut_power.ogg",  "Bip01", 200, 2500 ); --딜레이,적이 들리는 범위 MAx
	
	state:AddGhostTrail( "GhostTrail_sigma_blade_01", 50, 600 );
	state:AddGhostTrail( "GhostTrail_sigma_blade_02", 50, 2400 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	local ANIMPARAMLIST_SHAPECHNAGE_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_SHAPECHNAGE_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "DC013",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "R0025",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_NORMAL					):SetAnim( "DC013",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_DELAY						):SetAnim( "DC018",		0,	250,	250,	LOOP_FALSE,	1.0, RESET_TRUE	);  --R0025

end	



-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_JUMPATK,	WEAPONTYPE_SIGMA_BLADE	 (점프공격)
-------------------------------------------------------------------------------------------------------------
function SwordJumpAtkState_SigmaBlade( state )

	-- state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSoundBySex( "Resources/Sound/sigmablade_cut.ogg", "Resources/Sound/sigmablade_cut.ogg", "Bip01", 300, 2500 );
	state:AddSoundTransBySex( "Resources/Sound/sigmablade_cut_power.ogg", "Resources/Sound/sigmablade_cut_power.ogg",  "Bip01", 300, 2500 ); --딜레이,적이 들리는 범위 MAx
	
	state:AddGhostTrail( "GhostTrail_sigma_blade_01", 50, 600 );
	state:AddGhostTrail( "GhostTrail_sigma_blade_02", 50, 600 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL_FIRST	= index; index = index + 1;
	local ANIMPARAMLIST_NORMAL_SECOND	= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_FIRST					):SetAnim( "SN013",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_SECOND					):SetAnim( "SN014",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	
	
	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "DD005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT			):SetAnim( "DD006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "DD007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT		):SetAnim( "DD008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "DD009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "DD010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK			):SetAnim( "DD011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK			):SetAnim( "DD012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "A0024", 0,	500, 300,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end	



-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_COUNTERATTACK,	WEAPONTYPE_SIGMA_BLADE  (강공격)
-------------------------------------------------------------------------------------------------------------
function SwordAtkCounterAttack_SigmaBlade( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_4.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSoundTransBySex( "Resources/Sound/sigmablade_cut_air.ogg", "Resources/Sound/sigmablade_cut_air.ogg",  "Bip01", 2, 2500 ); --딜레이,적이 들리는 범위 MAx
	
	state:AddGhostTrail( "GhostTrail_sigma_blade_01", 50, 600 );
	state:AddGhostTrail( "GhostTrail_sigma_blade_02", 50, 2400 );

        state:AddSequence( 0, "Resources/Effects/sigmablade_power_att.seq", "Resources/Sound/sword_power.ogg", 600, 5000, true ); 

	local index = 0;

	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	local ANIMPARAMLIST_SHAPECHNAGE_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_SHAPECHNAGE_DELAY		= index; index = index + 1;

        state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "DC001",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);  -- 공격
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "DC000",		0,	800,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);   -- 회수

	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_NORMAL		):SetAnim( "DC012",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_DELAY			):SetAnim( "DC017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON2_WEAK,	WEAPONTYPE_SIGMA_BLADE	(변신)
-------------------------------------------------------------------------------------------------------------
function UseWeapon2State_SigmaBladeWeaponChange( state )

	--state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0 , 5000 );
	
	local index = 0;
	local ANIMPARAMLIST_CHANGE_ENABLE_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_CHANGE_ENABLE_DELAY		= index; index = index + 1;

	local ANIMPARAMLIST_CHANGE_DISABLE_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_CHANGE_DISABLE_DELAY		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_CHANGE_ENABLE_NORMAL					):SetAnim( "DC007",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);  --변신
	state:GetAnimParam( ANIMPARAMLIST_CHANGE_ENABLE_DELAY						):SetAnim( "R0031",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);  

	state:GetAnimParam( ANIMPARAMLIST_CHANGE_DISABLE_NORMAL					):SetAnim( "DC008",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);   --변신해제
	state:GetAnimParam( ANIMPARAMLIST_CHANGE_DISABLE_DELAY						):SetAnim( "R0033",		1000,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end



-----------------------------------------------------------------------------------------------------------------
-- 시그마 블레이드 유니크
-----------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH1,	WEAPONTYPE_SIGMA_BLADE	(일반공격1타)
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash1State_magmaBlade( state )

	-- state:AddSoundBySex( "Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 0, 2500 ); --딜레이,적이 들리는 범위 MAx
	state:AddSound( "Resources/Sound/sigmablade_cut.ogg", "Bip01", 180, 2500 ); --딜레이,적이 들리는 범위 MAx
	
	state:AddSoundTransBySex(  "Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 0, 2500 ); --딜레이,적이 들리는 범위 MAx
	state:AddSoundTransBySex( "Resources/Sound/sigmablade_cut_power.ogg", "Resources/Sound/sigmablade_cut_power.ogg",  "Bip01", 400, 2500 ); --딜레이,적이 들리는 범위 MAx

	state:AddGhostTrail( "GhostTrail_magma_blade_01", 50, 500 );
	state:AddGhostTrail( "GhostTrail_sigma_blade_02", 50, 2400 );

	local index = 0;

	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	local ANIMPARAMLIST_SHAPECHNAGE_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_SHAPECHNAGE_DELAY		= index; index = index + 1;

	-- 변신전
        state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "DC001",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);  -- 공격
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "DC000",		0,	800,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);   -- 회수

        -- 변신후
	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_NORMAL		):SetAnim( "DC009",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_DELAY			):SetAnim( "DC019",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end	


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH2,	WEAPONTYPE_SIGMA_BLADE	(일반공격2타)
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash2State_magmaBlade( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 2500 );
	state:AddSound( "Resources/Sound/sigmablade_cut_finish.ogg", "Bip01", 220, 2500 );
	
	state:AddSoundTransBySex( "Resources/Sound/sigmablade_cut_power.ogg", "Resources/Sound/sigmablade_cut_power.ogg",  "Bip01", 390, 2500 ); --딜레이,적이 들리는 범위 MAx
	
	
	state:AddGhostTrail( "GhostTrail_magma_blade_01", 50, 0 );
	state:AddGhostTrail( "GhostTrail_sigma_blade_02", 50, 2400 );

	state:AddSequenceBySex( 0, "Resources/Effects/burn_sigmablade_leg_eff.seq", "Resources/Effects/burn_sigmablade_leg_eff.seq", "", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	local ANIMPARAMLIST_SHAPECHNAGE_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_SHAPECHNAGE_DELAY		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "DC002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "DC005",		0,	400,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);

	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_NORMAL		):SetAnim( "DC011",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_DELAY			):SetAnim( "DC019",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end	


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH3,	WEAPONTYPE_SIGMA_BLADE	 (일반공격3타)
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash3State_magmaBlade( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );
	
	state:AddSoundTransBySex( "Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 1, 2500 ); --딜레이,적이 들리는 범위 MAx
	state:AddSoundTransBySex( "Resources/Sound/sigmablade_cut_power.ogg", "Resources/Sound/sigmablade_cut_power.ogg",  "Bip01", 300, 2500 ); --딜레이,적이 들리는 범위 MAx
	
	state:AddGhostTrail( "GhostTrail_magma_blade_01", 50, 2400 );
	state:AddGhostTrail( "GhostTrail_sigma_blade_02", 50, 2400 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	local ANIMPARAMLIST_SHAPECHNAGE_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_SHAPECHNAGE_DELAY		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "DC003",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "DC028",		800,	800,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);

	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_NORMAL		):SetAnim( "DC010",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_DELAY			):SetAnim( "DC016",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end	

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH4,	WEAPONTYPE_SIGMA_BLADE	  (일반공격 강타후 연타)
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash4State_magmaBlade( state )

	state:AddSoundTransBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSoundTransBySex( "Resources/Sound/sigmablade_cut_power.ogg", "Resources/Sound/sigmablade_cut_power.ogg",  "Bip01", 200, 2500 ); --딜레이,적이 들리는 범위 MAx
	
	state:AddGhostTrail( "GhostTrail_magma_blade_01", 50, 600 );
	state:AddGhostTrail( "GhostTrail_sigma_blade_02", 50, 2400 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	local ANIMPARAMLIST_SHAPECHNAGE_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_SHAPECHNAGE_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "DC013",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "R0025",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_NORMAL					):SetAnim( "DC013",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_DELAY						):SetAnim( "DC018",		0,	250,	250,	LOOP_FALSE,	1.0, RESET_TRUE	);  --R0025

end	



-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_JUMPATK,	WEAPONTYPE_SIGMA_BLADE	 (점프공격)
-------------------------------------------------------------------------------------------------------------
function SwordJumpAtkState_magmaBlade( state )

	-- state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSoundBySex( "Resources/Sound/sigmablade_cut.ogg", "Resources/Sound/sigmablade_cut.ogg", "Bip01", 300, 2500 );
	state:AddSoundTransBySex( "Resources/Sound/sigmablade_cut_power.ogg", "Resources/Sound/sigmablade_cut_power.ogg",  "Bip01", 300, 2500 ); --딜레이,적이 들리는 범위 MAx
	
	state:AddGhostTrail( "GhostTrail_magma_blade_01", 50, 600 );
	state:AddGhostTrail( "GhostTrail_sigma_blade_02", 50, 600 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL_FIRST	= index; index = index + 1;
	local ANIMPARAMLIST_NORMAL_SECOND	= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_FIRST					):SetAnim( "SN013",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_SECOND					):SetAnim( "SN014",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	
	
	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "DD005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT			):SetAnim( "DD006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "DD007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT		):SetAnim( "DD008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "DD009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "DD010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK			):SetAnim( "DD011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK			):SetAnim( "DD012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "A0024", 0,	500, 300,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end	



-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_COUNTERATTACK,	WEAPONTYPE_SIGMA_BLADE  (강공격)
-------------------------------------------------------------------------------------------------------------
function SwordAtkCounterAttack_magmaBlade( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_4.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSoundTransBySex( "Resources/Sound/sigmablade_cut_air.ogg", "Resources/Sound/sigmablade_cut_air.ogg",  "Bip01", 2, 2500 ); --딜레이,적이 들리는 범위 MAx
	
	state:AddGhostTrail( "GhostTrail_magma_blade_01", 50, 600 );
	state:AddGhostTrail( "GhostTrail_sigma_blade_02", 50, 2400 );

        state:AddSequence( 0, "Resources/Effects/burn_sigmablade_power_att.seq", "Resources/Sound/sword_power.ogg", 600, 5000, true ); 

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	local ANIMPARAMLIST_SHAPECHNAGE_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_SHAPECHNAGE_DELAY		= index; index = index + 1;
	
        state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "DC001",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);  -- 공격
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "DC000",		0,	800,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);   -- 회수
				
	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_NORMAL		):SetAnim( "DC012",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_DELAY			):SetAnim( "DC017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON2_WEAK,	WEAPONTYPE_SIGMA_BLADE	(변신)
-------------------------------------------------------------------------------------------------------------
function UseWeapon2State_magmaBladeWeaponChange( state )

	--state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0 , 5000 );
	
	local index = 0;
	local ANIMPARAMLIST_CHANGE_ENABLE_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_CHANGE_ENABLE_DELAY		= index; index = index + 1;

	local ANIMPARAMLIST_CHANGE_DISABLE_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_CHANGE_DISABLE_DELAY		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_CHANGE_ENABLE_NORMAL					):SetAnim( "DC007",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);  --변신
	state:GetAnimParam( ANIMPARAMLIST_CHANGE_ENABLE_DELAY						):SetAnim( "R0031",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);  

	state:GetAnimParam( ANIMPARAMLIST_CHANGE_DISABLE_NORMAL					):SetAnim( "DC008",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);   --변신해제
	state:GetAnimParam( ANIMPARAMLIST_CHANGE_DISABLE_DELAY						):SetAnim( "R0033",		1000,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end


-------------------------------------------------------------------------------------------------------------
-- 글리치 조이 시그마 블레이드
-- STATE_SWORD_ATK_ATFER_DASH1,	WEAPONTYPE_GLITCHJOY_SIGMABLADE	(일반공격1타)
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash1State_GlitchJoySigmaBlade( state )

	-- state:AddSoundBySex( "Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 0, 2500 ); --딜레이,적이 들리는 범위 MAx
	state:AddSound( "Resources/Sound/sigmablade_cut.ogg", "Bip01", 180, 2500 ); --딜레이,적이 들리는 범위 MAx
	
	state:AddSoundTransBySex(  "Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 0, 2500 ); --딜레이,적이 들리는 범위 MAx
	state:AddSoundTransBySex( "Resources/Sound/sigmablade_cut_power.ogg", "Resources/Sound/sigmablade_cut_power.ogg",  "Bip01", 400, 2500 ); --딜레이,적이 들리는 범위 MAx

	state:AddGhostTrail( "GhostTrail_GlitchJoySigma_blade_01", 50, 500 );
	state:AddGhostTrail( "GhostTrail_GlitchJoySigma_blade_02", 50, 2400 );

	local index = 0;

	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	local ANIMPARAMLIST_SHAPECHNAGE_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_SHAPECHNAGE_DELAY		= index; index = index + 1;

	-- 변신전
        state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "DC001",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);  -- 공격
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "DC000",		0,	800,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);   -- 회수

        -- 변신후
	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_NORMAL		):SetAnim( "DC009",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_DELAY			):SetAnim( "DC019",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end	


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH2,	WEAPONTYPE_GLITCHJOY_SIGMABLADE	(일반공격2타)
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash2State_GlitchJoySigmaBlade( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 2500 );
	state:AddSound( "Resources/Sound/sigmablade_cut_finish.ogg", "Bip01", 220, 2500 );
	
	state:AddSoundTransBySex( "Resources/Sound/sigmablade_cut_power.ogg", "Resources/Sound/sigmablade_cut_power.ogg",  "Bip01", 390, 2500 ); --딜레이,적이 들리는 범위 MAx
	
	
	state:AddGhostTrail( "GhostTrail_GlitchJoySigma_blade_01", 50, 0 );
	state:AddGhostTrail( "GhostTrail_GlitchJoySigma_blade_02", 50, 2400 );

	state:AddSequenceBySex( 0, "Resources/Effects/sigmablade_joy_leg_att.seq", "Resources/Effects/sigmablade_joy_leg_att.seq", "", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	local ANIMPARAMLIST_SHAPECHNAGE_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_SHAPECHNAGE_DELAY		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "DC002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "DC005",		0,	400,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);

	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_NORMAL		):SetAnim( "DC011",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_DELAY			):SetAnim( "DC019",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end	


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH3,	WEAPONTYPE_GLITCHJOY_SIGMABLADE	 (일반공격3타)
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash3State_GlitchJoySigmaBlade( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );
	
	state:AddSoundTransBySex( "Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 1, 2500 ); --딜레이,적이 들리는 범위 MAx
	state:AddSoundTransBySex( "Resources/Sound/sigmablade_cut_power.ogg", "Resources/Sound/sigmablade_cut_power.ogg",  "Bip01", 300, 2500 ); --딜레이,적이 들리는 범위 MAx
	
	state:AddGhostTrail( "GhostTrail_GlitchJoySigma_blade_01", 50, 2400 );
	state:AddGhostTrail( "GhostTrail_GlitchJoySigma_blade_02", 50, 2400 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	local ANIMPARAMLIST_SHAPECHNAGE_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_SHAPECHNAGE_DELAY		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "DC003",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "DC028",		800,	800,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);

	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_NORMAL		):SetAnim( "DC010",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_DELAY			):SetAnim( "DC016",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end	

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH4,	WEAPONTYPE_GLITCHJOY_SIGMABLADE	  (일반공격 강타후 연타)
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash4State_GlitchJoySigmaBlade( state )

	state:AddSoundTransBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSoundTransBySex( "Resources/Sound/sigmablade_cut_power.ogg", "Resources/Sound/sigmablade_cut_power.ogg",  "Bip01", 200, 2500 ); --딜레이,적이 들리는 범위 MAx
	
	state:AddGhostTrail( "GhostTrail_GlitchJoySigma_blade_01", 50, 600 );
	state:AddGhostTrail( "GhostTrail_GlitchJoySigma_blade_02", 50, 2400 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	local ANIMPARAMLIST_SHAPECHNAGE_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_SHAPECHNAGE_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "DC013",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "R0025",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_NORMAL					):SetAnim( "DC013",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_DELAY						):SetAnim( "DC018",		0,	250,	250,	LOOP_FALSE,	1.0, RESET_TRUE	);  --R0025

end	



-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_JUMPATK,	WEAPONTYPE_GLITCHJOY_SIGMABLADE	 (점프공격)
-------------------------------------------------------------------------------------------------------------
function SwordJumpAtkState_GlitchJoySigmaBlade( state )

	-- state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSoundBySex( "Resources/Sound/sigmablade_cut.ogg", "Resources/Sound/sigmablade_cut.ogg", "Bip01", 300, 2500 );
	state:AddSoundTransBySex( "Resources/Sound/sigmablade_cut_power.ogg", "Resources/Sound/sigmablade_cut_power.ogg",  "Bip01", 300, 2500 ); --딜레이,적이 들리는 범위 MAx
	
	state:AddGhostTrail( "GhostTrail_GlitchJoySigma_blade_01", 50, 600 );
	state:AddGhostTrail( "GhostTrail_GlitchJoySigma_blade_02", 50, 600 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL_FIRST	= index; index = index + 1;
	local ANIMPARAMLIST_NORMAL_SECOND	= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_FIRST					):SetAnim( "SN013",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_SECOND					):SetAnim( "SN014",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	
	
	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "DD005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT			):SetAnim( "DD006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "DD007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT		):SetAnim( "DD008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "DD009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "DD010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK			):SetAnim( "DD011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK			):SetAnim( "DD012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "A0024", 0,	500, 300,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end	



-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_COUNTERATTACK,	WEAPONTYPE_GLITCHJOY_SIGMABLADE  (강공격)
-------------------------------------------------------------------------------------------------------------
function SwordAtkCounterAttack_GlitchJoySigmaBlade( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_4.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSoundTransBySex( "Resources/Sound/sigmablade_cut_air.ogg", "Resources/Sound/sigmablade_cut_air.ogg",  "Bip01", 2, 2500 ); --딜레이,적이 들리는 범위 MAx
	
	state:AddGhostTrail( "GhostTrail_GlitchJoySigma_blade_01", 50, 600 );
	state:AddGhostTrail( "GhostTrail_GlitchJoySigma_blade_02", 50, 2400 );

        state:AddSequence( 0, "Resources/Effects/sigmablade_joy_power_att.seq", "Resources/Sound/sword_power.ogg", 600, 5000, true ); 

	local index = 0;

	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;

	local ANIMPARAMLIST_SHAPECHNAGE_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_SHAPECHNAGE_DELAY		= index; index = index + 1;

        state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "DC001",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);  -- 공격
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "DC000",		0,	800,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);   -- 회수

	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_NORMAL		):SetAnim( "DC012",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_SHAPECHNAGE_DELAY			):SetAnim( "DC017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON2_WEAK,	WEAPONTYPE_GLITCHJOY_SIGMABLADE	(변신)
-------------------------------------------------------------------------------------------------------------
function UseWeapon2State_GlitchJoySigmaBladeWeaponChange( state )

	--state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0 , 5000 );
	
	local index = 0;
	local ANIMPARAMLIST_CHANGE_ENABLE_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_CHANGE_ENABLE_DELAY		= index; index = index + 1;

	local ANIMPARAMLIST_CHANGE_DISABLE_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_CHANGE_DISABLE_DELAY		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_CHANGE_ENABLE_NORMAL					):SetAnim( "DC007",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);  --변신
	state:GetAnimParam( ANIMPARAMLIST_CHANGE_ENABLE_DELAY						):SetAnim( "R0031",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);  

	state:GetAnimParam( ANIMPARAMLIST_CHANGE_DISABLE_NORMAL					):SetAnim( "DC008",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);   --변신해제
	state:GetAnimParam( ANIMPARAMLIST_CHANGE_DISABLE_DELAY						):SetAnim( "R0033",		1000,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end