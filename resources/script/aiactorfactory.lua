require "Resources/Script/AIDef.lua"

-- 스테이지1 등장 NPC
require "Resources/Script/AIActor_TypeTRA.lua"
require "Resources/Script/AIActor_TypeTRB.lua"
require "Resources/Script/AIActor_TypeTRB_HighSpeed.lua"
require "Resources/Script/AIActor_TypeTRB_Big.lua"

-- 스테이지2 등장 NPC
require "Resources/Script/AIActor_TypeA.lua"
require "Resources/Script/AIActor_TypeB.lua"
require "Resources/Script/AIActor_TypeChiefFan.lua"
require "Resources/Script/AIActor_TypeChiefSword.lua"
require "Resources/Script/AIActor_TypeChiefSMH.lua"
require "Resources/Script/AIActor_TypeTeajoSword.lua"
require "Resources/Script/AIActor_TypeTeajo.lua"

-- 스테이지3 등장 NPC
require "Resources/Script/AIActor_TypeTRC.lua"
require "Resources/Script/AIActor_TypeTRD.lua"
require "Resources/Script/AIActor_TypeVirus.lua"

-- 스테이지4 등장 NPC
require "Resources/Script/AIActor_TypeTeajoA.lua"
require "Resources/Script/AIActor_TypeVirusClose.lua"
require "Resources/Script/AIActor_TypeVirusEsperS.lua"
require "Resources/Script/AIActor_TypeVirusEsperSS.lua"
require "Resources/Script/AIActor_TypeHMG_Captain.lua"

-- 스테이지5 등장 NPC
require "Resources/Script/AIActor_TypeD.lua"
require "Resources/Script/AIActor_TypeMoongK.lua"

-- 스테이지6 등장 NPC
require "Resources/Script/AIActor_TypeMindShock.lua"
require "Resources/Script/AIActor_TypeCannonade.lua"
require "Resources/Script/AIActor_TypeBossShota.lua"
require "Resources/Script/AIActor_TypeBossShotaA.lua"

-- 스테이지7 등장 NPC
require "Resources/Script/AIActor_TypeKiki.lua"
require "Resources/Script/AIActor_TypeCounterSwordCombo.lua"
require "Resources/Script/AIActor_TypeVirusEsperCU.lua"
require "Resources/Script/AIActor_TypeRailgun.lua"
require "Resources/Script/AIActor_TypeVirusGuard.lua"
require "Resources/Script/AIActor_TypeVirusTeajo.lua"
require "Resources/Script/AIActor_TypeBind.lua"
require "Resources/Script/AIActor_TypeE.lua"
require "Resources/Script/AIActor_TypeVirusEsperSS2.lua"
require "Resources/Script/AIActor_TypeTRA_Big.lua"


-- 스테이지8 등장 NPC
require "Resources/Script/AIActor_TypeBossVirus.lua"
require "Resources/Script/AIActor_TypeVirusHelper.lua"

--[[ 생존미션 테스트 NPC
require "Resources/Script/AIActor_TypeTRA_test.lua"
require "Resources/Script/AIActor_TypeTRA_test01.lua"
require "Resources/Script/AIActor_TypeTRA_Big_test.lua"
require "Resources/Script/AIActor_TypeTRA_Big_test01.lua"
require "Resources/Script/AIActor_TypeTRD_test.lua"
--]]
-- 사용 안하는 AIActor
--[[ 나중에 이용할 수 있으므로 삭제하면 안됨
require "Resources/Script/AIActor_TypeRevolver.lua"
require "Resources/Script/AIActor_TypePlasmaSwordRush.lua"
require "Resources/Script/AIActor_TypePlasmaSwordRush2.lua"
require "Resources/Script/AIActor_TypeHMG.lua"
require "Resources/Script/AIActor_TypeRobotCloseAttack.lua"
require "Resources/Script/AIActor_TypeRobotRoundAttack.lua"
require "Resources/Script/AIActor_TypeCounterSwordGuard.lua"
require "Resources/Script/AIActor_TypeCounterSwordStrong.lua"
require "Resources/Script/AIActor_TypeMindEnergy.lua"
require "Resources/Script/AIActor_TypeVirusEsperR.lua"
require "Resources/Script/AIActor_TypeSMG_Stand.lua"
--]]

function CreateAIActor( ActorType )


	if "TypeA" == ActorType then
	
		TypeA_Init();
		
		AIActor:Create();
		
		TypeA_CostumeSetting();
		TypeA_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeA_AIActorSetting();	

	elseif "TypeD" == ActorType then
	
		TypeD_Init();
		
		AIActor:Create();
		
		TypeD_CostumeSetting();
		TypeD_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeD_AIActorSetting();

	elseif "TypeE" == ActorType then
	
		TypeE_Init();
		
		AIActor:Create();
		
		TypeE_CostumeSetting();
		TypeE_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeE_AIActorSetting();

	elseif "TypeVirusEsperS" == ActorType then
	
		TypeVirusEsperS_Init();
		
		AIActor:Create();
		
		TypeVirusEsperS_CostumeSetting();
		TypeVirusEsperS_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeVirusEsperS_AIActorSetting();	
		
	elseif "TypeVirusEsperSS" == ActorType then
	
		TypeVirusEsperSS_Init();
		
		AIActor:Create();
		
		TypeVirusEsperSS_CostumeSetting();
		TypeVirusEsperSS_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeVirusEsperSS_AIActorSetting();	
	
	elseif "TypeVirusEsperSS2" == ActorType then
	
		TypeVirusEsperSS2_Init();
		
		AIActor:Create();
		
		TypeVirusEsperSS2_CostumeSetting();
		TypeVirusEsperSS2_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeVirusEsperSS2_AIActorSetting();	
		
	elseif "TypeB" == ActorType then

		TypeB_Init();
		
		AIActor:Create();
		
		TypeB_CostumeSetting();
		TypeB_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeB_AIActorSetting();

	elseif "TypeChiefFan" == ActorType then

		TypeChiefFan_Init();
		
		AIActor:Create();
		
		TypeChiefFan_CostumeSetting();
		TypeChiefFan_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeChiefFan_AIActorSetting();

	elseif "TypeChiefSword" == ActorType then

		TypeChiefSword_Init();
		
		AIActor:Create();
		
		TypeChiefSword_CostumeSetting();
		TypeChiefSword_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeChiefSword_AIActorSetting();

	elseif "TypeChiefSMH" == ActorType then

		TypeChiefSMH_Init();
		
		AIActor:Create();
		
		TypeChiefSMH_CostumeSetting();
		TypeChiefSMH_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeChiefSMH_AIActorSetting();

	elseif "TypeTeajoSword" == ActorType then

		TypeTeajoSword_Init();
		
		AIActor:Create();
		
		TypeTeajoSword_CostumeSetting();
		TypeTeajoSword_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeTeajoSword_AIActorSetting();
	
	elseif "TypeTeajo" == ActorType then

		TypeTeajo_Init();
		
		AIActor:Create();
		
		TypeTeajo_CostumeSetting();
		TypeTeajo_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeTeajo_AIActorSetting();
	
	--[[ 사용안함
	elseif "TypeRevolver" == ActorType then

		TypeRevolver_Init();
		
		AIActor:Create();
		
		TypeRevolver_CostumeSetting();
		TypeRevolver_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeRevolver_AIActorSetting();	
	--]]
	
	--[[ 사용안함
	elseif "TypePlasmaSwordRush" == ActorType then
	
		TypePlasmaSwordRush_Init();
		
		AIActor:Create();
		
		TypePlasmaSwordRush_CostumeSetting();
		TypePlasmaSwordRush_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypePlasmaSwordRush_AIActorSetting();	
	--]]
	
	--[[ 사용안함
	elseif "TypePlasmaSwordRush2" == ActorType then
	
		TypePlasmaSwordRush2_Init();
		
		AIActor:Create();
		
		TypePlasmaSwordRush2_CostumeSetting();
		TypePlasmaSwordRush2_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypePlasmaSwordRush2_AIActorSetting();	
	--]]
	
	--[[ 사용안함
	elseif "TypeHMG" == ActorType then
		
		TypeHMG_Init();
	
		AIActor:Create();
	
		TypeHMG_CostumeSetting();
		TypeHMG_WeaponSetting();
	
		AIActor:RefreshRenderSetting();
	
		TypeHMG_AIActorSetting();	
	--]]
	
	elseif "TypeKiki" == ActorType then
		
		TypeKiki_Init();
		
		AIActor:Create();
		
		TypeKiki_CostumeSetting();
		TypeKiki_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeKiki_AIActorSetting();
	
	--[[ 사용안함
	elseif "TypeRobotCloseAttack" == ActorType then
		
		TypeRobotCloseAttack_Init();
		
		AIActor:Create();
		
		TypeRobotCloseAttack_CostumeSetting();
		TypeRobotCloseAttack_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeRobotCloseAttack_AIActorSetting();
	--]]
	
	--[[ 사용안함
	elseif "TypeRobotRoundAttack" == ActorType then
		
		TypeRobotRoundAttack_Init();
		
		AIActor:Create();
		
		TypeRobotRoundAttack_CostumeSetting();
		TypeRobotRoundAttack_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeRobotRoundAttack_AIActorSetting();
	--]]
	
	elseif "TypeTeajoA" == ActorType then

		TypeTeajoA_Init();
		
		AIActor:Create();
		
		TypeTeajoA_CostumeSetting();
		TypeTeajoA_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeTeajoA_AIActorSetting();
		
	--[[ 사용안함
	elseif "TypeCounterSwordStrong" == ActorType then

		TypeCounterSwordStrong_Init();

		AIActor:Create();
		
		TypeCounterSwordStrong_CostumeSetting();
		TypeCounterSwordStrong_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeCounterSwordStrong_AIActorSetting();
	--]]
	
	elseif "TypeHMG_Captain" == ActorType then

		TypeHMG_Captain_Init();

		AIActor:Create();
		
		TypeHMG_Captain_CostumeSetting();
		TypeHMG_Captain_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeHMG_Captain_AIActorSetting();

	--[[ 사용안함
	elseif "TypeCounterSwordGuard" == ActorType then

		TypeCounterSwordGuard_Init();

		AIActor:Create();
		
		TypeCounterSwordGuard_CostumeSetting();
		TypeCounterSwordGuard_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeCounterSwordGuard_AIActorSetting();
	--]]
	
	elseif "TypeCounterSwordCombo" == ActorType then

		TypeCounterSwordCombo_Init();

		AIActor:Create();
		
		TypeCounterSwordCombo_CostumeSetting();
		TypeCounterSwordCombo_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeCounterSwordCombo_AIActorSetting();		

	elseif "TypeVirusClose" == ActorType then

		TypeVirusClose_Init();

		AIActor:Create();
		
		TypeVirusClose_CostumeSetting();
		TypeVirusClose_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeVirusClose_AIActorSetting();

	--[[ 사용안함
	elseif "TypeVirusEsperR" == ActorType then

		TypeVirusEsperR_Init();

		AIActor:Create();
		
		TypeVirusEsperR_CostumeSetting();
		TypeVirusEsperR_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeVirusEsperR_AIActorSetting();
	--]]
	
	elseif "TypeVirusEsperCU" == ActorType then

		TypeVirusEsperCU_Init();

		AIActor:Create();
		
		TypeVirusEsperCU_CostumeSetting();
		TypeVirusEsperCU_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeVirusEsperCU_AIActorSetting();

	elseif "TypeRailgun" == ActorType then

		TypeRailgun_Init();

		AIActor:Create();
		
		TypeRailgun_CostumeSetting();
		TypeRailgun_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeRailgun_AIActorSetting();

	elseif "TypeCannonade" == ActorType then

		TypeCannonade_Init();

		AIActor:Create();
		
		TypeCannonade_CostumeSetting();
		TypeCannonade_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeCannonade_AIActorSetting();

	elseif "TypeVirusGuard" == ActorType then

		TypeVirusGuard_Init();

		AIActor:Create();
		
		TypeVirusGuard_CostumeSetting();
		TypeVirusGuard_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeVirusGuard_AIActorSetting();		

	--[[ 사용안함
	elseif "TypeSMG_Stand" == ActorType then

		TypeSMG_Stand_Init();

		AIActor:Create();
		
		TypeSMG_Stand_CostumeSetting();
		TypeSMG_Stand_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeSMG_Stand_AIActorSetting();
	--]]

	elseif "TypeMoongK" == ActorType then

		TypeMoongK_Init();

		AIActor:Create();
		
		TypeMoongK_CostumeSetting();
		TypeMoongK_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeMoongK_AIActorSetting();		
	
	elseif "TypeMindShock" == ActorType then
	
		TypeMindShock_Init();
		
		AIActor:Create();
		
		TypeMindShock_CostumeSetting();
		TypeMindShock_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeMindShock_AIActorSetting();
		
	--[[ 사용안함	
	elseif "TypeMindEnergy" == ActorType then
	
		TypeMindEnergy_Init();
		
		AIActor:Create();
		
		TypeMindEnergy_CostumeSetting();
		TypeMindEnergy_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeMindEnergy_AIActorSetting();	
	--]]
	
	elseif "TypeVirusTeajo" == ActorType then
	
		TypeVirusTeajo_Init();
		
		AIActor:Create();
		
		TypeVirusTeajo_CostumeSetting();
		TypeVirusTeajo_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeVirusTeajo_AIActorSetting();	
		
	elseif "TypeBind" == ActorType then
	
		TypeBind_Init();
		
		AIActor:Create();
		
		TypeBind_CostumeSetting();
		TypeBind_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeBind_AIActorSetting();	
		
	elseif "TypeBossVirus" == ActorType then
	
		TypeBossVirus_Init();
		
		AIActor:CreateEx( "Resources/Effects/pve_boss_fog01.seq" );
		
		TypeBossVirus_CostumeSetting();
		TypeBossVirus_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeBossVirus_AIActorSetting();	
		
	elseif "TypeBossShota" == ActorType then
	
		TypeBossShota_Init();

		AIActor:CreateEx( "Resources/Effects/pve_shota_01.seq" );
		
		TypeBossShota_CostumeSetting();
		TypeBossShota_WeaponSetting();


		AIActor:RefreshRenderSetting();
		
		TypeBossShota_AIActorSetting();				
	
	elseif "TypeBossShotaA" == ActorType then
	
		TypeBossShotaA_Init();
		
		AIActor:CreateEx( "Resources/Effects/pve_shota_01.seq" );
		
		TypeBossShotaA_CostumeSetting();
		TypeBossShotaA_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeBossShotaA_AIActorSetting();		

	elseif "TypeTRA" == ActorType then

		TypeTRA_Init();
		
		AIActor:Create();
		
		TypeTRA_CostumeSetting();
		TypeTRA_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeTRA_AIActorSetting();	
		
	--생존미션 AI test
	elseif "TypeTRA_test" == ActorType then

		TypeTRA_test_Init();
		
		AIActor:Create();
		
		TypeTRA_CostumeSetting();
		TypeTRA_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeTRA_AIActorSetting();	
		
	elseif "TypeTRA_test01" == ActorType then

		TypeTRA_test01_Init();
		
		AIActor:Create();
		
		TypeTRA_CostumeSetting();
		TypeTRA_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeTRA_AIActorSetting();	

	elseif "TypeTRB" == ActorType then

		TypeTRB_Init();
		
		AIActor:Create();
		
		TypeTRB_CostumeSetting();
		TypeTRB_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeTRB_AIActorSetting();			
		
	elseif "TypeTRB_HighSpeed" == ActorType then

		TypeTRB_HighSpeed_Init();
		
		AIActor:Create();
		
		TypeTRB_HighSpeed_CostumeSetting();
		TypeTRB_HighSpeed_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeTRB_HighSpeed_AIActorSetting();			

	elseif "TypeTRC" == ActorType then

		TypeTRC_Init();
		
		AIActor:CreateEx( "Resources/Effects/pve_jaco.seq" );
		
		TypeTRC_CostumeSetting();
		TypeTRC_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeTRC_AIActorSetting();	

	elseif "TypeTRD" == ActorType then

		TypeTRD_Init();
		
		AIActor:CreateEx( "Resources/Effects/pve_jaco.seq" );
		
		TypeTRD_CostumeSetting();
		TypeTRD_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeTRD_AIActorSetting();
	
	elseif "TypeTRD_test" == ActorType then

		TypeTRD_test_Init();
		
		AIActor:CreateEx( "Resources/Effects/pve_jaco.seq" );
		
		TypeTRD_CostumeSetting();
		TypeTRD_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeTRD_AIActorSetting();	

	elseif "TypeVirus" == ActorType then

		TypeVirus_Init();
		
		AIActor:Create();
		
		TypeVirus_CostumeSetting();
		TypeVirus_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeVirus_AIActorSetting();

	elseif "TypeVirusHelper" == ActorType then

		TypeVirusHelper_Init();
		
		AIActor:Create();
		
		TypeVirusHelper_CostumeSetting();
		TypeVirusHelper_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeVirusHelper_AIActorSetting();
		
	elseif "TypeTRB_Big" == ActorType then

		TypeTRB_Big_Init();
		
		AIActor:Create();
		
		TypeTRB_Big_CostumeSetting();
		TypeTRB_Big_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeTRB_Big_AIActorSetting();
		
	elseif "TypeTRA_Big" == ActorType then

		TypeTRA_Big_Init();
		
		AIActor:Create();
		
		TypeTRA_Big_CostumeSetting();
		TypeTRA_Big_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeTRA_Big_AIActorSetting();
		
	--생존미션 AI test
	elseif "TypeTRA_Big_test" == ActorType then	
		
		TypeTRA_Big_test_Init();
		
		AIActor:Create();
		
		TypeTRA_Big_CostumeSetting();
		TypeTRA_Big_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeTRA_Big_AIActorSetting();
	
	elseif "TypeTRA_Big_test01" == ActorType then	
		
		TypeTRA_Big_test01_Init();
		
		AIActor:Create();
		
		TypeTRA_Big_CostumeSetting();
		TypeTRA_Big_WeaponSetting();
		
		AIActor:RefreshRenderSetting();
		
		TypeTRA_Big_AIActorSetting();
		
	end
	
end
