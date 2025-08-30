LoadStringTable( "Language/Script/Arcade_movie_string_table.x7" );

MOVIE_STAGE_00		= GetString( "MOVIE_STAGE_00" );
MOVIE_STAGE7_34		= GetString( "MOVIE_STAGE7_34" );
MOVIE_STAGE7_35		= GetString( "MOVIE_STAGE7_35" );


ClearStringTable();

TEAM_ALPHA			= 1;
TEAM_BETA			= 2;
SEX_MALE			= 0;
SEX_FEMALE			= 1;


function initialize()

	Movie:Init( 13000 );
	Movie:AddMovieScene( "Resources/Model/Movie/camera_stage7_3.scn", false); 
	Movie:AddSequence( 500, 12500, "Resources/Effects/cinemaline.seq" );        
	--카메라 파일 불러오기
	Movie:AddTMController_Camera( 0, 5500, 60, "P002" );
	Movie:AddTMController_Camera( 5501, 13000, 60, "P001" );

        --카메라 지정
  
        Munch = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( Munch, 4325377, 1179905, 72614401, 72549121, 68551681, 69993729, 0 );
         Movie:SetActorPlayerExParamHair( Munch, 19, 0 );
         Movie:SetActorPlayerExParamFace( Munch, 22, 0 );
         Movie:SetActorPlayerExParamCoat( Munch, 41, 0 );
         Movie:SetActorPlayerExParamPant( Munch, 39, 0 );
         Movie:SetActorPlayerExParamGlove( Munch, 38, 0 );
         Movie:SetActorPlayerExParamShoes( Munch, 38, 0 );
	 Movie:SetActorPlayerExParam( Munch, 0, 13000, "Resources/Model/Movie/stage7_15.x7" );

	textViewer1 = Movie:AddTextViewer( 2500, 20000, 0, 0, MOVIE_STAGE_00 );
	Movie:SetTextViewerParam( textViewer1, 2, 1, 5, 5 );  
	
	textViewer1 = Movie:AddTextViewer( 817, 5500, 100, 100, MOVIE_STAGE7_34 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 5500, 10500, 100, 100, MOVIE_STAGE7_35 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	Movie:AddSpecialEffect( 0, 500, 2 );
	Movie:AddSpecialEffect(12500, 13000, 3 );
	Movie:AddSpecialEffect(13000, 20000, 4 );

	Movie:AddSpecialEffect(12400, 13000, 1 );

	--Movie:AddBGM( 817, 48000, "Resources/Bgm/Braveitout.ogg", false, 30 )

	
end