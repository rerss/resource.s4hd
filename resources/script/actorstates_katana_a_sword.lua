require "Resources/Script/ActorStates_Constants.lua"


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH1,	WEAPONTYPE_KATANA_A_SWORD	카타나 1타
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash1State_Katana_A_Sword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );
	state:AddSound( "Resources/Sound/katana_cut.ogg", "Bip01", 200, 5000 );
	state:AddSound( "Resources/Sound/katana_cut_finish.ogg", "Bip01", 700, 5000 );
	--state:AddSound( "Resources/Sound/katana_cut_1.ogg", "Bip01", 1, 2500 );
	--state:AddSound( "Resources/Sound/katana_cut_2.ogg", "Bip01", 650, 2500 );
	state:AddGhostTrail( "GhostTrail_katana_a_sword_01",300, 600 );
--	state:AddGhostTrail( "GhostTrail_katana_a_sword_02", 50, 600 );
	--검 궤적이 뿌려지는 시작 시간, 검 궤적이 뿌려지는 종료 시간

	state:AddSequence( 0, "Resources/Effects/katanaA_atk01.seq", "", 0, 500 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "KT000",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "KT025",		0,	100,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);

end	


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH2,	WEAPONTYPE_KATANA_A_SWORD	카타나 2타
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash2State_Katana_A_Sword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 0, 2500 );
	state:AddSound( "Resources/Sound/katana_cut.ogg", "Bip01", 300, 5000 ); --1타 사운드
	state:AddSound( "Resources/Sound/katana_cut.ogg", "Bip01", 700, 5000 ); --2타 사운드
	state:AddSound( "Resources/Sound/katana_cut_finish.ogg", "Bip01", 1600, 5000 );
	state:AddGhostTrail( "GhostTrail_katana_a_sword_01", 50, 3000 );

	state:AddSequence( 0, "Resources/Effects/katanaA_atk02.seq", "", 0, 3000 );
	
	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "KT001",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "KT026",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);
	
end	

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH3,	WEAPONTYPE_KATANA_A_SWORD	카타나 3타
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash3State_Katana_A_Sword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSound( "Resources/Sound/katana_cut.ogg", "Bip01", 350, 5000 );
	state:AddSound( "Resources/Sound/katana_cut_finish.ogg", "Bip01", 1000, 5000 );
	state:AddGhostTrail( "GhostTrail_katana_a_sword_01", 500, 1000 );

	state:AddSequence( 0, "Resources/Effects/katanaA_atk03.seq", "", 0, 2000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "KT002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "KT027",		0,	50,	100,	LOOP_FALSE,	1.0, RESET_TRUE	);

end


-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_STRONG,	WEAPONTYPE_KATANA_A_SWORD	카타나 강 공격
-------------------------------------------------------------------------------------------------------------
function SwordAtkStrongState_Katana_A_Sword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSound( "Resources/Sound/katana_cut_power.ogg", "Bip01", 1, 5000 );
	state:AddSound( "Resources/Sound/katana_cut_finish.ogg", "Bip01", 800, 5000 );
	state:AddGhostTrail( "GhostTrail_katana_a_sword_01", 0, 900 );

	state:AddSequence( 0, "Resources/Effects/katanaa_strong.seq", "", 0, 2000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "KT009",		0,	100,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "KT010",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_	ATK,	WEAPONTYPE_KATANA_A_SWORD	카타나 점프 공격
-------------------------------------------------------------------------------------------------------------
function SwordJumpAtkState_Katana_A_Sword( state )

	state:AddSoundBySex( "", "", "Bip01", 0, 2500 );
	state:AddSound( "Resources/Sound/katana_cut_air.ogg", "Bip01", 1, 5000 );
	state:AddGhostTrail( "GhostTrail_katana_a_sword_01", 100, 1200 );

	state:AddSequence( 0, "Resources/Effects/katanaA_jump.seq", "", 0, 400 );

	local index = 0;
	local ANIMPARAMLIST_BEGIN		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_BEGIN					):SetAnim( "KT029",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY					):SetAnim( "KT033",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON2_STRONG,	WEAPONTYPE_KATANA_A_SWORD	 -- 카타나 차지
-------------------------------------------------------------------------------------------------------------
function UseWeapon2Charge_Katana_A_Sword( state )
	
	state:AddSoundBySex( "", "", "Bip01", 0, 2500 );

	local index = 0;

	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "KT006_2",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
--	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "KT008",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);

end

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH4,	WEAPONTYPE_KATANA_A_SWORD -- 카타나 차지공격	
-------------------------------------------------------------------------------------------------------------
function UseWeapon2Dash_Katana_A_Sword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSound( "Resources/Sound/katana_cut_slash.ogg", "Bip01", 1, 5000 );
	state:AddSound( "Resources/Sound/katana_cut_finish.ogg", "Bip01", 1100, 5000 );
	state:AddGhostTrail( "GhostTrail_katana_a_sword_01", 50, 500 );

	state:AddSequence( 0, "Resources/Effects/katanaA_s_atk.seq", "", 0, 1500 );
	state:AddSequenceBySelf( 0, "Resources/Effects/katanaA_s_atk02_line01.seq", "", 0, 1500 ) ;

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "KT007",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "KT008",		0,	0,		1000,	LOOP_FALSE,	1.0, RESET_TRUE		);

end

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH4,	WEAPONTYPE_KATANA_A_SWORD -- 카타나 백 대쉬
-------------------------------------------------------------------------------------------------------------
function UseWeapon2BackDash_Katana_A_Sword( state )

state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );
	
	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "KT006_1",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
--	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "KT008",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);

end

-------------------------------------------------------------------------------------------------------------
-- 카타나 진
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH1,	WEAPONTYPE_KATANA_A_SWORD	카타나 진 1타
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash1State_Katana_JIN_Sword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );
	state:AddSound( "Resources/Sound/katana_cut.ogg", "Bip01", 200, 5000 );
	state:AddSound( "Resources/Sound/katana_cut_finish.ogg", "Bip01", 700, 5000 );
	--state:AddSound( "Resources/Sound/katana_cut_1.ogg", "Bip01", 1, 2500 );
	--state:AddSound( "Resources/Sound/katana_cut_2.ogg", "Bip01", 650, 2500 );
	state:AddGhostTrail( "GhostTrail_katana_a_sword_02",300, 600 );
--	state:AddGhostTrail( "GhostTrail_katana_a_sword_02", 50, 600 );
	--검 궤적이 뿌려지는 시작 시간, 검 궤적이 뿌려지는 종료 시간

	state:AddSequence( 0, "Resources/Effects/katanaA_atk01.seq", "", 0, 500 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "KT000",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "KT025",		0,	100,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);

end	


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH2,	WEAPONTYPE_KATANA_A_SWORD	카타나 진 2타
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash2State_Katana_JIN_Sword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 0, 2500 );
	state:AddSound( "Resources/Sound/katana_cut.ogg", "Bip01", 300, 5000 ); --1타 사운드
	state:AddSound( "Resources/Sound/katana_cut.ogg", "Bip01", 700, 5000 ); --2타 사운드
	state:AddSound( "Resources/Sound/katana_cut_finish.ogg", "Bip01", 1600, 5000 );
	state:AddGhostTrail( "GhostTrail_katana_a_sword_02", 50, 3000 );

	state:AddSequence( 0, "Resources/Effects/katanaA_atk02.seq", "", 0, 3000 );
	
	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "KT001",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "KT026",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);
	
end	

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH3,	WEAPONTYPE_KATANA_A_SWORD	카타나 진 3타
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash3State_Katana_JIN_Sword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSound( "Resources/Sound/katana_cut.ogg", "Bip01", 350, 5000 );
	state:AddSound( "Resources/Sound/katana_cut_finish.ogg", "Bip01", 1000, 5000 );
	state:AddGhostTrail( "GhostTrail_katana_a_sword_02", 500, 1000 );

	state:AddSequence( 0, "Resources/Effects/katanaA_atk03.seq", "", 0, 2000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "KT002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "KT027",		0,	50,	100,	LOOP_FALSE,	1.0, RESET_TRUE	);

end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_STRONG,	WEAPONTYPE_KATANA_A_SWORD	카타나 진 강 공격
-------------------------------------------------------------------------------------------------------------
function SwordAtkStrongState_Katana_JIN_Sword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSound( "Resources/Sound/katana_cut_power.ogg", "Bip01", 1, 5000 );
	state:AddSound( "Resources/Sound/katana_cut_finish.ogg", "Bip01", 800, 5000 );
	state:AddGhostTrail( "GhostTrail_katana_a_sword_02", 0, 900 );

	state:AddSequence( 0, "Resources/Effects/katanazin_strong.seq", "", 0, 2000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "KT009",		0,	100,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "KT010",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_	ATK,	WEAPONTYPE_KATANA_A_SWORD	카타나 진 점프 공격
-------------------------------------------------------------------------------------------------------------
function SwordJumpAtkState_Katana_JIN_Sword( state )

	state:AddSoundBySex( "", "", "Bip01", 0, 2500 );
	state:AddSound( "Resources/Sound/katana_cut_air.ogg", "Bip01", 1, 5000 );
	state:AddGhostTrail( "GhostTrail_katana_a_sword_02", 100, 1200 );

	state:AddSequence( 0, "Resources/Effects/katanazin_jump.seq", "", 0, 400 );

	local index = 0;
	local ANIMPARAMLIST_BEGIN		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_BEGIN					):SetAnim( "KT029",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY					):SetAnim( "KT033",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH4,	WEAPONTYPE_KATANA_A_SWORD -- 카타나 진 차지공격	
-------------------------------------------------------------------------------------------------------------
function UseWeapon2Dash_Katana_JIN_Sword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSound( "Resources/Sound/katana_cut_slash.ogg", "Bip01", 1, 5000 );
	state:AddSound( "Resources/Sound/katana_cut_finish.ogg", "Bip01", 1100, 5000 );
	state:AddGhostTrail( "GhostTrail_katana_a_sword_02", 50, 500 );

	state:AddSequence( 0, "Resources/Effects/katanaA_s_atk.seq", "", 0, 1500 );
	state:AddSequenceBySelf( 0, "Resources/Effects/katanaA_s_atk02_line01.seq", "", 0, 1500 ) ;

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "KT007",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "KT008",		0,	0,		1000,	LOOP_FALSE,	1.0, RESET_TRUE		);

end


-------------------------------------------------------------------------------------------------------------
-- 카타나 비올라
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH1,	WEAPONTYPE_KATANA_A_SWORD	카타나 비올라 1타
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash1State_Katana_VIOLA_Sword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_1.ogg", "Resources/Sound/voice_girl_attack_1.ogg", "Bip01", 0, 2500 );
	state:AddSound( "Resources/Sound/katana_cut.ogg", "Bip01", 200, 5000 );
	state:AddSound( "Resources/Sound/katana_cut_finish.ogg", "Bip01", 700, 5000 );
	--state:AddSound( "Resources/Sound/katana_cut_1.ogg", "Bip01", 1, 2500 );
	--state:AddSound( "Resources/Sound/katana_cut_2.ogg", "Bip01", 650, 2500 );
	state:AddGhostTrail( "GhostTrail_katana_a_sword_03",300, 600 );
--	state:AddGhostTrail( "GhostTrail_katana_a_sword_03", 50, 600 );
	--검 궤적이 뿌려지는 시작 시간, 검 궤적이 뿌려지는 종료 시간

	state:AddSequence( 0, "Resources/Effects/katanaviola_atk01.seq", "", 0, 500 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "KT000",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "KT025",		0,	100,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);

end	


-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH2,	WEAPONTYPE_KATANA_A_SWORD	카타나 비올라 2타
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash2State_Katana_VIOLA_Sword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 0, 2500 );
	state:AddSound( "Resources/Sound/katana_cut.ogg", "Bip01", 300, 5000 ); --1타 사운드
	state:AddSound( "Resources/Sound/katana_cut.ogg", "Bip01", 700, 5000 ); --2타 사운드
	state:AddSound( "Resources/Sound/katana_cut_finish.ogg", "Bip01", 1600, 5000 );
	state:AddGhostTrail( "GhostTrail_katana_a_sword_03", 50, 3000 );

	state:AddSequence( 0, "Resources/Effects/katanaviola_atk02.seq", "", 0, 3000 );
	
	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "KT001",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "KT026",		0,	1000,	1000,	LOOP_FALSE,	1.0, RESET_TRUE	);
	
end	

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH3,	WEAPONTYPE_KATANA_A_SWORD	카타나 비올라 3타
-------------------------------------------------------------------------------------------------------------
function SwordAtkAfterDash3State_Katana_VIOLA_Sword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSound( "Resources/Sound/katana_cut.ogg", "Bip01", 350, 5000 );
	state:AddSound( "Resources/Sound/katana_cut_finish.ogg", "Bip01", 1000, 5000 );
	state:AddGhostTrail( "GhostTrail_katana_a_sword_03", 500, 1000 );

	state:AddSequence( 0, "Resources/Effects/katanaviola_atk03.seq", "", 0, 2000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "KT002",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "KT027",		0,	50,	100,	LOOP_FALSE,	1.0, RESET_TRUE	);

end

-------------------------------------------------------------------------------------------------------------
-- STATE_USE_WEAPON1_STRONG,	WEAPONTYPE_KATANA_A_SWORD	카타나 진 비올라 강공격
-------------------------------------------------------------------------------------------------------------
function SwordAtkStrongState_Katana_VIOLA_Sword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSound( "Resources/Sound/katana_cut_power.ogg", "Bip01", 1, 5000 );
	state:AddSound( "Resources/Sound/katana_cut_finish.ogg", "Bip01", 800, 5000 );
	state:AddGhostTrail( "GhostTrail_katana_a_sword_03", 0, 900 );

	state:AddSequence( 0, "Resources/Effects/katanaviola_strong.seq", "", 0, 2000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "KT009",		0,	100,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "KT010",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
				
end

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_	ATK,	WEAPONTYPE_KATANA_A_SWORD	카타나 비올라 점프 공격
-------------------------------------------------------------------------------------------------------------
function SwordJumpAtkState_Katana_VIOLA_Sword( state )

	state:AddSoundBySex( "", "", "Bip01", 0, 2500 );
	state:AddSound( "Resources/Sound/katana_cut_air.ogg", "Bip01", 1, 5000 );
	state:AddGhostTrail( "GhostTrail_katana_a_sword_03", 100, 1200 );

	state:AddSequence( 0, "Resources/Effects/katanaviola_jump.seq", "", 0, 400 );

	local index = 0;
	local ANIMPARAMLIST_BEGIN		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_BEGIN					):SetAnim( "KT029",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY					):SetAnim( "KT033",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	
end

-------------------------------------------------------------------------------------------------------------
-- STATE_SWORD_ATK_ATFER_DASH4,	WEAPONTYPE_KATANA_A_SWORD -- 카타나 비올라 차지공격	
-------------------------------------------------------------------------------------------------------------
function UseWeapon2Dash_Katana_VIOLA_Sword( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSound( "Resources/Sound/katana_cut_slash.ogg", "Bip01", 1, 5000 );
	state:AddSound( "Resources/Sound/katana_cut_finish.ogg", "Bip01", 1100, 5000 );
	state:AddGhostTrail( "GhostTrail_katana_a_sword_03", 50, 500 );

	state:AddSequence( 0, "Resources/Effects/katanaviola_s_atk.seq", "", 0, 1500 );
	state:AddSequenceBySelf( 0, "Resources/Effects/katanaA_s_atk02_line01.seq", "", 0, 1500 ) ;

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "KT007",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "KT008",		0,	0,		1000,	LOOP_FALSE,	1.0, RESET_TRUE		);

end
