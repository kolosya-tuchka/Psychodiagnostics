program Project1;

uses
  Forms,
  Dialogs,
  Unit35 in 'DataModule\Unit35.pas' {MyModule: TDataModule},
  Unit1 in 'Unit1.pas' {Form1},
  Unit5 in 'Unit5.pas' {Form5},
  Unit6 in 'Unit6.pas' {Form6},
  StartTest in 'StartTest.pas' {Form2},
  Unit10 in 'Test2\Unit10.pas' {Form10},
  Unit11 in 'Test2\Unit11.pas' {Form11},
  Unit13 in 'Test4\Unit13.pas' {Form13},
  Unit14 in 'Test4\Unit14.pas' {Form14},
  Unit15 in 'Test5\Unit15.pas' {Form15},
  Unit16 in 'Test5\Unit16.pas' {Form16},
  Unit17 in 'Test6\Unit17.pas' {Form17},
  Unit18 in 'Test6\Unit18.pas' {Form18},
  Unit19 in 'Test3\Unit19.pas' {Form19},
  Unit20 in 'Test7\Unit20.pas' {Form20},
  Unit21 in 'Test8\Unit21.pas' {Form21},
  Unit22 in 'Test8\Unit22.pas' {Form22},
  Unit23 in 'Test9\Unit23.pas' {Form23},
  Unit24 in 'Test7\Unit24.pas' {Form24},
  Unit25 in 'Test3\Unit25.pas' {Form25},
  Unit26 in 'Test9\Unit26.pas' {Form26},
  Unit27 in 'Unit27.pas' {Form27},
  Unit28 in 'Options\Unit28.pas' {Form28},
  Unit29 in 'CreateNew\Unit29.pas' {Form29},
  Unit30 in 'CreateNew\Unit30.pas' {Form30},
  Unit31 in 'CreateNew\Unit31.pas' {Form31},
  Unit32 in 'CreateNew\Unit32.pas' {Form32},
  Unit33 in 'CreateNew\Unit33.pas' {Form33},
  Unit34 in 'CreateNew\Unit34.pas' {Form34},
  Unit36 in 'CreateNew\Unit36.pas' {Form36},
  Unit37 in 'TryNew\Unit37.pas' {Form37},
  Unit38 in 'TryNew\Unit38.pas' {Form38},
  Unit39 in 'TryNew\Unit39.pas' {Form39},
  Unit40 in 'CreateNew\2 type otvet\Unit40.pas' {Form40},
  Unit41 in 'CreateNew\2 type otvet\Unit41.pas' {Form41},
  Unit42 in 'CreateNew\3 type otvet\Unit42.pas' {Form42},
  Unit43 in 'CreateNew\3 type otvet\Unit43.pas' {Form43},
  Unit44 in 'CreateNew\4 type otvet\Unit44.pas' {Form44},
  Unit45 in 'CreateNew\4 type otvet\Unit45.pas' {Form45},
  Unit46 in 'CreateNew\5 type otvet\Unit46.pas' {Form46},
  Unit47 in 'CreateNew\5 type otvet\Unit47.pas' {Form47},
  Unit48 in 'CreateNew\5 type otvet\Unit48.pas' {Form48},
  Unit55 in 'CreateNew\2 type otvet\Unit55.pas' {Form55},
  Unit56 in 'CreateNew\3 type otvet\Unit56.pas' {Form56},
  Unit57 in 'CreateNew\4 type otvet\Unit57.pas' {Form57},
  Unit58 in 'CreateNew\5 type otvet\Unit58.pas' {Form58},
  Unit62 in 'Unit62.pas' {Form62},
  Unit63 in 'Unit63.pas' {Form63},
  Unit3 in 'CreateNew\Unit3.pas' {Form3},
  Unit8 in 'Unit8.pas' {Form8},
  Unit7 in 'Unit7.pas' {Form7},
  Unit4 in 'CreateNew\5 type otvet\Unit4.pas' {Form4},
  Unit9 in 'Unit9.pas' {Form9},
  Unit12 in 'CreateNew\Unit12.pas' {Form12},
  Unit88 in 'CreateNew\5 type otvet\Unit88.pas' {Form88},
  Unit52 in 'CreateNew\7 type otvet\Unit52.pas' {Form52},
  Unit53 in 'CreateNew\7 type otvet\Unit53.pas' {Form53},
  Unit54 in 'Unit54.pas' {Form54},
  Unit60 in 'Test7\Unit60.pas' {Form60},
  PW in 'Defender\Key\PW.pas',
  Defender in 'Defender\Key\Defender.pas' {Form61},
  Result in 'Result.pas' {Results},
  hand_test in 'hand_test.pas' {HandTest},
  Balls in 'Balls.pas' {Bal},
  Test in 'Test.pas' {TestRuk},
  TestRukResults in 'TestRukResults.pas' {TestResults},
  Result_Graph in 'Result_Graph.pas' {Res_Gr},
  Config in 'Defender\Key\Config.pas' {Config_set},
  Unit59 in 'CreateNew\6 type otvet\Unit59.pas' {Form59},
  Prowerka in 'Defender\Key\Prowerka.pas' {DataModule1: TDataModule},
  Unit49 in 'Profi\Unit49.pas' {Form49},
  Unit50 in 'Profi\Unit50.pas' {Form50},
  Unit51 in 'Profi\Unit51.pas' {Form51},
  Unit64 in 'Profi\Unit64.pas' {Form64},
  Unit65 in 'Profi\Unit65.pas' {Form65},
  Unit66 in 'Profi\Unit66.pas' {Form66},
  Unit67 in 'Profi\Unit67.pas' {Form67},
  Unit68 in 'Profi\Unit68.pas' {Form68},
  Unit69 in 'Profi\Unit69.pas' {Form69},
  Unit70 in 'Profi\Unit70.pas' {Form70},
  Unit71 in 'Psiho\Unit71.pas' {Form71},
  Unit72 in 'Psiho\Unit72.pas' {Form72},
  Unit73 in 'Psiho\Unit73.pas' {Form73},
  Unit74 in 'Psiho\Unit74.pas' {Form74},
  Unit75 in 'Psiho\Unit75.pas' {Form75},
  Unit76 in 'Psiho\Unit76.pas' {Form76},
  Unit77 in 'Psiho\Unit77.pas' {Form77},
  Res_41 in 'Psiho\Res_41.pas' {Res_4_1},
  Unit78 in 'Unit78.pas' {Form78},
  CreateSection in 'CreateSection.pas' {Form79},
  SelectSection in 'SelectSection.pas' {Form80},
  SectionsTest in 'SectionsTest.pas' {Form81},
  CreateCourse in 'CreateCourse.pas' {Form82},
  SelectCourse in 'SelectCourse.pas' {Form83},
  TestQueue in 'TestQueue.pas' {Form84};

{$R *.res}

var keyString, accessCodeString: string;
begin
  Application.Initialize;

//  keyString := EvaluateKey;
//  accessCodeString := ReadAccessCode;
//  if not CheckAccessCode(keyString, accessCodeString) then begin
//    try
//     // Form27.Show;
//      //Form27.Hide;
//      Form61 := TForm61.Create(nil);
//      Form61.Edit1.Text := keyString;
//      Form61.ShowModal;
//      Form61.Free;
//      except
//      ShowMessage('Ошибка активации программы!');
//      Exit;
//    end;
//  end;

  Application.CreateForm(TForm27, Form27);
  Application.CreateForm(TMyModule, MyModule);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm13, Form13);
  Application.CreateForm(TForm14, Form14);
  Application.CreateForm(TForm15, Form15);
  Application.CreateForm(TForm16, Form16);
  Application.CreateForm(TForm17, Form17);
  Application.CreateForm(TForm18, Form18);
  Application.CreateForm(TForm19, Form19);
  Application.CreateForm(TForm20, Form20);
  Application.CreateForm(TForm21, Form21);
  Application.CreateForm(TForm22, Form22);
  Application.CreateForm(TForm23, Form23);
  Application.CreateForm(TForm24, Form24);
  Application.CreateForm(TForm25, Form25);
  Application.CreateForm(TForm26, Form26);
  Application.CreateForm(TForm28, Form28);
  Application.CreateForm(TForm29, Form29);
  Application.CreateForm(TForm30, Form30);
  Application.CreateForm(TForm31, Form31);
  Application.CreateForm(TForm32, Form32);
  Application.CreateForm(TForm33, Form33);
  Application.CreateForm(TForm34, Form34);
  Application.CreateForm(TForm36, Form36);
  Application.CreateForm(TForm37, Form37);
  Application.CreateForm(TForm39, Form39);
  Application.CreateForm(TForm40, Form40);
  Application.CreateForm(TForm41, Form41);
  Application.CreateForm(TForm42, Form42);
  Application.CreateForm(TForm43, Form43);
  Application.CreateForm(TForm44, Form44);
  Application.CreateForm(TForm45, Form45);
  Application.CreateForm(TForm47, Form47);
  Application.CreateForm(TForm55, Form55);
  Application.CreateForm(TForm56, Form56);
  Application.CreateForm(TForm57, Form57);
  Application.CreateForm(TForm58, Form58);
  Application.CreateForm(TForm62, Form62);
  Application.CreateForm(TForm63, Form63);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm46, Form46);
  Application.CreateForm(TForm88, Form88);
  Application.CreateForm(TForm53, Form53);
  Application.CreateForm(TBal, Bal);
  Application.CreateForm(THandTest, HandTest);
  Application.CreateForm(TTestRuk, TestRuk);
  Application.CreateForm(TTestResults, TestResults);
  Application.CreateForm(TConfig_set, Config_set);
  Application.CreateForm(TForm59, Form59);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm49, Form49);
  Application.CreateForm(TForm50, Form50);
  Application.CreateForm(TForm51, Form51);
  Application.CreateForm(TForm64, Form64);
  Application.CreateForm(TForm65, Form65);
  Application.CreateForm(TForm66, Form66);
  Application.CreateForm(TForm67, Form67);
  Application.CreateForm(TForm68, Form68);
  Application.CreateForm(TForm69, Form69);
  Application.CreateForm(TForm70, Form70);
  Application.CreateForm(TForm71, Form71);
  Application.CreateForm(TForm72, Form72);
  Application.CreateForm(TForm73, Form73);
  Application.CreateForm(TForm74, Form74);
  Application.CreateForm(TForm75, Form75);
  Application.CreateForm(TForm76, Form76);
  Application.CreateForm(TForm77, Form77);
  Application.CreateForm(TRes_4_1, Res_4_1);
  Application.CreateForm(TForm78, Form78);
  Application.CreateForm(TForm79, Sections);
  Application.CreateForm(TForm83, SctCourse);
  Application.CreateForm(TForm80, SectionSelection);
  Application.CreateForm(TForm81, SectionsTests);
  Application.CreateForm(TForm82, CrCourse);
  Application.Run;
end.
