LoadStringTable( "Language/Script/Arcade_movie_string_table.x7" );

MOVIE_STAGE_00		= GetString( "MOVIE_STAGE_00" );
MOVIE_STAGE9_11		= GetString( "MOVIE_STAGE9_11" );
MOVIE_STAGE9_12		= GetString( "MOVIE_STAGE9_12" );
MOVIE_STAGE9_13		= GetString( "MOVIE_STAGE9_13" );
MOVIE_STAGE9_14		= GetString( "MOVIE_STAGE9_14" );
MOVIE_STAGE9_15		= GetString( "MOVIE_STAGE9_15" );
MOVIE_STAGE9_16		= GetString( "MOVIE_STAGE9_16" );

ClearStringTable();

TEAM_ALPHA			= 1;
TEAM_BETA			= 2;
SEX_MALE			= 0;
SEX_FEMALE			= 1;


function initialize()

	Movie:Init( 20000 );
	Movie:AddMovieScene( "Resources/Model/Movie/camera_stage9_2.scn", false); 
	Movie:AddSequence( 500, 19500, "Resources/Effects/cinemaline.seq" );  
	Movie:AddSequence( 4300, 5000, "Resources/Effects/pve_fullscenerendertarget01.seq" );
	Movie:AddSequence( 4301, 20000, "Resources/Effects/cinemaline2.seq" );
	Movie:AddSequence( 6500, 7000, "Resources/Effects/pve_fullscenerendertarget01.seq" );
	Movie:AddSequence( 6501, 20000, "Resources/Effects/cinemaline2.seq" );
     
	--카메라 파일 불러오기
	Movie:AddTMController_Camera( 0, 2000, 60, "H001" );
        Movie:AddTMController_Camera( 2001, 7566, 60, "H002" );
        Movie:AddTMController_Camera( 7567, 9100, 60, "H001" );
	Movie:AddTMController_Camera( 9101, 10965, 60, "H003" );
	Movie:AddTMController_Camera(10966, 14083, 60, "H002" );
        Movie:AddTMController_Camera(14084, 16665, 60, "H001" );
        Movie:AddTMController_Camera(16666, 20000, 60, "H003" );


        --카메라 지정

        focus_actor1 = Movie:AddActorPlayerEx2( Movie:GetFocusPC(), TEAM_ALPHA );
	 Movie:SetID( focus_actor1, 1 );
	 Movie:SetActorPlayerExParam( focus_actor1, 0, 2000, "Resources/Model/Movie/stage8_1_9.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 7500, 9100, "Resources/Model/Movie/stage8_20.x7" );

        focus_actor2 = Movie:AddActorPlayerEx2( Movie:GetFocusPC(), TEAM_ALPHA );
	 Movie:SetID( focus_actor2, 1 );
	 Movie:SetActorPlayerExParam( focus_actor2, 8200, 20000, "Resources/Model/Movie/stage8_22.x7" );

        zombie = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
        --Movie:SetActorPlayerExParam1( zombie, 3932161, 786689, 79692289, 79627009, 1049601, 984321, 2688513 );
		Movie:SetActorPlayerExParamHair( zombie, 14, 0 );
		Movie:SetActorPlayerExParamFace( zombie, 17, 0 );
		Movie:SetActorPlayerExParamCoat( zombie, 65, 0 );
		Movie:SetActorPlayerExParamPant( zombie, 37, 0 );
		Movie:SetActorPlayerExParamGlove( zombie, 29, 0 );
		Movie:SetActorPlayerExParamShoes( zombie, 29, 0 );
	 Movie:SetActorPlayerExParam( zombie, 1100, 7566, "Resources/Model/Movie/zombie.x7" );
	 Movie:SetActorPlayerExParam( zombie, 8200, 20000, "Resources/Model/Movie/zombie.x7" );

        Kitchi = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( Kitchi, 4456449, 1310977, 72745473, 72680193, 68682753, 70124801, 0 );
		Movie:SetActorPlayerExParamHair( Kitchi, 9, 0 );
		Movie:SetActorPlayerExParamFace( Kitchi, 12, 0 );
		Movie:SetActorPlayerExParamCoat( Kitchi, 21, 0 );
		Movie:SetActorPlayerExParamPant( Kitchi, 20, 0 );
		Movie:SetActorPlayerExParamGlove( Kitchi, 20, 0 );
		Movie:SetActorPlayerExParamShoes( Kitchi, 20, 0 );
	 Movie:SetActorPlayerExParam( Kitchi, 8200, 14083, "Resources/Model/Movie/stage8_21.x7" );

	 textViewer1 = Movie:AddTextViewer( 2500, 22000, 0, 0, MOVIE_STAGE_00 );
	Movie:SetTextViewerParam( textViewer1, 2, 1, 5, 5 );  
	
	textViewer1 = Movie:AddTextViewer( 0, 4000, 100, 100, MOVIE_STAGE9_11 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 4016, 7566, 100, 100, MOVIE_STAGE9_12 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 7583, 9750, 100, 100, MOVIE_STAGE9_13 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 9751, 12083, 100, 100, MOVIE_STAGE9_14 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );
	
	textViewer1 = Movie:AddTextViewer( 12100, 14083, 100, 100, MOVIE_STAGE9_15 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 14100, 20000, 100, 100, MOVIE_STAGE9_16 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	Movie:AddSpecialEffect( 0, 500, 2 );
	Movie:AddSpecialEffect(19500, 20000, 3 );
	Movie:AddSpecialEffect(20000, 30000, 4 );

	Movie:AddSpecialEffect(500, 1100, 1 );
	Movie:AddSpecialEffect(19400, 20000, 1 );
	
	Movie:AddBGM( 0, 30000, "Resources/Sound/tutorial/tut_bgm_03.ogg", false, 50 )

	Movie:AddSound( 4016, 5400, "Resources/Sound/Acade/noise3.ogg", false, 100 );
	Movie:AddSound( 6016, 7400, "Resources/Sound/Acade/noise3.ogg", false, 100 );
	--Movie:AddSound( 8000, 9000, "Resources/Sound/Acade/noise.ogg", true, 50 );	
	
end