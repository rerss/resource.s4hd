LoadStringTable( "Language/Script/Arcade_movie_string_table.x7" );

MOVIE_STAGE_00		= GetString( "MOVIE_STAGE_00" );
MOVIE_STAGE2_22		= GetString( "MOVIE_STAGE2_22" );
MOVIE_STAGE2_23		= GetString( "MOVIE_STAGE2_23" );
MOVIE_STAGE2_24		= GetString( "MOVIE_STAGE2_24" );
MOVIE_STAGE2_25		= GetString( "MOVIE_STAGE2_25" );

ClearStringTable();

TEAM_ALPHA			= 1;
TEAM_BETA			= 2;
SEX_MALE			= 0;
SEX_FEMALE			= 1;


function initialize()

	Movie:Init( 14333 );
	Movie:AddMovieScene( "Resources/Model/Movie/camera_stage2_2.scn", false); 
	Movie:AddSequence( 500, 13833, "Resources/Effects/cinemaline.seq" );  
        --카메라 파일 불러오기
	Movie:AddTMController_Camera( 0, 3666, 60, "M001" );
        Movie:AddTMController_Camera( 3667, 8683, 60, "M002" );
        Movie:AddTMController_Camera( 8684, 14333, 60, "M001" );


        taejo_buha1 = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( taejo_buha1, 196609, 196865, 67305985, 1966849, 67044353, 70714625, 2295297 );
		 Movie:SetActorPlayerExParamHair( taejo_buha1, 1, 0 );
		 Movie:SetActorPlayerExParamFace( taejo_buha1, 14, 0 );
		 Movie:SetActorPlayerExParamCoat( taejo_buha1, 32, 0 );
		 Movie:SetActorPlayerExParamPant( taejo_buha1, 33, 0 );
		 Movie:SetActorPlayerExParamGlove( taejo_buha1, 33, 0 );
		 Movie:SetActorPlayerExParamShoes( taejo_buha1, 38, 0 );
		 Movie:SetActorPlayerExParamAccessary( taejo_buha1, 25, 0 );
         Movie:SetActorPlayerExParam( taejo_buha1, 0, 14333, "Resources/Model/Movie/stage2_16.x7" );

        taejo_buha2 = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( taejo_buha2, 196609, 196865, 67305985, 1966849, 67044353, 70714625, 2295297 );
		 Movie:SetActorPlayerExParamHair( taejo_buha2, 1, 0 );
		 Movie:SetActorPlayerExParamFace( taejo_buha2, 14, 0 );
		 Movie:SetActorPlayerExParamCoat( taejo_buha2, 32, 0 );
		 Movie:SetActorPlayerExParamPant( taejo_buha2, 33, 0 );
		 Movie:SetActorPlayerExParamGlove( taejo_buha2, 33, 0 );
		 Movie:SetActorPlayerExParamShoes( taejo_buha2, 38, 0 );
		 Movie:SetActorPlayerExParamAccessary( taejo_buha2, 25, 0 );
         Movie:SetActorPlayerExParam( taejo_buha2, 3667, 14333, "Resources/Model/Movie/stage2_17.x7" );

        taejo = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( taejo, 3932161, 786689, 79692289, 79627009, 1049601, 984321, 0 );
		 Movie:SetActorPlayerExParamHair( taejo, 14, 0 );
		 Movie:SetActorPlayerExParamFace( taejo, 17, 0 );
		 Movie:SetActorPlayerExParamCoat( taejo, 65, 0 );
		 Movie:SetActorPlayerExParamPant( taejo, 37, 0 );
		 Movie:SetActorPlayerExParamGlove( taejo, 29, 0 );
		 Movie:SetActorPlayerExParamShoes( taejo, 29, 0 );
		 --Movie:SetActorPlayerExParamAccessary( taejo, 0, 0 );
	 Movie:SetActorPlayerExParam( taejo, 8684, 14333, "Resources/Model/Movie/stage2_20.x7" );

	textViewer1 = Movie:AddTextViewer( 2500, 14000, 0, 0, MOVIE_STAGE_00 );
	Movie:SetTextViewerParam( textViewer1, 2, 1, 5, 5 );

        textViewer1 = Movie:AddTextViewer( 0, 3600, 0, 00, MOVIE_STAGE2_22 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 3600, 8100, 0, 0, MOVIE_STAGE2_23 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 8500, 12000, 0, 0, MOVIE_STAGE2_24 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 12000, 14000, 0, 0, MOVIE_STAGE2_25 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	Movie:AddSpecialEffect( 0, 500, 2 );
	Movie:AddSpecialEffect( 13833, 14333, 3 );
	Movie:AddSpecialEffect( 14333, 24333, 4 );

	Movie:AddSpecialEffect( 13733, 14333, 1 );
	
end