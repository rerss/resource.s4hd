LoadStringTable( "Language/Script/Arcade_movie_string_table.x7" );

MOVIE_STAGE_00		= GetString( "MOVIE_STAGE_00" );
MOVIE_STAGE6_01		= GetString( "MOVIE_STAGE6_01" );
MOVIE_STAGE6_02		= GetString( "MOVIE_STAGE6_02" );


ClearStringTable();

TEAM_ALPHA			= 1;
TEAM_BETA			= 2;
SEX_MALE			= 0;
SEX_FEMALE			= 1;


function initialize()

	Movie:Init( 18166 );
	Movie:AddMovieScene( "Resources/Model/Movie/camera_stage6_1.scn", false); 
	Movie:AddMovieScene( "Resources/Model/Movie/virus_stage6_1.scn", true ); 

	Movie:AddSequence( 500, 17666, "Resources/Effects/cinemaline.seq" );        
	--카메라 파일 불러오기
	Movie:AddTMController_Camera( 0, 9166, 60, "C001" );
        Movie:AddTMController_Camera( 9167, 12483, 60, "C002" );
        Movie:AddTMController_Camera(12484, 18166, 60, "C003" );

        virus01 = Movie:AddSceneLoader( 0, 18166, "resources/model/monster/virus_bip.scn", true, "virus01" );
	 Movie:AddAnimController_Scene( 0, virus01, "MV001", 0, true, true, 2.0 );
	 Movie:AddAnimController_Scene( 10300, virus01, "MV003", 0, true, false, 1.0 );	
	 Movie:AddSequence3D( 10300, 12483, "Resources/Effects/backattack_sword_s.seq", true, "virus01" );
	 Movie:AddSequence3D( 10400, 12483, "Resources/Effects/dead_eff.seq", true, "virus01" );
	virus02 = Movie:AddSceneLoader( 0, 18166, "resources/model/monster/virus_bip.scn", true, "virus02" );
	 Movie:AddAnimController_Scene( 50, virus02, "MV007", 0, true, true, 1.3 );
	 Movie:AddAnimController_Scene( 10400, virus02, "MV003", 0, true, false, 1.0 );
	 Movie:AddSequence3D( 10400, 12483, "Resources/Effects/backattack_sword_s.seq", true, "virus02" );
	 Movie:AddSequence3D( 10500, 12483, "Resources/Effects/dead_eff.seq", true, "virus02" );
	virus03 = Movie:AddSceneLoader( 0, 18166, "resources/model/monster/virus_bip.scn", true, "virus03" );
	 Movie:AddAnimController_Scene( 100, virus03, "MV001", 0, true, true, 1.2 );
	 Movie:AddAnimController_Scene( 10500, virus03, "MV003", 0, true, false, 1.0 );
	 Movie:AddSequence3D( 10500, 12483, "Resources/Effects/backattack_sword_s.seq", true, "virus03" );
	 Movie:AddSequence3D( 10600, 12483, "Resources/Effects/dead_eff.seq", true, "virus03" );
	virus04 = Movie:AddSceneLoader( 0, 18166, "resources/model/monster/virus_bip.scn", true, "virus04" );
	 Movie:AddAnimController_Scene( 150, virus04, "MV007", 0, true, true, 1.3 );
	 Movie:AddAnimController_Scene( 10600, virus04, "MV003", 0, true, false, 1.0 );
	 Movie:AddSequence3D( 10600, 12483, "Resources/Effects/backattack_sword_s.seq", true, "virus04" );
	 Movie:AddSequence3D( 10700, 12483, "Resources/Effects/dead_eff.seq", true, "virus04" );
	virus05 = Movie:AddSceneLoader( 0, 18166, "resources/model/monster/virus_bip.scn", true, "virus05" );
	 Movie:AddAnimController_Scene( 200, virus05, "MV007", 0, true, true, 1.5 );
	 Movie:AddAnimController_Scene( 10700, virus05, "MV003", 0, true, false, 1.0 );
	 Movie:AddSequence3D( 10700, 12483, "Resources/Effects/backattack_sword_s.seq", true, "virus05" );
	 Movie:AddSequence3D( 10800, 12483, "Resources/Effects/dead_eff.seq", true, "virus05" );
	virus06 = Movie:AddSceneLoader( 0, 18166, "resources/model/monster/virus_bip.scn", true, "virus06" );
	 Movie:AddAnimController_Scene( 250, virus06, "MV001", 0, true, true, 1.7 );
	 Movie:AddAnimController_Scene( 10800, virus06, "MV003", 0, true, false, 1.0 );
	 Movie:AddSequence3D( 10800, 12483, "Resources/Effects/backattack_sword_s.seq", true, "virus06" );
	 Movie:AddSequence3D( 10900, 12483, "Resources/Effects/dead_eff.seq", true, "virus06" );
	virus07 = Movie:AddSceneLoader( 0, 18166, "resources/model/monster/virus_bip.scn", true, "virus07" );
	 Movie:AddAnimController_Scene( 300, virus07, "MV007", 0, true, true, 1.8 );
	 Movie:AddAnimController_Scene( 10900, virus07, "MV003", 0, true, false, 1.0 );
	 Movie:AddSequence3D( 10900, 12483, "Resources/Effects/backattack_sword_s.seq", true, "virus07" );
	 Movie:AddSequence3D( 11000, 12483, "Resources/Effects/dead_eff.seq", true, "virus07" );
	virus08 = Movie:AddSceneLoader( 0, 18166, "resources/model/monster/virus_bip.scn", true, "virus08" );
	 Movie:AddAnimController_Scene( 1400, virus08, "MV007", 0, true, true, 1.2 );
	virus09 = Movie:AddSceneLoader( 0, 18166, "resources/model/monster/virus_bip.scn", true, "virus09" );
	 Movie:AddAnimController_Scene( 350, virus09, "MV001", 0, true, true, 1.4 );
	 Movie:AddAnimController_Scene( 11000, virus09, "MV003", 0, true, false, 1.0 );
	 Movie:AddSequence3D( 11000, 12483, "Resources/Effects/backattack_sword_s.seq", true, "virus09" );
	 Movie:AddSequence3D( 11100, 12483, "Resources/Effects/dead_eff.seq", true, "virus09" );
	virus10 = Movie:AddSceneLoader( 0, 18166, "resources/model/monster/virus_bip.scn", true, "virus10" );
	 Movie:AddAnimController_Scene( 400, virus10, "MV007", 0, true, true, 1.5 );
	 Movie:AddAnimController_Scene( 11100, virus10, "MV003", 0, true, false, 1.0 );
	 Movie:AddSequence3D( 11100, 12483, "Resources/Effects/backattack_sword_s.seq", true, "virus10" );
	 Movie:AddSequence3D( 11300, 12483, "Resources/Effects/dead_eff.seq", true, "virus10" );
	virus11 = Movie:AddSceneLoader( 0, 18166, "resources/model/monster/virus_bip.scn", true, "virus11" );
	 Movie:AddAnimController_Scene( 450, virus11, "MV007", 0, true, true, 1.6 );
 	 Movie:AddAnimController_Scene( 11200, virus11, "MV003", 0, true, false, 1.0 );
	 Movie:AddSequence3D( 11200, 12483, "Resources/Effects/backattack_sword_s.seq", true, "virus11" );
	 Movie:AddSequence3D( 11400, 12483, "Resources/Effects/dead_eff.seq", true, "virus11" );
	virus12 = Movie:AddSceneLoader( 0, 18166, "resources/model/monster/virus_bip.scn", true, "virus12" );
	 Movie:AddAnimController_Scene( 500, virus12, "MV007", 0, true, true, 1.2 );
	virus13 = Movie:AddSceneLoader( 0, 18166, "resources/model/monster/virus_bip.scn", true, "virus13" );
	 Movie:AddAnimController_Scene( 550, virus13, "MV001", 0, true, true, 1.0 );
	virus14 = Movie:AddSceneLoader( 0, 18166, "resources/model/monster/virus_bip.scn", true, "virus14" );
	 Movie:AddAnimController_Scene( 600, virus14, "MV001", 0, true, true, 1.1 );
	 Movie:AddAnimController_Scene( 11300, virus14, "MV003", 0, true, false, 1.0 );
	 Movie:AddSequence3D( 11300, 12483, "Resources/Effects/backattack_sword_s.seq", true, "virus14" );
	 Movie:AddSequence3D( 11500, 12483, "Resources/Effects/dead_eff.seq", true, "virus14" );
	virus15 = Movie:AddSceneLoader( 0, 18166, "resources/model/monster/virus_bip.scn", true, "virus15" );
	 Movie:AddAnimController_Scene( 650, virus15, "MV007", 0, true, true, 1.5 );
	 Movie:AddAnimController_Scene( 11400, virus15, "MV003", 0, true, false, 1.0 );
	 Movie:AddSequence3D( 11400, 12483, "Resources/Effects/backattack_sword_s.seq", true, "virus15" );
	 Movie:AddSequence3D( 11600, 12483, "Resources/Effects/dead_eff.seq", true, "virus15" );
	virus16 = Movie:AddSceneLoader( 0, 18166, "resources/model/monster/virus_bip.scn", true, "virus16" );
	 Movie:AddAnimController_Scene( 700, virus16, "MV007", 0, true, true, 1.4 );
	virus17 = Movie:AddSceneLoader( 0, 18166, "resources/model/monster/virus_bip.scn", true, "virus17" );
	 Movie:AddAnimController_Scene( 750, virus17, "MV001", 0, true, true, 1.1 );
	virus18 = Movie:AddSceneLoader( 0, 18166, "resources/model/monster/virus_bip.scn", true, "virus18" );
	 Movie:AddAnimController_Scene( 800, virus18, "MV007", 0, true, true, 1.0 );
	virus19 = Movie:AddSceneLoader( 0, 18166, "resources/model/monster/virus_bip.scn", true, "virus19" );
	 Movie:AddAnimController_Scene( 850, virus19, "MV001", 0, true, true, 1.3 );
	virus20 = Movie:AddSceneLoader( 0, 18166, "resources/model/monster/virus_bip.scn", true, "virus20" );
	 Movie:AddAnimController_Scene( 900, virus20, "MV007", 0, true, true, 1.6 );
	virus21 = Movie:AddSceneLoader( 0, 18166, "resources/model/monster/virus_bip.scn", true, "virus21" );
	 Movie:AddAnimController_Scene( 950, virus21, "MV007", 0, true, true, 1.3 );
	virus22 = Movie:AddSceneLoader( 0, 18166, "resources/model/monster/virus_bip.scn", true, "virus22" );
	 Movie:AddAnimController_Scene( 1000, virus22, "MV001", 0, true, true, 1.6 );
	virus23 = Movie:AddSceneLoader( 0, 18166, "resources/model/monster/virus_bip.scn", true, "virus23" );
	 Movie:AddAnimController_Scene( 1050, virus23, "MV007", 0, true, true, 1.3 );
	virus24 = Movie:AddSceneLoader( 0, 18166, "resources/model/monster/virus_bip.scn", true, "virus24" );
	 Movie:AddAnimController_Scene( 1100, virus24, "MV007", 0, true, true, 1.5 );
	virus25 = Movie:AddSceneLoader( 0, 18166, "resources/model/monster/virus_bip.scn", true, "virus25" );
	 Movie:AddAnimController_Scene( 1150, virus25, "MV007", 0, true, true, 1.8 );
	virus26 = Movie:AddSceneLoader( 0, 18166, "resources/model/monster/virus_bip.scn", true, "virus26" );
	 Movie:AddAnimController_Scene( 1200, virus26, "MV001", 0, true, true, 1.2 );
	
	
      --카메라 지정

        focus_actor1 = Movie:AddActorPlayerEx2( Movie:GetFocusPC(), TEAM_ALPHA );
	 Movie:SetID( focus_actor1, 1 );
	 Movie:SetActorPlayerExParam( focus_actor1, 0, 12483, "Resources/Model/Movie/stage6_1.x7" );
	 Movie:AddSequence3D( 15850, 18166, "Resources/Effects/skill_gunner_hw_fire.seq", false, "effect1" );

        NBranger = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( NBranger, 851969, 1114369, 72548865, 72483585, 68486145, 69928193, 0 );
		 Movie:SetActorPlayerExParamHair( NBranger, 1, 1 );
		 --Movie:SetActorPlayerExParamFace( NBranger, 0, 0 );
		 Movie:SetActorPlayerExParamCoat( NBranger, 42, 0 );
		 Movie:SetActorPlayerExParamPant( NBranger, 40, 0 );
		 Movie:SetActorPlayerExParamGlove( NBranger, 39, 0 );
		 Movie:SetActorPlayerExParamShoes( NBranger, 39, 0 );
		 Movie:SetActorPlayerExParamAccessary( NBranger, 53, 0 );
		Movie:SetActorPlayerExParam( NBranger, 9167, 12483, "Resources/Model/Movie/stage6_1mb.x7" );
         Movie:SetActorPlayerExParam( NBranger, 12484, 18166, "Resources/Model/Movie/stage6_1mb.x7" );

        taejo = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( taejo, 3932161, 786689, 1311233, 1573633, 1049601, 984321, 0 );
		 		 Movie:SetActorPlayerExParamHair( taejo, 14, 0 );
		 Movie:SetActorPlayerExParamFace( taejo, 17, 0 );
		 Movie:SetActorPlayerExParamCoat( taejo, 65, 0 );
		 Movie:SetActorPlayerExParamPant( taejo, 37, 0 );
		 Movie:SetActorPlayerExParamGlove( taejo, 29, 0 );
		 Movie:SetActorPlayerExParamShoes( taejo, 29, 0 );
		 --Movie:SetActorPlayerExParamAccessary( taejo, 0, 0 );
	 Movie:SetActorPlayerExParam( taejo, 0, 18166, "Resources/Model/Movie/stage6_1_Taejo.x7" );

	textViewer1 = Movie:AddTextViewer( 2500, 20000, 0, 0, MOVIE_STAGE_00 );
	Movie:SetTextViewerParam( textViewer1, 2, 1, 5, 5 );
        	
	textViewer1 = Movie:AddTextViewer( 1000, 6316, 100, 100, MOVIE_STAGE6_01 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 11000, 14316, 100, 100, MOVIE_STAGE6_02 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	Movie:AddSpecialEffect( 0, 500, 2 );
	Movie:AddSpecialEffect(17000, 18166, 3 );
	Movie:AddSpecialEffect(18166, 28166, 4 );

	Movie:AddSpecialEffect(16800, 18166, 1 );

	--Movie:AddBGM(0, 28166, "Resources/Bgm/plasticmethod.ogg", false, 50 );

	Movie:AddSound( 0, 2000, "Resources/Sound/Acade/viruscry2.ogg", true, 60 );
	Movie:AddSound( 1000, 3000, "Resources/Sound/Acade/viruscry3.ogg", true, 60 );
	Movie:AddSound( 2000, 4000, "Resources/Sound/Acade/viruscry4.ogg", true, 60 );
	Movie:AddSound( 3000, 5000, "Resources/Sound/Acade/viruscry5.ogg", true, 60 );
	Movie:AddSound( 4000, 6000, "Resources/Sound/Acade/viruscry6.ogg", true, 60 );
	Movie:AddSound( 5000, 7000, "Resources/Sound/Acade/viruscry2.ogg", true, 60 );
	Movie:AddSound( 6000, 8000, "Resources/Sound/Acade/viruscry3.ogg", true, 60 );
	Movie:AddSound( 7000, 9000, "Resources/Sound/Acade/viruscry4.ogg", true, 60 );
	Movie:AddSound( 8000, 10000, "Resources/Sound/Acade/viruscry5.ogg", true, 60 );
	Movie:AddSound( 9000, 11000, "Resources/Sound/Acade/virusdead6.ogg", true, 60 );
	Movie:AddSound( 10000, 12000, "Resources/Sound/Acade/virusdead2.ogg", true, 60 );
	Movie:AddSound( 11000, 13000, "Resources/Sound/Acade/virusdead3.ogg", true, 60 );
	Movie:AddSound( 12000, 14000, "Resources/Sound/Acade/viruscry3.ogg", true, 30 );
		
end