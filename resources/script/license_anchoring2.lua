-- <----------------- 튜토리얼 초기화 -----------------> --
function OnAnchoringLicenseTest()

	TutorialSystem:SetTotalStage( 1 );	-- 생성할 step의 갯수를 설정
	
	OnAnchoringLicenseTestStep01		(); -- step1 생성


end
-- <---------------------------------------------------> --


-- Notify ID이벤트 메세지
NI_CONGRATULATION						= 102

function OnAnchoringLicenseTestStep01()
	
	AnchoringLicense = TutorialSystem:GetEmptyStage();	
	
	ActorSpawn 				= TriggerPackage:GetSpawnHelper( 0, 0, "trg_spawn_point_01", 0, 0, 0, 0, true );
	GateOpen				= TriggerPackage:GetCollisionChecker("trg_arrive_01", NI_CONGRATULATION, false);
	Congraturation			= TriggerPackage:GetTutorialComplete( NI_CONGRATULATION );

	AnchoringLicense:Register(ActorSpawn);
	AnchoringLicense:Register(GateOpen);
	AnchoringLicense:Register(Congraturation);

	TutorialSystem:AddStage( 0, AnchoringLicense );
	
end
