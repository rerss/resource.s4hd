LoadStringTable( "Language/Script/Arcade_movie_string_table.x7" );

MOVIE_STAGE_00		= GetString( "MOVIE_STAGE_00" );
MOVIE_STAGE8_24		= GetString( "MOVIE_STAGE8_24" );

ClearStringTable();

TEAM_ALPHA			= 1;
TEAM_BETA			= 2;
SEX_MALE			= 0;
SEX_FEMALE			= 1;


function initialize()

	Movie:Init( 10000 );
	Movie:AddMovieScene( "Resources/Model/Movie/camera_stage8_2.scn", false); 
	Movie:AddMovieScene( "Resources/Model/Movie/virus_stage8_2.scn", true ); 
	Movie:AddSequence( 500, 9500, "Resources/Effects/cinemaline.seq" ); 

        --카메라 파일 불러오기
	Movie:AddTMController_Camera( 0, 10000, 60, "Q001" );
       
        virus01 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus01" );
	 Movie:AddAnimController_Scene( 0, virus01, "MV005", 0, true, true, 1.6 );
        virus02 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus02" );
	 Movie:AddAnimController_Scene( 0, virus02, "MV005", 0, true, true, 1.7 );
        virus03 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus03" );
	 Movie:AddAnimController_Scene( 0, virus03, "MV005", 0, true, true, 1.7 );
        virus04 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus04" );
	 Movie:AddAnimController_Scene( 0, virus04, "MV005", 0, true, true, 1.5 );
        virus05 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus05" );
	 Movie:AddAnimController_Scene( 0, virus05, "MV005", 0, true, true, 1.5 );
        virus06 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus06" );
	 Movie:AddAnimController_Scene( 0, virus06, "MV005", 0, true, true, 1.8 );
        virus07 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus07" );
	 Movie:AddAnimController_Scene( 0, virus07, "MV005", 0, true, true, 1.9 );
        virus08 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus08" );
	 Movie:AddAnimController_Scene( 0, virus08, "MV005", 0, true, true, 1.8 );
        virus09 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus09" );
	 Movie:AddAnimController_Scene( 0, virus09, "MV005", 0, true, true, 1.9 );
        virus10 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus10" );
	 Movie:AddAnimController_Scene( 0, virus10, "MV005", 0, true, true, 1.5 );
        virus11 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus11" );
	 Movie:AddAnimController_Scene( 0, virus11, "MV005", 0, true, true, 1.6 );
        virus12 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus12" );
	 Movie:AddAnimController_Scene( 0, virus12, "MV005", 0, true, true, 1.7 );
        virus13 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus13" );
	 Movie:AddAnimController_Scene( 0, virus13, "MV005", 0, true, true, 1.5 );
        virus14 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus14" );
	 Movie:AddAnimController_Scene( 0, virus14, "MV005", 0, true, true, 1.8 );
        virus15 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus15" );
	 Movie:AddAnimController_Scene( 0, virus15, "MV005", 0, true, true, 1.8 );
        virus16 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus16" );
	 Movie:AddAnimController_Scene( 0, virus16, "MV005", 0, true, true, 1.6 );
        virus17 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus17" );
	 Movie:AddAnimController_Scene( 0, virus17, "MV005", 0, true, true, 1.5 );
        virus18 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus18" );
	 Movie:AddAnimController_Scene( 0, virus18, "MV005", 0, true, true, 1.7 );
        virus19 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus19" );
	 Movie:AddAnimController_Scene( 0, virus19, "MV005", 0, true, true, 1.5 );
        virus20 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus20" );
	 Movie:AddAnimController_Scene( 0, virus20, "MV005", 0, true, true, 1.8 );
        virus21 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus21" );
	 Movie:AddAnimController_Scene( 0, virus21, "MV005", 0, true, true, 1.8 );
        virus22 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus22" );
	 Movie:AddAnimController_Scene( 0, virus22, "MV005", 0, true, true, 1.8 );
        virus23 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus23" );
	 Movie:AddAnimController_Scene( 0, virus23, "MV005", 0, true, true, 1.8 );
        virus24 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus24" );
	 Movie:AddAnimController_Scene( 0, virus24, "MV005", 0, true, true, 1.5 );
        virus25 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus25" );
	 Movie:AddAnimController_Scene( 0, virus25, "MV005", 0, true, true, 1.6 );
        virus26 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus26" );
	 Movie:AddAnimController_Scene( 0, virus26, "MV005", 0, true, true, 1.8 );
        virus27 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus27" );
	 Movie:AddAnimController_Scene( 0, virus27, "MV005", 0, true, true, 1.7 );
        virus28 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus28" );
	 Movie:AddAnimController_Scene( 0, virus28, "MV005", 0, true, true, 1.8 );
        virus29 = Movie:AddSceneLoader( 0, 10000, "resources/model/monster/virus_bip.scn", true, "7_1virus29" );
	 Movie:AddAnimController_Scene( 0, virus29, "MV005", 0, true, true, 1.9 );


        NBranger = Movie:AddActorPlayerEx1( SEX_MALE, TEAM_ALPHA );
         --Movie:SetActorPlayerExParam1( NBranger, 851969, 1114369, 72548865, 72483585, 68486145, 69928193, 0 );
		 --Movie:SetActorPlayerExParamHair( NBranger, 1, 1 );
		 --Movie:SetActorPlayerExParamFace( NBranger, 0, 0 );
		 Movie:SetActorPlayerExParamCoat( NBranger, 42, 0 );
		 Movie:SetActorPlayerExParamPant( NBranger, 40, 0 );
		 Movie:SetActorPlayerExParamGlove( NBranger, 39, 0 );
		 Movie:SetActorPlayerExParamShoes( NBranger, 39, 0 );
		 Movie:SetActorPlayerExParamAccessary( NBranger, 53, 0 );
         Movie:SetActorPlayerExParam( NBranger, 1583, 4832, "Resources/Model/Movie/stage6_3.x7" );
         Movie:SetActorPlayerExParam( NBranger, 8400, 10499, "Resources/Model/Movie/stage.x7" );
         Movie:SetActorPlayerExParam( NBranger, 15566, 18632, "Resources/Model/Movie/stage6_6.x7" );
         Movie:SetActorPlayerExParam( NBranger, 23366, 27332, "Resources/Model/Movie/stage6_8.x7" );
         Movie:SetActorPlayerExParam( NBranger, 28900,31015, "Resources/Model/Movie/stage.x7" );

	textViewer1 = Movie:AddTextViewer( 2500, 18000, 0, 0, MOVIE_STAGE_00 );
	Movie:SetTextViewerParam( textViewer1, 2, 1, 5, 5 );        
	
	textViewer1 = Movie:AddTextViewer( 3300, 12000, 100, 100, MOVIE_STAGE8_24 );
	Movie:SetTextViewerParam( textViewer1, 0, 1, 0, 700 );


	Movie:AddSpecialEffect( 0, 500, 2 );
	Movie:AddSpecialEffect( 8000, 10000, 3 );
	Movie:AddSpecialEffect( 10000, 20000, 4 );

	Movie:AddSpecialEffect( 7900, 10000, 1 );

	--Movie:AddBGM( 0, 72000, "Resources/Bgm/plasticmethod.ogg", false, 30 );
end