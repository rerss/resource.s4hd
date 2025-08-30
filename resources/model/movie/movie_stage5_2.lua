LoadStringTable( "Language/Script/Arcade_movie_string_table.x7" );

MOVIE_STAGE_00		= GetString( "MOVIE_STAGE_00" );
MOVIE_STAGE7_22		= GetString( "MOVIE_STAGE7_22" );
MOVIE_STAGE7_23		= GetString( "MOVIE_STAGE7_23" );
MOVIE_STAGE7_24		= GetString( "MOVIE_STAGE7_24" );
MOVIE_STAGE7_25		= GetString( "MOVIE_STAGE7_25" );
MOVIE_STAGE7_26		= GetString( "MOVIE_STAGE7_26" );
MOVIE_STAGE7_27		= GetString( "MOVIE_STAGE7_27" );
MOVIE_STAGE7_28		= GetString( "MOVIE_STAGE7_28" );
MOVIE_STAGE7_29		= GetString( "MOVIE_STAGE7_29" );
MOVIE_STAGE7_30		= GetString( "MOVIE_STAGE7_30" );
MOVIE_STAGE7_31		= GetString( "MOVIE_STAGE7_31" );
MOVIE_STAGE7_32		= GetString( "MOVIE_STAGE7_32" );
MOVIE_STAGE7_33		= GetString( "MOVIE_STAGE7_33" );

ClearStringTable();

TEAM_ALPHA			= 1;
TEAM_BETA			= 2;
SEX_MALE			= 0;
SEX_FEMALE			= 1;


function initialize()

	Movie:Init( 38000 );
	Movie:AddMovieScene( "Resources/Model/Movie/camera_stage7_2.scn", false);
 	Movie:AddMovieScene( "Resources/Model/Movie/fog_stage7_2.scn", true );

	Movie:AddSequence( 500, 37500, "Resources/Effects/cinemaline.seq" );        
	--카메라 파일 불러오기
	Movie:AddTMController_Camera( 0, 8500, 60, "F001" );
        Movie:AddTMController_Camera( 8501, 12050, 60, "F002" );
        Movie:AddTMController_Camera(12051, 16166, 60, "F001" );
	Movie:AddTMController_Camera(16167, 31666, 60, "F002" );
        Movie:AddTMController_Camera(31667, 38000, 60, "F001" );
	Movie:AddSequence3D( 22000+1000, 31666+1000, "Resources/Effects/pve_fog.seq", false, "fog" );

        --카메라 지정

        focus_actor1 = Movie:AddActorPlayerEx2( Movie:GetFocusPC(), TEAM_ALPHA );
	 Movie:SetID( focus_actor1, 1 );
	 Movie:SetActorPlayerExParam( focus_actor1, 0, 8500, "Resources/Model/Movie/stage7_11.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 10600, 16166, "Resources/Model/Movie/stage7_13.x7" );
	 Movie:SetActorPlayerExParam( focus_actor1, 31500, 38000, "Resources/Model/Movie/idle1.x7" );

        Munch = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( Munch, 4325377, 1179905, 72614401, 72549121, 68551681, 69993729, 0 );
         Movie:SetActorPlayerExParamHair( Munch, 19, 0 );
         Movie:SetActorPlayerExParamFace( Munch, 22, 0 );
         Movie:SetActorPlayerExParamCoat( Munch, 41, 0 );
         Movie:SetActorPlayerExParamPant( Munch, 39, 0 );
         Movie:SetActorPlayerExParamGlove( Munch, 38, 0 );
         Movie:SetActorPlayerExParamShoes( Munch, 38, 0 );
	 Movie:SetActorPlayerExParam( Munch, 0, 12050, "Resources/Model/Movie/stage7_12.x7" );
	 Movie:SetActorPlayerExParam( Munch, 15800, 20000, "Resources/Model/Movie/stage7_14.x7" );
	 Movie:SetActorPlayerExParam( Munch, 20500, 24000, "Resources/Model/Movie/jump.x7" );

	textViewer1 = Movie:AddTextViewer( 1000, 48000, 0, 0, MOVIE_STAGE_00 );
	Movie:SetTextViewerParam( textViewer1, 2, 1, 5, 5 );
	
	textViewer1 = Movie:AddTextViewer( 817, 4500, 100, 100, MOVIE_STAGE7_22 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 4500, 6500, 100, 100, MOVIE_STAGE7_23 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );
	
	textViewer1 = Movie:AddTextViewer( 6500, 8500, 100, 100, MOVIE_STAGE7_24 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 8501, 10500, 100, 100, MOVIE_STAGE7_25 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 10501, 13000, 100, 100, MOVIE_STAGE7_26 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 13001, 16166, 100, 100, MOVIE_STAGE7_27 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 16167, 19183, 100, 100, MOVIE_STAGE7_28 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 19200, 22000, 100, 100, MOVIE_STAGE7_29 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 22001, 25000, 100, 100, MOVIE_STAGE7_30);
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 25001, 29000, 100, 100, MOVIE_STAGE7_31 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 29001, 31000, 100, 100, MOVIE_STAGE7_32 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );
	
	textViewer1 = Movie:AddTextViewer( 31683, 38000, 100, 100, MOVIE_STAGE7_33 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	Movie:AddSpecialEffect( 0, 500, 4 );
	Movie:AddSpecialEffect( 500, 800, 2 );
	Movie:AddSpecialEffect(34000, 38000, 3 );
	Movie:AddSpecialEffect(38000, 48000, 4 );

	Movie:AddSpecialEffect(16367, 16667, 1 );

	--Movie:AddBGM( 817, 48000, "Resources/Bgm/Braveitout.ogg", false, 50 )
	Movie:AddSound( 23000, 24000, "Resources/Sound/Acade/moongk_disappear.ogg", true, 60 );

	Movie:AddMovieSpeed( 8501, 10500, 0.7 )
	Movie:AddMovieSpeed( 10501, 12050, 0.5 )
	Movie:AddMovieSpeed( 12051, 16166, 1.5 )

	
	
end