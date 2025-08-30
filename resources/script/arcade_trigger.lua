require "Resources/Script/Constants.lua"
require "Resources/Script/SentryGunAttrib_Constants.lua"
require "Resources/Script/Arcade_Trigger_NotifyID.lua"

function InitArcadeTrigger()
  -- 아케이드 트리거 설정 파일 입력변수 : GameMgr, ArcadeSystem, TriggerPackage

    ArcadeSystem:SetTotalStage( 9 );

    ExerciseMission = ArcadeSystem:GetEmptyStage();

	-- 2초에 한번씩 AN_SPAWN_AI를 발생한다.
--    Timer_Start			= TriggerPackage:GetEventAlram( AN_START_SPAWN, AN_SPAWN_AI, 2000, AN_END_SPAWN_AI, true );
--  ExerciseMission:Register( Timer_Start );
	
	-- 10초 대기 이벤트 알람
	Timer_Recess = TriggerPackage:GetEventAlram( AN_REST_START, AN_PHASE_START, 3000, AN_REST_END, false );
	ExerciseMission:Register( Timer_Recess );


	Text_Guide01		= TriggerPackage:GetTextViewerEx(850, 100, AN_GUIDE_ON_01, NI_GUIDE_OFF, "{F-2002_15}{A-C}{S-S}{CB-255,255,255,255}Phase 1" , "Resources/GUI/New/TutorialImage_1.gui");
	ExerciseMission:Register( Text_Guide01 );

	Text_Guide02		= TriggerPackage:GetTextViewerEx(850, 150, AN_GUIDE_ON_02, NI_GUIDE_OFF, "{F-2002_15}{A-C}{S-S}{CB-255,255,255,255}Phase 2" , "Resources/GUI/New/TutorialImage_1.gui");
	ExerciseMission:Register( Text_Guide02 );

	Text_Guide03		= TriggerPackage:GetTextViewerEx(850, 200, AN_GUIDE_ON_03, NI_GUIDE_OFF, "{F-2002_15}{A-C}{S-S}{CB-255,255,255,255}Phase 3" , "Resources/GUI/New/TutorialImage_1.gui");
	ExerciseMission:Register( Text_Guide03 );

	Text_Guide04		= TriggerPackage:GetTextViewerEx(850, 250, AN_GUIDE_ON_04, NI_GUIDE_OFF, "{F-2002_15}{A-C}{S-S}{CB-255,255,255,255}Phase 4" , "Resources/GUI/New/TutorialImage_1.gui");
	ExerciseMission:Register( Text_Guide04 );

	Text_Guide05		= TriggerPackage:GetTextViewerEx(850, 300, AN_GUIDE_ON_05, NI_GUIDE_OFF, "{F-2002_15}{A-C}{S-S}{CB-255,255,255,255}Phase 5" , "Resources/GUI/New/TutorialImage_1.gui");
	ExerciseMission:Register( Text_Guide05 );

	Text_Guide06		= TriggerPackage:GetTextViewerEx(850, 350, AN_GUIDE_ON_06, NI_GUIDE_OFF, "{F-2002_15}{A-C}{S-S}{CB-255,255,255,255}Phase 6" , "Resources/GUI/New/TutorialImage_1.gui");
	ExerciseMission:Register( Text_Guide06 );

	Text_Guide07		= TriggerPackage:GetTextViewerEx(850, 400, AN_GUIDE_ON_07, NI_GUIDE_OFF, "{F-2002_15}{A-C}{S-S}{CB-255,255,255,255}Phase 7" , "Resources/GUI/New/TutorialImage_1.gui");
	ExerciseMission:Register( Text_Guide07 );

    ArcadeSystem:AddStage( 0, ExerciseMission );
end
