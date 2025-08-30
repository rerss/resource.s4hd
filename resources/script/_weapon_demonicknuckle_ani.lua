require "Resources/Script/ActorStates_Constants.lua"
--[[
< 데모닉 너클 애니메이션 설정 >

1. 노말, 런, 데미지 상태 애니메이션 설정
2. 약공격1, 약공격2, 점프 공격, 스페셜 공격(우클릭) 애니메이션 설정.

* 무기 타입 : WEAPONTYPE_DEMONIC_KNUCKLE
* 초기 제작 : minho

]]--

-------------------------------------------------------------------------------------------------------------
-- 데모닉 너클을 들고 "노말" 상태 애니 설정.
-------------------------------------------------------------------------------------------------------------
function NormalState_DemonicKnuckle( state )

	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "KN000", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	
end

-------------------------------------------------------------------------------------------------------------
-- 데모닉 너클을 들고 "런" 상태 애니 설정.
-------------------------------------------------------------------------------------------------------------
function RunState_DemonicKnuckle( state )

	local index = 0;
	local ANIMPARAMLIST_UPPER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_UPPER_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_LEFT_BACK		= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_FRONT	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_RIGHT_BACK	= index; index = index + 1;
	local ANIMPARAMLIST_LOWER_BACK			= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_UPPER_FRONT		):SetAnim( "KN001", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_FRONT	):SetAnim( "KN002", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT		):SetAnim( "KN003", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_FRONT	):SetAnim( "KN004", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT		):SetAnim( "KN005", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_BACK		):SetAnim( "KN006", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_LEFT_BACK	):SetAnim( "KN007", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_UPPER_RIGHT_BACK	):SetAnim( "KN008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_FRONT		):SetAnim( "KN001", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_FRONT	):SetAnim( "KN002", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT		):SetAnim( "KN003", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_FRONT	):SetAnim( "KN004", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT		):SetAnim( "KN005", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_BACK		):SetAnim( "KN006", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_LEFT_BACK	):SetAnim( "KN007", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	state:GetAnimParam( ANIMPARAMLIST_LOWER_RIGHT_BACK	):SetAnim( "KN008", 0,	1000, 0,	LOOP_TRUE, 1.0, RESET_FALSE );

end

-------------------------------------------------------------------------------------------------------------
-- 데모닉 너클을 들고 "데미지" 받은 상태 애니 설정.
-------------------------------------------------------------------------------------------------------------
function DamageState_DemonicKnuckle( state )
	
	local index = 0;
	local ANIMPARAMLIST_FRONT			= index; index = index + 1;
	local ANIMPARAMLIST_BACK			= index; index = index + 1;
	local ANIMPARAMLIST_LEFT			= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT			= index; index = index + 1;
	local ANIMPARAMLIST_FRONT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_BACK_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_LEFT_WEAK		= index; index = index + 1;
	local ANIMPARAMLIST_RIGHT_WEAK		= index; index = index + 1;

	state:GetAnimParam( ANIMPARAMLIST_FRONT					):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK					):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT					):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT					):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_FRONT_WEAK			):SetAnim( "00016",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_BACK_WEAK				):SetAnim( "00017",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_LEFT_WEAK				):SetAnim( "00018",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_RIGHT_WEAK			):SetAnim( "00019",		0,	0,	0,	LOOP_FALSE,	0.05, RESET_TRUE		);
	
	-- LowerPart
	lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT			):SetAnim( "A0005", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "A0006", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT			):SetAnim( "A0007", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "A0008", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT			):SetAnim( "A0009", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK			):SetAnim( "A0010", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "A0011", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "A0012", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "00016", 0,	500, 0,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end

-------------------------------------------------------------------------------------------------------------
-- 데모닉 너클을 들고 "약공격 1, 2"를 한 상태의 애니메이션 처리.
-------------------------------------------------------------------------------------------------------------
function ANI_LeftAttack_DemonicKnuckle( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0 , 5000 );

	state:AddGhostTrail( "GhostTrail_Demonic_Knuckle_Left", 0, 150 );
	state:AddGhostTrail( "GhostTrail_Demonic_Knuckle_Right", 0, 150 );
	state:AddSequence( 0, "Resources/Effects/demonic_claw_01.seq", "", 0, 5000 );
	state:AddSequence( 0, "Resources/Effects/demonic_claw_02.seq", "", 0, 5000 );
	
	LEFT_HAND 	= 1;
	RIGHT_HAND 	= 0;
	
	state:GetAnimParam( RIGHT_HAND ):SetAnim( "KN012",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( LEFT_HAND  ):SetAnim( "KN011",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);

	state:ClearOnlyOneContainer();
		
	state:SetOnlyOneGhostTrail(RIGHT_HAND, "GhostTrail_Demonic_Knuckle_Right");
	state:SetOnlyOneGhostTrail(LEFT_HAND, "GhostTrail_Demonic_Knuckle_Left");
	
	state:SetOnlyOneSequence(RIGHT_HAND, "Resources/Effects/demonic_claw_02.seq");
	state:SetOnlyOneSequence(LEFT_HAND, "Resources/Effects/demonic_claw_01.seq");
	
--	state:AddSequenceByAnim( 0, "", "", 0, 5000 );
	
	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "A0024", 0,	500, 300,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end	

-------------------------------------------------------------------------------------------------------------
-- 메탈릭 너클을 들고 "약공격 1, 2"를 한 상태의 애니메이션 처리.
-------------------------------------------------------------------------------------------------------------
function ANI_LeftAttack_MetalicKnuckle( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0 , 5000 );

	state:AddGhostTrail( "GhostTrail_Demonic_Knuckle_Left", 0, 100 );
	state:AddGhostTrail( "GhostTrail_Demonic_Knuckle_Right", 0, 100 );
	state:AddSequence( 0, "Resources/Effects/metallic_claw_01.seq", "", 0, 5000 );
	state:AddSequence( 0, "Resources/Effects/metallic_claw_02.seq", "", 0, 5000 );
	
	LEFT_HAND 	= 1;
	RIGHT_HAND 	= 0;
	
	state:GetAnimParam( RIGHT_HAND ):SetAnim( "KN012",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( LEFT_HAND  ):SetAnim( "KN011",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);

	state:ClearOnlyOneContainer();
	
	state:SetOnlyOneGhostTrail(RIGHT_HAND, "GhostTrail_Demonic_Knuckle_Right");
	state:SetOnlyOneGhostTrail(LEFT_HAND, "GhostTrail_Demonic_Knuckle_Left");
	
	state:SetOnlyOneSequence(RIGHT_HAND, "Resources/Effects/metallic_claw_02.seq");
	state:SetOnlyOneSequence(LEFT_HAND, "Resources/Effects/metallic_claw_01.seq");
	
--	state:AddSequenceByAnim( 0, "", "", 0, 5000 );
	
	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "A0024", 0,	500, 300,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end	

-------------------------------------------------------------------------------------------------------------
-- 캣 너클을 들고 "약공격 1, 2"를 한 상태의 애니메이션 처리.
-------------------------------------------------------------------------------------------------------------
function ANI_LeftAttack_CatKnuckle( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0 , 5000 );

	state:AddGhostTrail( "GhostTrail_Demonic_Knuckle_Left", 0, 150 );
	state:AddGhostTrail( "GhostTrail_Demonic_Knuckle_Right", 0, 150 );
	state:AddSequence( 0, "Resources/Effects/demonic_claw_02.seq", "", 0, 5000 );
	state:AddSequence( 0, "Resources/Effects/metallic_claw_01.seq", "", 0, 5000 );
	
	LEFT_HAND 	= 1;
	RIGHT_HAND 	= 0;
	
	state:GetAnimParam( RIGHT_HAND ):SetAnim( "KN012",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);
	state:GetAnimParam( LEFT_HAND  ):SetAnim( "KN011",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	);

	state:ClearOnlyOneContainer();
		
--	state:SetOnlyOneGhostTrail(RIGHT_HAND, "GhostTrail_Demonic_Knuckle_Right");
--	state:SetOnlyOneGhostTrail(LEFT_HAND, "GhostTrail_Demonic_Knuckle_Left");
	
	state:SetOnlyOneSequence(RIGHT_HAND, "Resources/Effects/demonic_claw_02.seq");
	state:SetOnlyOneSequence(LEFT_HAND, "Resources/Effects/metallic_claw_01.seq");
	
--	state:AddSequenceByAnim( 0, "", "", 0, 5000 );
	
	local lowerPartStateSet = state:GetLowerPartStateSet( 0 );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_FRONT		):SetAnim( "E0008", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_FRONT		):SetAnim( "E0009", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT		):SetAnim( "E0010", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_FRONT	):SetAnim( "E0011", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT		):SetAnim( "E0012", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_BACK		):SetAnim( "E0013", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_LEFT_BACK		):SetAnim( "E0014", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_RIGHT_BACK		):SetAnim( "E0015", 800,	500, 500,	LOOP_TRUE, 1.0, RESET_FALSE );
	lowerPartStateSet:GetWalkAnimParam	( LOWER_ANIM_NORMAL			):SetAnim( "A0024", 0,	500, 300,	LOOP_TRUE, 1.0, RESET_TRUE );
	
end	

-------------------------------------------------------------------------------------------------------------
-- 데모닉 너클을 들고 "약공격 2"를 한 상태의 애니메이션 처리.
--
-- !!! 껍데기로만 존재하고 현재는 사용 안함 !!!
--
-------------------------------------------------------------------------------------------------------------
function ANI_LeftAttack2_DemonicKnuckle( state )
	state:AddSoundBySex( "Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0 , 5000 );

	--state:AddGhostTrail( "GhostTrail_Demonic_Knuckle_Left", 50, 300 );
	state:AddGhostTrail( "GhostTrail_Demonic_Knuckle_Right", 50, 300 );
	state:AddSequence( 0, "", "", 0, 5000 );

	local index = 0;
	local ANIMPARAMLIST_NORMAL_FIRST	= index; 
	
	state:GetAnimParam( ANIMPARAMLIST_NORMAL_FIRST					):SetAnim( "KN012",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE	); -- 오른손 공격
	
	
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
-- 데모닉 너클을 들고 "점프 공격"을 한 상태의 애니메이션 처리.
-------------------------------------------------------------------------------------------------------------
function ANI_LeftJump_DemonicKnuckle( state )
	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	
	state:AddGhostTrail( "GhostTrail_Demonic_Knuckle_Left", 50, 400 );
	state:AddGhostTrail( "GhostTrail_Demonic_Knuckle_Right", 50, 1000 );	
	state:AddSequence( 0, "Resources/Effects/demonic_kn013_eff_01.seq", "Resources/Sound/bsword_counter.ogg", 500, 5000 );

	local index = 0;
	local ANIMPARAMLIST_BEGIN		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_BEGIN					):SetAnim( "KN013",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY					):SetAnim( "KN023",		0,	500,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);

end

-------------------------------------------------------------------------------------------------------------
-- 메탈릭 너클을 들고 "점프 공격"을 한 상태의 애니메이션 처리.
-------------------------------------------------------------------------------------------------------------
function ANI_LeftJump_MetalicKnuckle( state )
	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	
	state:AddGhostTrail( "GhostTrail_Demonic_Knuckle_Left", 50, 400 );
	state:AddGhostTrail( "GhostTrail_Demonic_Knuckle_Right", 50, 700 );	
	state:AddSequence( 0, "Resources/Effects/demonic_kn013_eff_01.seq", "Resources/Sound/bsword_counter.ogg", 500, 5000 );

	local index = 0;
	local ANIMPARAMLIST_BEGIN		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_BEGIN					):SetAnim( "KN013",		0,	50,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY					):SetAnim( "KN023",		0,	500,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);

end

-------------------------------------------------------------------------------------------------------------
-- 데모닉 너클을 들고 "특수 공격"을 한 상태의 애니메이션 처리.
-------------------------------------------------------------------------------------------------------------
function ANI_RightAttack_DemonicKnuckle( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSequence( 0, "Resources/Effects/demonic_kn014_eff_01.seq", "", 0, 2000 ); 

	state:AddGhostTrail( "GhostTrail_Demonic_Knuckle_Left", 0, 100 );
	state:AddGhostTrail( "GhostTrail_Demonic_Knuckle_Right", 0, 100 );
	
	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "KN014",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "KN024",		800,	0,		1000,	LOOP_FALSE,	1.0, RESET_TRUE		);

end

-------------------------------------------------------------------------------------------------------------
-- 메탈릭 너클을 들고 "특수 공격"을 한 상태의 애니메이션 처리.
-------------------------------------------------------------------------------------------------------------
function ANI_RightAttack_MetalicKnuckle( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSequence( 0, "Resources/Effects/metallic_kn014_eff_01.seq", "", 0, 2000 ); 

	state:AddGhostTrail( "GhostTrail_Demonic_Knuckle_Left", 0, 100 );
	state:AddGhostTrail( "GhostTrail_Demonic_Knuckle_Right", 0, 100 );
	
	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "KN014",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "KN024",		800,	0,		1000,	LOOP_FALSE,	1.0, RESET_TRUE		);

end

-------------------------------------------------------------------------------------------------------------
-- 캣 너클을 들고 "특수 공격"을 한 상태의 애니메이션 처리.
-------------------------------------------------------------------------------------------------------------
function ANI_RightAttack_CatKnuckle( state )

	state:AddSoundBySex( "Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500 );
	state:AddSequence( 0, "Resources/Effects/demonic_cat_knuckle_eff.seq", "", 0, 2000 ); 
	state:AddSequence( 0, "", "Resources/Sound/catnyan.ogg", 800, 0 ); 

	state:AddGhostTrail( "GhostTrail_Demonic_Knuckle_Left", 0, 100 );
	state:AddGhostTrail( "GhostTrail_Demonic_Knuckle_Right", 0, 100 );
	
	local index = 0;
	local ANIMPARAMLIST_NORMAL		= index; index = index + 1;
	local ANIMPARAMLIST_DELAY		= index; index = index + 1;
				
	state:GetAnimParam( ANIMPARAMLIST_NORMAL					):SetAnim( "KN014",		0,	200,	0,	LOOP_FALSE,	1.0, RESET_TRUE		);
	state:GetAnimParam( ANIMPARAMLIST_DELAY						):SetAnim( "KN024",		800,	0,		1000,	LOOP_FALSE,	1.0, RESET_TRUE		);

end
