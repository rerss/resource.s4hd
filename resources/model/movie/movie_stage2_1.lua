LoadStringTable( "Language/Script/Arcade_movie_string_table.x7" );

MOVIE_STAGE_00		= GetString( "MOVIE_STAGE_00" );
MOVIE_STAGE2_18		= GetString( "MOVIE_STAGE2_18" );
MOVIE_STAGE2_19		= GetString( "MOVIE_STAGE2_19" );
MOVIE_STAGE2_20		= GetString( "MOVIE_STAGE2_20" );
MOVIE_STAGE2_21		= GetString( "MOVIE_STAGE2_21" );


ClearStringTable();

TEAM_ALPHA			= 1;
TEAM_BETA			= 2;
SEX_MALE			= 0;
SEX_FEMALE			= 1;


function initialize()

	Movie:Init( 11333 );
	Movie:AddMovieScene( "Resources/Model/Movie/camera_stage2_1.scn", false); 
	Movie:AddSequence( 500, 10833, "Resources/Effects/cinemaline.seq" );  
        --카메라 파일 불러오기
	Movie:AddTMController_Camera( 0, 5983, 60, "L001" );
        Movie:AddTMController_Camera( 5984, 11333, 60, "L002" );

        taejo_pan1 = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( taejo_pan1, 2359297, 1442049, 80085505, 80151297, 2098177, 132353, 787969 );
		 Movie:SetActorPlayerExParamHair( taejo_pan1, 6, 4 );
		 Movie:SetActorPlayerExParamFace( taejo_pan1, 10, 0 );
		 Movie:SetActorPlayerExParamCoat( taejo_pan1, 18, 2 );
		 Movie:SetActorPlayerExParamPant( taejo_pan1, 17, 2 );
		 Movie:SetActorPlayerExParamGlove( taejo_pan1, 17, 0 );
		 Movie:SetActorPlayerExParamShoes( taejo_pan1, 17, 0 );
		 Movie:SetActorPlayerExParamAccessary( taejo_pan1, 13, 0 );
         Movie:SetActorPlayerExParam( taejo_pan1, 0, 11333, "Resources/Model/Movie/stage2_13.x7" );

        taejo_pan2 = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
	 --Movie:SetActorPlayerExParam1( taejo_pan2, 3670017, 1442049, 80216577, 80282369, 2098177, 2032897, 656897 );
		Movie:SetActorPlayerExParamHair( taejo_pan2, 5, 4 );
		 Movie:SetActorPlayerExParamFace( taejo_pan2, 10, 0 );
		 Movie:SetActorPlayerExParamCoat( taejo_pan2, 18, 4 );
		 Movie:SetActorPlayerExParamPant( taejo_pan2, 17, 4 );
		 Movie:SetActorPlayerExParamGlove( taejo_pan2, 17, 0 );
		 Movie:SetActorPlayerExParamShoes( taejo_pan2, 17, 0 );
		 Movie:SetActorPlayerExParamAccessary( taejo_pan2, 19, 0 );
         Movie:SetActorPlayerExParam( taejo_pan2, 2973, 11333, "Resources/Model/Movie/stage2_14.x7" );

        taejo_pan3 = Movie:AddActorPlayerEx1( SEX_FEMALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( taejo_pan3, 5111809, 1442049, 80019969, 80085761, 2098177, 2032897, 722433 );
		 Movie:SetActorPlayerExParamHair( taejo_pan3, 8, 4 );
		 Movie:SetActorPlayerExParamFace( taejo_pan3, 10, 0 );
		 Movie:SetActorPlayerExParamCoat( taejo_pan3, 18, 1 );
		 Movie:SetActorPlayerExParamPant( taejo_pan3, 17, 1 );
		 Movie:SetActorPlayerExParamGlove( taejo_pan3, 17, 0 );
		 Movie:SetActorPlayerExParamShoes( taejo_pan3, 17, 0 );
		 Movie:SetActorPlayerExParamAccessary( taejo_pan3, 18, 0 );
         Movie:SetActorPlayerExParam( taejo_pan3, 5974, 11333, "Resources/Model/Movie/stage2_15.x7" );

	textViewer1 = Movie:AddTextViewer( 2500, 10000, 0, 0, MOVIE_STAGE_00 );
	Movie:SetTextViewerParam( textViewer1, 2, 1, 5, 5 );

        textViewer1 = Movie:AddTextViewer( 0, 2800, 0, 0, MOVIE_STAGE2_18 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 2810, 6000, 0, 0, MOVIE_STAGE2_19 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 6010, 8100, 0, 0, MOVIE_STAGE2_20 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	textViewer1 = Movie:AddTextViewer( 8110, 10000, 0, 0, MOVIE_STAGE2_21 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );

	Movie:AddSpecialEffect( 0, 500, 2 );
	Movie:AddSpecialEffect( 10833, 11333, 3 );
	Movie:AddSpecialEffect( 11333, 21333, 4 );
	
	Movie:AddSpecialEffect( 10733, 11333, 1 );

end