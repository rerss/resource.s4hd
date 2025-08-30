-- <----------------- Ʃ�丮�� �ʱ�ȭ -----------------> --
function OnAnchoringLicenseTest()

	TutorialSystem:SetTotalStage( 1 );	-- ������ step�� ������ ����
	
	OnAnchoringLicenseTestStep01		(); -- step1 ����


end
-- <---------------------------------------------------> --


-- Notify ID�̺�Ʈ �޼���
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
