LoadStringTable( "Language/Script/Arcade_movie_string_table.x7" );

MOVIE_STAGE_00		= GetString( "MOVIE_STAGE_00" );
MOVIE_STAGE4_01		= GetString( "MOVIE_STAGE4_01" );
MOVIE_STAGE4_02		= GetString( "MOVIE_STAGE4_02" );
MOVIE_STAGE4_03		= GetString( "MOVIE_STAGE4_03" );
MOVIE_STAGE4_04		= GetString( "MOVIE_STAGE4_04" );

ClearStringTable();

TEAM_ALPHA			= 1;
TEAM_BETA			= 2;
SEX_MALE			= 0;
SEX_FEMALE			= 1;


function initialize()

	Movie:Init( 20000 );
	Movie:AddMovieScene( "Resources/Model/Movie/camera_stage4.scn", false); 
	Movie:AddMovieScene( "Resources/Model/Movie/virus_stage4.scn", true );
	
	Movie:AddSequence( 500, 19500, "Resources/Effects/cinemaline.seq" );  
        --카메라 파일 불러오기
	Movie:AddSequence( 500, 20000, "Resources/Effects/cinemaline.seq" );
	Movie:AddTMController_Camera( 0, 8060, 60, "B012" );
	Movie:AddTMController_Camera( 8070, 12530, 60, "B013" );
   Movie:AddTMController_Camera( 12550,20000, 60, "B014" );
	
       	Movie:AddMovieScene( "Resources/Model/Movie/virus_stage4.scn", true );
	virus01 = Movie:AddSceneLoader( 0, 20000, "resources/model/monster/virus_bip.scn", true, "virus01" );
	 Movie:AddAnimController_Scene( 0, virus01, "MV005", 0, true, true, 2.5 );
	 Movie:AddAnimController_Scene( 12505, virus01, "MV001", 0, true, true, 1.5 );
	virus02 = Movie:AddSceneLoader( 0, 20000, "resources/model/monster/virus_bip.scn", true, "virus02" );
	 Movie:AddAnimController_Scene( 0, virus02, "MV005", 0, true, true, 2.5 );
	 Movie:AddAnimController_Scene( 12505, virus02, "MV002", 0, true, true, 1.2 );
	virus03 = Movie:AddSceneLoader( 0, 20000, "resources/model/monster/virus_bip.scn", true, "virus03" );
	 Movie:AddAnimController_Scene( 0, virus03, "MV005", 0, true, true, 2.5 );
	 Movie:AddAnimController_Scene( 12505, virus03, "MV001", 0, true, true, 1.5 );
        virus04 = Movie:AddSceneLoader( 0, 20000, "resources/model/monster/virus_bip.scn", true, "virus04" );
	 Movie:AddAnimController_Scene( 0, virus04, "MV005", 0, true, true, 2.5 );
	 Movie:AddAnimController_Scene( 12505, virus04, "MV001", 0, true, true, 1.3 ); 
	virus05 = Movie:AddSceneLoader( 0, 20000, "resources/model/monster/virus_bip.scn", true, "virus05" );
	 Movie:AddAnimController_Scene( 0, virus05, "MV005", 0, true, true, 2.5 );
	 Movie:AddAnimController_Scene( 12505, virus05, "MV002", 0, true, true, 1.8 );
	virus06 = Movie:AddSceneLoader( 0, 20000, "resources/model/monster/virus_bip.scn", true, "virus06" );
	 Movie:AddAnimController_Scene( 0, virus06, "MV005", 0, true, true, 2.5 );
	 Movie:AddAnimController_Scene( 12505, virus06, "MV002", 0, true, true, 1.3 );
	virus07 = Movie:AddSceneLoader( 0, 20000, "resources/model/monster/virus_bip.scn", true, "virus07" );
	 Movie:AddAnimController_Scene( 0, virus07, "MV005", 0, true, true, 2.5 );
	 Movie:AddAnimController_Scene( 12505, virus07, "MV001", 0, true, true, 1.4 );
	virus08 = Movie:AddSceneLoader( 0, 20000, "resources/model/monster/virus_bip.scn", true, "virus08" );
	 Movie:AddAnimController_Scene( 0, virus08, "MV005", 0, true, true, 2.5 );
	 Movie:AddAnimController_Scene( 12505, virus08, "MV001", 0, true, true, 1.6 );
	virus09 = Movie:AddSceneLoader( 0, 20000, "resources/model/monster/virus_bip.scn", true, "virus09" );
	 Movie:AddAnimController_Scene( 0, virus09, "MV005", 0, true, true, 2.5 );
	 Movie:AddAnimController_Scene( 12505, virus09, "MV002", 0, true, true, 1.8 );
	virus10 = Movie:AddSceneLoader( 0, 20000, "resources/model/monster/virus_bip.scn", true, "virus10" );
	 Movie:AddAnimController_Scene( 0, virus10, "MV005", 0, true, true, 2.5 );
	 Movie:AddAnimController_Scene( 12505, virus10, "MV001", 0, true, true, 1.6 );
	


	--카메라 지정

        focus_actor1 = Movie:AddActorPlayerEx2( Movie:GetFocusPC(), TEAM_ALPHA );
 	 Movie:SetID( focus_actor1, 1 );
	 Movie:SetActorPlayerExParam( focus_actor1, 7100, 20000, "Resources/Model/Movie/stage4_1.x7" );

	textViewer1 = Movie:AddTextViewer( 2500, 20000, 0, 0, MOVIE_STAGE_00 );
	Movie:SetTextViewerParam( textViewer1, 2, 1, 5, 5 );
        
        textViewer1 = Movie:AddTextViewer( 9000, 11500, 100, 100, MOVIE_STAGE4_01 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	 textViewer1 = Movie:AddTextViewer( 11500, 13500, 100, 100, MOVIE_STAGE4_02 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 13600, 16500, 100, 100, MOVIE_STAGE4_03 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 16500, 18500, 100, 100, MOVIE_STAGE4_04 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	Movie:AddSpecialEffect( 0, 500, 2 );
	Movie:AddSpecialEffect( 19500, 20000, 3 );
	Movie:AddSpecialEffect( 20000, 30000, 4 );

	Movie:AddSpecialEffect( 19200, 20000, 1 );
	
	Movie:AddSound( 0, 2000, "Resources/Sound/Acade/viruscry2.ogg", true, 60 );
	Movie:AddSound( 1000, 3000, "Resources/Sound/Acade/viruscry3.ogg", true, 60 );
	Movie:AddSound( 2000, 4000, "Resources/Sound/Acade/viruscry4.ogg", true, 60 );
	Movie:AddSound( 3000, 5000, "Resources/Sound/Acade/viruscry5.ogg", true, 60 );
	Movie:AddSound( 4000, 6000, "Resources/Sound/Acade/viruscry6.ogg", true, 60 );
	Movie:AddSound( 5000, 7000, "Resources/Sound/Acade/viruscry2.ogg", true, 60 );
	Movie:AddSound( 6000, 8000, "Resources/Sound/Acade/viruscry3.ogg", true, 60 );
	Movie:AddSound( 7000, 9000, "Resources/Sound/Acade/viruscry4.ogg", true, 60 );
	
	Movie:AddSound( 13600, 15500, "Resources/Sound/Acade/network3.ogg", false, 70 );
	Movie:AddSound( 16500, 17500, "Resources/Sound/Acade/network3.ogg", false, 70 );

	Movie:AddSound( 13000, 18500, "Resources/Sound/Acade/viruscry3.ogg", true, 30 );
	Movie:AddSound( 14200, 18500, "Resources/Sound/Acade/viruscry4.ogg", true, 30 );
	Movie:AddSound( 14400, 19000, "Resources/Sound/Acade/viruscry5.ogg", true, 30 );
	Movie:AddSound( 14600, 19000, "Resources/Sound/Acade/viruscry6.ogg", true, 30 );

	Movie:AddBGM(0, 30000, "Resources/Bgm/plasticmethod.ogg", false, 50 );
	
end