(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 11.2' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       158,          7]
NotebookDataLength[    362078,       7380]
NotebookOptionsPosition[    354276,       7256]
NotebookOutlinePosition[    354646,       7272]
CellTagsIndexPosition[    354603,       7269]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData["Quit"], "Input",
 CellChangeTimes->{{3.7633067925116763`*^9, 
  3.763306793276545*^9}},ExpressionUUID->"4e668159-fe90-4dbf-b5bf-\
e72713c8c9d7"],

Cell[CellGroupData[{

Cell[BoxData[
 StyleBox[
  RowBox[{"(*", " ", 
   RowBox[{"Mock", " ", "Data"}], " ", "*)"}],
  FontSize->22]], "Input",
 CellChangeTimes->{{3.763391913325919*^9, 3.763391917166083*^9}, 
   3.7776350188972216`*^9, {3.8019241911706057`*^9, 3.801924191507166*^9}},
 FontColor->RGBColor[0, 1, 1],
 Background->RGBColor[
  0.8666666666666667, 1., 
   1.],ExpressionUUID->"6b7446b4-5a18-428e-aa1d-4b139fd538d4"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"SetDirectory", "[", 
   RowBox[{"NotebookDirectory", "[", "]"}], "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Needs", "[", "\"\<ErrorBarPlots`\>\"", "]"}], ";"}]}], "Input",
 CellChangeTimes->{{3.7643119272362375`*^9, 3.7643119404915056`*^9}, {
  3.7643120912457037`*^9, 
  3.764312094301441*^9}},ExpressionUUID->"93d6513b-e288-4128-bc41-\
1d278683db32"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Some", " ", "mock", " ", "data"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"SeedRandom", "[", "12348551", "]"}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"model", "[", 
     RowBox[{"x_", ",", "a_", ",", "b_", ",", "c_"}], "]"}], ":=", 
    RowBox[{"a", "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"x", "-", "b"}], ")"}], " ", 
      RowBox[{"Exp", "[", 
       RowBox[{
        RowBox[{"-", "c"}], " ", 
        RowBox[{"x", "^", "2"}]}], "]"}]}]}]}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"\[Sigma]", "=", "0.03"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"data", "=", 
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"x", ",", 
         RowBox[{
          RowBox[{"model", "[", 
           RowBox[{"x", ",", 
            RowBox[{"1", "/", "4"}], ",", 
            RowBox[{"1", "/", "4"}], ",", 
            RowBox[{"1", "/", "2"}]}], "]"}], "+", 
          RowBox[{"RandomVariate", "[", 
           RowBox[{"NormalDistribution", "[", 
            RowBox[{"0", ",", "\[Sigma]"}], "]"}], "]"}]}], ",", 
         RowBox[{"RandomVariate", "[", 
          RowBox[{"NormalDistribution", "[", 
           RowBox[{"\[Sigma]", ",", 
            RowBox[{"\[Sigma]", "/", "5"}]}], "]"}], "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0.025", ",", "1.55", ",", "0.05"}], "}"}]}], 
      "]"}]}], ";", 
    RowBox[{"ndat", "=", 
     RowBox[{"Length", "[", "data", "]"}]}], ";"}]}]}]], "Input",
 CellChangeTimes->{{3.536416892587865*^9, 3.536416909857853*^9}, {
   3.5364169635439234`*^9, 3.5364170306987643`*^9}, {3.5364170886940813`*^9, 
   3.536417096676538*^9}, {3.5364171552048855`*^9, 3.536417269779439*^9}, {
   3.536417413652668*^9, 3.5364174152807612`*^9}, {3.5364282368081656`*^9, 
   3.536428238867369*^9}, {3.536480377580065*^9, 3.536480402229474*^9}, 
   3.5364901559503555`*^9, 3.536497663050737*^9, {3.536497999525982*^9, 
   3.5364980068384004`*^9}, 3.5365029142730894`*^9, 3.5365863083538685`*^9, {
   3.5365872218021145`*^9, 3.5365872836566525`*^9}, {3.536587315816492*^9, 
   3.5365873161355104`*^9}, {3.536587728236081*^9, 3.5365877395587287`*^9}, 
   3.536587818910268*^9, {3.5365878579354997`*^9, 3.5365878605586495`*^9}, {
   3.536663580737669*^9, 3.536663580863676*^9}, {3.536687554663884*^9, 
   3.5366875632750998`*^9}, {3.536997998123416*^9, 3.5369980129232616`*^9}, {
   3.536998165725002*^9, 3.536998198943902*^9}, {3.5369983239150496`*^9, 
   3.536998324107061*^9}, 3.5370168816994944`*^9, {3.5370169360906053`*^9, 
   3.537016946537203*^9}, {3.5370914112162867`*^9, 3.5370914552638063`*^9}, {
   3.53709155639059*^9, 3.5370915872733564`*^9}, {3.537091650189955*^9, 
   3.5370916651728125`*^9}, {3.537091872064646*^9, 3.537092042322384*^9}, {
   3.5370920725071106`*^9, 3.537092168524602*^9}, {3.5370922021175237`*^9, 
   3.5370922462040453`*^9}, {3.5370923103877163`*^9, 3.5370923450667*^9}, {
   3.537092407500271*^9, 3.5370924228081465`*^9}, {3.537092503664771*^9, 
   3.537092504010791*^9}, {3.5370925487723513`*^9, 3.537092565450305*^9}, 
   3.537092623703637*^9, {3.537092940295745*^9, 3.5370929880134745`*^9}, {
   3.537093044907728*^9, 3.537093139262125*^9}, {3.5370932524856014`*^9, 
   3.5370932733097925`*^9}, {3.5370933449908924`*^9, 
   3.5370934009220915`*^9}, {3.5370934398423176`*^9, 3.53709352817737*^9}, {
   3.537093572956931*^9, 3.537093603308667*^9}, {3.537093641461849*^9, 
   3.5370936761108313`*^9}, {3.537093718138235*^9, 3.5370937450167723`*^9}, {
   3.5370937971507545`*^9, 3.537093887400916*^9}, {3.5370939456882505`*^9, 
   3.5370940303440924`*^9}, {3.537094069083308*^9, 3.537094106661457*^9}, {
   3.537094192920391*^9, 3.537094255478969*^9}, 3.537094794075775*^9, {
   3.5370948527361307`*^9, 3.5370949236481867`*^9}, {3.537095046040187*^9, 
   3.5370950562287693`*^9}, {3.5370954377625923`*^9, 
   3.5370954502433057`*^9}, {3.537095491551668*^9, 3.537095561458667*^9}, {
   3.537095603508072*^9, 3.537095655885068*^9}, {3.5370956923531537`*^9, 
   3.5370956955483365`*^9}, 3.545058501713605*^9, {3.545829594639374*^9, 
   3.5458296108353004`*^9}, {3.801924314121237*^9, 3.8019243206128335`*^9}, {
   3.8019248273807516`*^9, 3.801924848685453*^9}, 
   3.8019249179159365`*^9},ExpressionUUID->"9f54491e-43de-4bcd-b6b0-\
db38175c5597"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "Definitions", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"chi2GA", "[", 
      RowBox[{"f_", ",", "dat_"}], "]"}], ":=", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"temp", ",", "ft"}], "}"}], ",", 
       RowBox[{
        RowBox[{"ft", "=", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"f", "/.", 
            RowBox[{"x", "\[Rule]", "#"}]}], ")"}], "&"}]}], ";", 
        RowBox[{"temp", "=", 
         RowBox[{"Sum", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             FractionBox[
              RowBox[{
               RowBox[{"dat", "[", 
                RowBox[{"[", 
                 RowBox[{"ii", ",", "2"}], "]"}], "]"}], "-", 
               RowBox[{"(", 
                RowBox[{"ft", "[", 
                 RowBox[{"dat", "[", 
                  RowBox[{"[", 
                   RowBox[{"ii", ",", "1"}], "]"}], "]"}], "]"}], ")"}]}], 
              RowBox[{"dat", "[", 
               RowBox[{"[", 
                RowBox[{"ii", ",", "3"}], "]"}], "]"}]], ")"}], "^", "2"}], 
           ",", 
           RowBox[{"{", 
            RowBox[{"ii", ",", "1", ",", 
             RowBox[{"Length", "[", "dat", "]"}]}], "}"}]}], "]"}]}]}]}], 
      "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"chi2model", "[", 
      RowBox[{"a_", ",", "b_", ",", "c_"}], "]"}], ":=", 
     RowBox[{"Sum", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"data", "[", 
             RowBox[{"[", 
              RowBox[{"ii", ",", "2"}], "]"}], "]"}], "-", 
            RowBox[{"model", "[", 
             RowBox[{
              RowBox[{"data", "[", 
               RowBox[{"[", 
                RowBox[{"ii", ",", "1"}], "]"}], "]"}], ",", "a", ",", "b", 
              ",", "c"}], "]"}]}], ")"}], "/", 
          RowBox[{"data", "[", 
           RowBox[{"[", 
            RowBox[{"ii", ",", "3"}], "]"}], "]"}]}], ")"}], "^", "2"}], ",", 
       RowBox[{"{", 
        RowBox[{"ii", ",", "1", ",", 
         RowBox[{"Length", "[", "data", "]"}]}], "}"}]}], "]"}]}], 
    ";"}]}]}]], "Input",
 CellChangeTimes->{{3.5370952167959538`*^9, 3.5370952288536434`*^9}, {
  3.8019242906952057`*^9, 3.801924302243471*^9}, {3.8019248590553455`*^9, 
  3.801924859502591*^9}, {3.8019248925808363`*^9, 
  3.8019248930669394`*^9}},ExpressionUUID->"da0edf04-636c-4f1a-a4ba-\
77af9763162e"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"Best", " ", "fit"}], " ", "//", " ", 
    RowBox[{"normal", " ", "case"}]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"fmin", "=", 
     RowBox[{"FindMinimum", "[", 
      RowBox[{
       RowBox[{"chi2model", "[", 
        RowBox[{"a", ",", "b", ",", "c"}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"a", ",", "0.2"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"b", ",", ".5"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"c", ",", "0.5"}], "}"}]}], "]"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{"Print", "[", 
    RowBox[{"\"\<\!\(\*SuperscriptBox[\(\[Chi]\), \(2\)]\)/dof= \>\"", ",", 
     FractionBox[
      RowBox[{"fmin", "[", 
       RowBox[{"[", "1", "]"}], "]"}], "ndat"]}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"Print", "[", 
    RowBox[{"\"\<Number of points = \>\"", ",", "ndat"}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{"Plots", " ", "of", " ", "the", " ", "mock", " ", "data"}], " ", 
    "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"err", "=", 
     RowBox[{"ErrorListPlot", "[", 
      RowBox[{"data", ",", 
       RowBox[{"PlotRange", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"0", ",", "1.55"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"0", ",", ".83"}], "}"}]}], "}"}]}]}], "]"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"pl0", "=", 
     RowBox[{"Plot", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"model", "[", 
          RowBox[{"x", ",", 
           RowBox[{"1", "/", "4"}], ",", 
           RowBox[{"1", "/", "4"}], ",", 
           RowBox[{"1", "/", "2"}]}], "]"}], ",", 
         RowBox[{
          RowBox[{"model", "[", 
           RowBox[{"x", ",", "a", ",", "b", ",", "c"}], "]"}], "/.", 
          RowBox[{"fmin", "[", 
           RowBox[{"[", "2", "]"}], "]"}]}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "1.55"}], "}"}], ",", 
       RowBox[{"PlotStyle", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{"Green", ",", "Red"}], "}"}]}]}], "]"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{"Show", "[", 
    RowBox[{"err", ",", "pl0", ",", 
     RowBox[{"Graphics", "[", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"Green", ",", 
          RowBox[{"Line", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{".3", ",", ".2"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{".35", ",", ".2"}], "}"}]}], "}"}], "]"}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"Red", ",", 
          RowBox[{"Line", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{".3", ",", ".1"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{".35", ",", ".1"}], "}"}]}], "}"}], "]"}]}], "}"}]}], 
       "}"}], "]"}], ",", 
     RowBox[{"Frame", "\[Rule]", "True"}], ",", 
     RowBox[{"Axes", "\[Rule]", "False"}], ",", 
     RowBox[{"Epilog", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Text", "[", 
         RowBox[{
         "\"\<Real: a+(x-b) Exp[-c x^2], (a,b,c)=(0.25,0.25,0.5)\>\"", ",", 
          RowBox[{"{", 
           RowBox[{".85", ",", ".2"}], "}"}]}], "]"}], ",", 
        RowBox[{"Text", "[", 
         RowBox[{
         "\"\<Best-fit (a,b,c)=(0.189,0.177,0.458), \!\(\*SuperscriptBox[\(\
\[Chi]\), \(2\)]\)/dof= 1.025\>\"", ",", 
          RowBox[{"{", 
           RowBox[{".87", ",", ".1"}], "}"}]}], "]"}]}], "}"}]}], ",", 
     RowBox[{"FrameLabel", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"\"\<x\>\"", ",", "\"\<f(x)\>\""}], "}"}]}]}], 
    "]"}]}]}]], "Input",
 CellChangeTimes->{{3.5364983645368595`*^9, 3.5364984287365313`*^9}, {
   3.536498492558182*^9, 3.536498495455348*^9}, {3.536499071999324*^9, 
   3.5364990990398707`*^9}, {3.536587325230031*^9, 3.5365873422870064`*^9}, {
   3.536587824338578*^9, 3.536587880700802*^9}, {3.5365900773384423`*^9, 
   3.536590077697463*^9}, {3.5366875227774286`*^9, 3.536687542714263*^9}, {
   3.5369980249969525`*^9, 3.53699803019425*^9}, {3.5369981218604927`*^9, 
   3.536998171044306*^9}, {3.536998218443017*^9, 3.5369982346199427`*^9}, {
   3.536998277709407*^9, 3.5369983096252327`*^9}, {3.537016956338763*^9, 
   3.5370170106108675`*^9}, {3.537019146335024*^9, 3.5370191466920443`*^9}, {
   3.537091527313927*^9, 3.537091543995881*^9}, {3.5370919884423018`*^9, 
   3.537092120038829*^9}, {3.5370921536187496`*^9, 3.5370921904718575`*^9}, {
   3.5370922553145666`*^9, 3.5370923322619677`*^9}, {3.5370923870741024`*^9, 
   3.53709242794044*^9}, {3.5370925159874763`*^9, 3.537092536477648*^9}, {
   3.537092586671519*^9, 3.537092606352645*^9}, {3.5370930098867254`*^9, 
   3.5370930146359973`*^9}, {3.537093256063806*^9, 3.5370932564248266`*^9}, {
   3.537093384041126*^9, 3.537093430773799*^9}, {3.537093535243774*^9, 
   3.5370935637314034`*^9}, {3.537093607913931*^9, 3.537093619252579*^9}, {
   3.537093684434307*^9, 3.537093691734725*^9}, {3.537093864138586*^9, 
   3.537093870241935*^9}, {3.537093918312684*^9, 3.537093937260768*^9}, {
   3.537094134798067*^9, 3.537094148300839*^9}, {3.5370942725639467`*^9, 
   3.5370943295102034`*^9}, 3.537094523306288*^9, {3.53709480080416*^9, 
   3.5370948234434547`*^9}, {3.537094870306135*^9, 3.537094871531205*^9}, {
   3.537094932953718*^9, 3.5370949698468285`*^9}, 3.5370950147273955`*^9, {
   3.5370950592349415`*^9, 3.5370951203304358`*^9}, {3.537095215548882*^9, 
   3.537095221350214*^9}, {3.537095457006693*^9, 3.5370954834772067`*^9}, {
   3.537095518560213*^9, 3.5370955633077726`*^9}, {3.5370956106314793`*^9, 
   3.537095617912896*^9}, {3.53709570662097*^9, 3.537095741031938*^9}, {
   3.545058006566284*^9, 3.5450580348689027`*^9}, {3.5450585192906103`*^9, 
   3.545058522330784*^9}, {3.545829646565344*^9, 3.545830136469365*^9}, {
   3.5458301670221124`*^9, 3.545830449785286*^9}, {3.5458304799950137`*^9, 
   3.5458305253516073`*^9}, {3.801924889958926*^9, 3.801924908640408*^9}, 
   3.80192493876093*^9, {3.801925375047389*^9, 
   3.8019253890970697`*^9}},ExpressionUUID->"9788e989-6faf-4c9c-8f55-\
b0ab4f97291a"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"\\!\\(\\*SuperscriptBox[\\(\[Chi]\\), \\(2\\)]\\)/dof= \"\>", 
   "\[InvisibleSpace]", "1.0258839810072538`"}],
  SequenceForm[
  "\!\(\*SuperscriptBox[\(\[Chi]\), \(2\)]\)/dof= ", 1.0258839810072538`],
  Editable->False]], "Print",
 CellChangeTimes->{
  3.8019243335752296`*^9, {3.8019243701770988`*^9, 3.8019243754796896`*^9}, 
   3.8019248024306645`*^9, 3.8019249039975414`*^9, 3.801924941516162*^9, 
   3.8019250282612767`*^9, 3.8019253108237686`*^9, 3.8019253897166443`*^9, 
   3.801925949127327*^9, 3.8019261590127735`*^9, 
   3.801926495321325*^9},ExpressionUUID->"656ce440-6f3d-4882-95af-\
e80055b03d0b"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"Number of points = \"\>", "\[InvisibleSpace]", "31"}],
  SequenceForm["Number of points = ", 31],
  Editable->False]], "Print",
 CellChangeTimes->{
  3.8019243335752296`*^9, {3.8019243701770988`*^9, 3.8019243754796896`*^9}, 
   3.8019248024306645`*^9, 3.8019249039975414`*^9, 3.801924941516162*^9, 
   3.8019250282612767`*^9, 3.8019253108237686`*^9, 3.8019253897166443`*^9, 
   3.801925949127327*^9, 3.8019261590127735`*^9, 
   3.8019264953323994`*^9},ExpressionUUID->"c083f397-e297-43af-875f-\
016f19a60057"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      0.012833333333333334`], AbsoluteThickness[1.6], PointBox[CompressedData["
1:eJxTTMoPSmViYGCQB2IQPWsmGNh/LNY5e/zDNHsTYxDYbB/0mclM22a7PQMY
HLBnfnDi6GLbg/bpaSBwzN7vzfm+fMFj9mfPgIH9quKdyzYxnrOHmHfRvvIB
b0H7j7P258DSV+y/ZM7XlYq/as8INu+GvcgaxwR1q1tQ+27b2/8+KMf++g7U
/Hv2S31+ffpfdRdq/gP7LrOrX1hePITKP7K3ue+zxtDsIdS8J/bql9sqtyY+
gtr/1P7H1P2neJY8hJr/3F54P6/fFNHHUPNe2Au+rP3DyfgYat4re7V5s1Jn
JD6BmvfGPv9G5KPShCdQ897aN9Y+8X17+hnUvPf2UqwKlV4Kz+3B2tM+2D+w
vXHsnPpze7C08Ud70XmVrrzHnkPD75P9C0kxB7WkZ1D7P9nn1UibLf72DGr+
Z/t732o4zZpg5n2x9wr7q90tBzPvq33cX6F1b/fDzPtmf93xGNMlQ5h53+z7
H3I0SVs/hZr33T77XXz1xdonUPN+2P9fZlylI/HUHgCwyutO
       "]], {{
        LineBox[{{0.025, 0.056381292841883396`}, {
         0.025, -0.011575533606872437`}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.025, 0.056381292841883396`}], 
          Offset[{-1.5, 0}, {0.025, 0.056381292841883396`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.025, -0.011575533606872437`}], 
          Offset[{-1.5, 0}, {0.025, -0.011575533606872437`}]}]}, {
        LineBox[{{0.07500000000000001, 0.12027304028265791`}, {
         0.07500000000000001, 0.06125066555536916}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.07500000000000001, 0.12027304028265791`}], 
          Offset[{-1.5, 0}, {0.07500000000000001, 0.12027304028265791`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.07500000000000001, 0.06125066555536916}], 
          Offset[{-1.5, 0}, {0.07500000000000001, 0.06125066555536916}]}]}, {
        LineBox[{{0.125, 0.15520139885492715`}, {0.125, 
         0.11418579210604277`}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.125, 0.15520139885492715`}], 
          Offset[{-1.5, 0}, {0.125, 0.15520139885492715`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.125, 0.11418579210604277`}], 
          Offset[{-1.5, 0}, {0.125, 0.11418579210604277`}]}]}, {
        LineBox[{{0.17500000000000002`, 0.1880755989226064}, {
         0.17500000000000002`, 0.15673859620014918`}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.17500000000000002`, 0.1880755989226064}], 
          Offset[{-1.5, 0}, {0.17500000000000002`, 0.1880755989226064}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.17500000000000002`, 0.15673859620014918`}], 
          Offset[{-1.5, 0}, {0.17500000000000002`, 
           0.15673859620014918`}]}]}, {
        LineBox[{{0.225, 0.26583772759649643`}, {0.225, 0.2030159013410508}}],
         LineBox[{
         Offset[{1.5, 0}, {0.225, 0.26583772759649643`}], 
          Offset[{-1.5, 0}, {0.225, 0.26583772759649643`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.225, 0.2030159013410508}], 
          Offset[{-1.5, 0}, {0.225, 0.2030159013410508}]}]}, {
        LineBox[{{0.275, 0.270907178304894}, {0.275, 0.19738683131189672`}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.275, 0.270907178304894}], 
          Offset[{-1.5, 0}, {0.275, 0.270907178304894}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.275, 0.19738683131189672`}], 
          Offset[{-1.5, 0}, {0.275, 0.19738683131189672`}]}]}, {
        LineBox[{{0.32500000000000007`, 0.36951619503544897`}, {
         0.32500000000000007`, 0.29834296739708466`}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.32500000000000007`, 0.36951619503544897`}], 
          Offset[{-1.5, 0}, {0.32500000000000007`, 0.36951619503544897`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.32500000000000007`, 0.29834296739708466`}], 
          Offset[{-1.5, 0}, {0.32500000000000007`, 
           0.29834296739708466`}]}]}, {
        LineBox[{{0.37500000000000006`, 0.43697362002052736`}, {
         0.37500000000000006`, 0.3826252340454049}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.37500000000000006`, 0.43697362002052736`}], 
          Offset[{-1.5, 0}, {0.37500000000000006`, 0.43697362002052736`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.37500000000000006`, 0.3826252340454049}], 
          Offset[{-1.5, 0}, {0.37500000000000006`, 0.3826252340454049}]}]}, {
        LineBox[{{0.42500000000000004`, 0.4699612571850725}, {
         0.42500000000000004`, 0.4337286614032901}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.42500000000000004`, 0.4699612571850725}], 
          Offset[{-1.5, 0}, {0.42500000000000004`, 0.4699612571850725}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.42500000000000004`, 0.4337286614032901}], 
          Offset[{-1.5, 0}, {0.42500000000000004`, 0.4337286614032901}]}]}, {
        LineBox[{{0.47500000000000003`, 0.49274770746595353`}, {
         0.47500000000000003`, 0.42851691671568215`}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.47500000000000003`, 0.49274770746595353`}], 
          Offset[{-1.5, 0}, {0.47500000000000003`, 0.49274770746595353`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.47500000000000003`, 0.42851691671568215`}], 
          Offset[{-1.5, 0}, {0.47500000000000003`, 
           0.42851691671568215`}]}]}, {
        LineBox[{{0.525, 0.5895099907100962}, {0.525, 0.5296353610606603}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.525, 0.5895099907100962}], 
          Offset[{-1.5, 0}, {0.525, 0.5895099907100962}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.525, 0.5296353610606603}], 
          Offset[{-1.5, 0}, {0.525, 0.5296353610606603}]}]}, {
        LineBox[{{0.5750000000000001, 0.5668973433915876}, {
         0.5750000000000001, 0.5088336222684826}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.5750000000000001, 0.5668973433915876}], 
          Offset[{-1.5, 0}, {0.5750000000000001, 0.5668973433915876}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.5750000000000001, 0.5088336222684826}], 
          Offset[{-1.5, 0}, {0.5750000000000001, 0.5088336222684826}]}]}, {
        LineBox[{{0.6250000000000001, 0.6054405378697834}, {
         0.6250000000000001, 0.5434141705285715}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.6250000000000001, 0.6054405378697834}], 
          Offset[{-1.5, 0}, {0.6250000000000001, 0.6054405378697834}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.6250000000000001, 0.5434141705285715}], 
          Offset[{-1.5, 0}, {0.6250000000000001, 0.5434141705285715}]}]}, {
        LineBox[{{0.675, 0.5824671808499964}, {0.675, 0.5200840810383813}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.675, 0.5824671808499964}], 
          Offset[{-1.5, 0}, {0.675, 0.5824671808499964}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.675, 0.5200840810383813}], 
          Offset[{-1.5, 0}, {0.675, 0.5200840810383813}]}]}, {
        LineBox[{{0.7250000000000001, 0.6202025505793087}, {
         0.7250000000000001, 0.5725658371171989}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.7250000000000001, 0.6202025505793087}], 
          Offset[{-1.5, 0}, {0.7250000000000001, 0.6202025505793087}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.7250000000000001, 0.5725658371171989}], 
          Offset[{-1.5, 0}, {0.7250000000000001, 0.5725658371171989}]}]}, {
        LineBox[{{0.775, 0.614067410550565}, {0.775, 0.5736862537486755}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.775, 0.614067410550565}], 
          Offset[{-1.5, 0}, {0.775, 0.614067410550565}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.775, 0.5736862537486755}], 
          Offset[{-1.5, 0}, {0.775, 0.5736862537486755}]}]}, {
        LineBox[{{0.8250000000000001, 0.6727763790132901}, {
         0.8250000000000001, 0.6010505986121084}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.8250000000000001, 0.6727763790132901}], 
          Offset[{-1.5, 0}, {0.8250000000000001, 0.6727763790132901}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.8250000000000001, 0.6010505986121084}], 
          Offset[{-1.5, 0}, {0.8250000000000001, 0.6010505986121084}]}]}, {
        LineBox[{{0.8750000000000001, 0.6788388373291875}, {
         0.8750000000000001, 0.5947110857888628}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.8750000000000001, 0.6788388373291875}], 
          Offset[{-1.5, 0}, {0.8750000000000001, 0.6788388373291875}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.8750000000000001, 0.5947110857888628}], 
          Offset[{-1.5, 0}, {0.8750000000000001, 0.5947110857888628}]}]}, {
        LineBox[{{0.925, 0.7412640659887906}, {0.925, 0.6835227918715214}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.925, 0.7412640659887906}], 
          Offset[{-1.5, 0}, {0.925, 0.7412640659887906}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.925, 0.6835227918715214}], 
          Offset[{-1.5, 0}, {0.925, 0.6835227918715214}]}]}, {
        LineBox[{{0.9750000000000001, 0.7502044213548891}, {
         0.9750000000000001, 0.6951791017706024}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.9750000000000001, 0.7502044213548891}], 
          Offset[{-1.5, 0}, {0.9750000000000001, 0.7502044213548891}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.9750000000000001, 0.6951791017706024}], 
          Offset[{-1.5, 0}, {0.9750000000000001, 0.6951791017706024}]}]}, {
        LineBox[{{1.025, 0.7462152122348166}, {1.025, 0.7010034698035731}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.025, 0.7462152122348166}], 
          Offset[{-1.5, 0}, {1.025, 0.7462152122348166}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.025, 0.7010034698035731}], 
          Offset[{-1.5, 0}, {1.025, 0.7010034698035731}]}]}, {
        LineBox[{{1.075, 0.7628902722955111}, {1.075, 0.7229622280354004}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.075, 0.7628902722955111}], 
          Offset[{-1.5, 0}, {1.075, 0.7628902722955111}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.075, 0.7229622280354004}], 
          Offset[{-1.5, 0}, {1.075, 0.7229622280354004}]}]}, {
        LineBox[{{1.125, 0.7265504741649271}, {1.125, 0.6724117854492901}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.125, 0.7265504741649271}], 
          Offset[{-1.5, 0}, {1.125, 0.7265504741649271}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.125, 0.6724117854492901}], 
          Offset[{-1.5, 0}, {1.125, 0.6724117854492901}]}]}, {
        LineBox[{{1.175, 0.7526198292621457}, {1.175, 0.6825944149670794}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.175, 0.7526198292621457}], 
          Offset[{-1.5, 0}, {1.175, 0.7526198292621457}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.175, 0.6825944149670794}], 
          Offset[{-1.5, 0}, {1.175, 0.6825944149670794}]}]}, {
        LineBox[{{1.225, 0.7589463434659394}, {1.225, 0.7103434715432295}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.225, 0.7589463434659394}], 
          Offset[{-1.5, 0}, {1.225, 0.7589463434659394}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.225, 0.7103434715432295}], 
          Offset[{-1.5, 0}, {1.225, 0.7103434715432295}]}]}, {
        LineBox[{{1.275, 0.7499556373830241}, {1.275, 0.6950013059709788}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.275, 0.7499556373830241}], 
          Offset[{-1.5, 0}, {1.275, 0.7499556373830241}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.275, 0.6950013059709788}], 
          Offset[{-1.5, 0}, {1.275, 0.6950013059709788}]}]}, {
        LineBox[{{1.325, 0.7706740163721432}, {1.325, 0.7136835122926938}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.325, 0.7706740163721432}], 
          Offset[{-1.5, 0}, {1.325, 0.7706740163721432}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.325, 0.7136835122926938}], 
          Offset[{-1.5, 0}, {1.325, 0.7136835122926938}]}]}, {
        LineBox[{{1.375, 0.7282506539491211}, {1.375, 0.6589125186179265}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.375, 0.7282506539491211}], 
          Offset[{-1.5, 0}, {1.375, 0.7282506539491211}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.375, 0.6589125186179265}], 
          Offset[{-1.5, 0}, {1.375, 0.6589125186179265}]}]}, {
        LineBox[{{1.425, 0.6875759954993453}, {1.425, 0.6393545349991733}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.425, 0.6875759954993453}], 
          Offset[{-1.5, 0}, {1.425, 0.6875759954993453}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.425, 0.6393545349991733}], 
          Offset[{-1.5, 0}, {1.425, 0.6393545349991733}]}]}, {
        LineBox[{{1.475, 0.6601790430504278}, {1.475, 0.6205383126133922}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.475, 0.6601790430504278}], 
          Offset[{-1.5, 0}, {1.475, 0.6601790430504278}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.475, 0.6205383126133922}], 
          Offset[{-1.5, 0}, {1.475, 0.6205383126133922}]}]}, {
        LineBox[{{1.525, 0.6749726883193142}, {1.525, 0.6434291035876644}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.525, 0.6749726883193142}], 
          Offset[{-1.5, 0}, {1.525, 0.6749726883193142}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.525, 0.6434291035876644}], 
          Offset[{-1.5, 0}, {1.525, 
           0.6434291035876644}]}]}}}, {}}, {}, {}, {}, {}}, {{{}, {}, 
     TagBox[
      {RGBColor[0, 1, 0], AbsoluteThickness[1.6], Opacity[1.], 
       LineBox[CompressedData["
1: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

        "]]},
      Annotation[#, "Charting`Private`Tag$1350#1"]& ], 
     TagBox[
      {RGBColor[1, 0, 0], AbsoluteThickness[1.6], Opacity[1.], 
       LineBox[CompressedData["
1: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
90xnwWSmZUVNDR8nWpXDxdNY+D/CZ5f6
        "]]},
      Annotation[#, "Charting`Private`Tag$1350#2"]& ]}, {}, {}}, {
    {RGBColor[0, 1, 0], LineBox[{{0.3, 0.2}, {0.35, 0.2}}]}, 
    {RGBColor[1, 0, 0], LineBox[{{0.3, 0.1}, {0.35, 0.1}}]}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->False,
  AxesLabel->{None, None},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Epilog->{
    InsetBox[
     FormBox[
     "\"Real: a+(x-b) Exp[-c x^2], (a,b,c)=(0.25,0.25,0.5)\"", 
      TraditionalForm], {0.85, 0.2}], 
    InsetBox[
     FormBox[
     "\"Best-fit (a,b,c)=(0.189,0.177,0.458), \\!\\(\\*SuperscriptBox[\\(\
\[Chi]\\), \\(2\\)]\\)/dof= 1.025\"", TraditionalForm], {0.87, 0.1}]},
  Frame->True,
  FrameLabel->{
    FormBox["\"x\"", TraditionalForm], 
    FormBox["\"f(x)\"", TraditionalForm]},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{0, 1.55}, {0, 0.83}},
  PlotRangeClipping->True,
  PlotRangePadding->{{0, 0}, {0, 0}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.8019243337985168`*^9, {3.8019243702632127`*^9, 3.8019243756521187`*^9}, 
   3.801924802625598*^9, 3.801924904739002*^9, 3.801924941709115*^9, 
   3.801925028462042*^9, 3.801925310997734*^9, 3.8019253898079014`*^9, 
   3.8019259493132677`*^9, 3.801926159189288*^9, 
   3.801926495524262*^9},ExpressionUUID->"a69390dd-ad2e-4a8f-b0be-\
d8bfbf5a2976"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", " ", "end", " ", "*)"}]], "Input",
 CellChangeTimes->{{3.536662519072945*^9, 3.536662528451482*^9}, {
  3.801924246205366*^9, 
  3.801924246450485*^9}},ExpressionUUID->"fea49ac5-5dc6-4c9f-a284-\
24391c0e61dc"]
}, Closed]],

Cell[CellGroupData[{

Cell[BoxData[
 StyleBox[
  RowBox[{"(*", " ", 
   RowBox[{"GA", " ", "theory"}], " ", "*)"}],
  FontSize->22]], "Input",
 CellChangeTimes->{{3.45933594471875*^9, 3.459335946515625*^9}, {
   3.459336055796875*^9, 3.45933605609375*^9}, {3.492431879104447*^9, 
   3.492431879773485*^9}, {3.5165970020070887`*^9, 3.516597018431028*^9}, {
   3.569580290714876*^9, 3.5695803058717427`*^9}, {3.5884079910884295`*^9, 
   3.5884079943286147`*^9}, 3.6738516250815153`*^9, 3.762589944373198*^9, {
   3.7776344150377164`*^9, 3.777634438749977*^9}},
 Background->RGBColor[
  0.8431372549019608, 1., 
   1.],ExpressionUUID->"ab3b2b04-bfd4-4e53-9182-de88042207ec"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"poly", "[", "x_", "]"}], ":=", "x"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"polyxtox", "[", "x_", "]"}], ":=", 
   RowBox[{"x", "^", "x"}]}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"grammar", "=", 
     RowBox[{"{", 
      RowBox[{
      "poly", ",", "Exp", ",", "Sin", ",", "Cos", ",", "Tan", ",", "Log"}], 
      "}"}]}], ";"}], "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"grammar", "=", 
    RowBox[{"{", 
     RowBox[{"poly", ",", "polyxtox"}], "}"}]}], ";"}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"Expression", " ", "length"}], " ", 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"length", "=", "4"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"depth", "=", "4"}], ";"}], "\n", 
 RowBox[{
  RowBox[{"rang1", "=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "1"}], ",", "1"}], "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"rang2", "=", 
   RowBox[{"{", 
    RowBox[{"1", ",", 
     RowBox[{"Length", "[", "grammar", "]"}]}], "}"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"rang3", "=", 
   RowBox[{"{", 
    RowBox[{"0", ",", "2"}], "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"rang4", "=", 
   RowBox[{"{", 
    RowBox[{"0", ",", "9"}], "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"toursize", "=", "4"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"selectionrate", "=", "0.3"}], ";"}]}], "Input",
 CellChangeTimes->{{3.763361530040331*^9, 3.7633615788336115`*^9}, {
   3.7633914732511406`*^9, 3.7633914734302683`*^9}, {3.7633918379582715`*^9, 
   3.763391838170884*^9}, 3.763393161497716*^9, {3.7635367084558344`*^9, 
   3.7635367586260986`*^9}, {3.7635374695274043`*^9, 3.763537472481928*^9}, {
   3.7635640088762455`*^9, 3.763564009089052*^9}, {3.763565536600305*^9, 
   3.763565549919981*^9}, 3.777632400400199*^9, {3.7784051509249115`*^9, 
   3.7784051519644527`*^9}, {3.778406157412403*^9, 3.7784061607892685`*^9}, {
   3.801925040886589*^9, 
   3.8019250410394897`*^9}},ExpressionUUID->"69428177-178b-406e-a34d-\
ca07bdd34828"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"func", "[", 
   RowBox[{"x_", ",", "kid_", ",", "gram_"}], "]"}], ":=", 
  RowBox[{"Sum", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"kid", "[", 
      RowBox[{"[", 
       RowBox[{"i", ",", "1"}], "]"}], "]"}], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"gram", "[", 
         RowBox[{"[", 
          RowBox[{"kid", "[", 
           RowBox[{"[", 
            RowBox[{"i", ",", "2"}], "]"}], "]"}], "]"}], "]"}], "@", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"kid", "[", 
           RowBox[{"[", 
            RowBox[{"i", ",", "3"}], "]"}], "]"}], "x"}], ")"}]}], ")"}], 
      RowBox[{"kid", "[", 
       RowBox[{"[", 
        RowBox[{"i", ",", "4"}], "]"}], "]"}]]}], ",", 
    RowBox[{"{", 
     RowBox[{"i", ",", "1", ",", "length"}], "}"}]}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"mutation", "[", "kid_", "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"mut", ",", "rep"}], "}"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"rep", "=", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"RandomInteger", "[", 
         RowBox[{"{", 
          RowBox[{"1", ",", "length"}], "}"}], "]"}], ",", 
        RowBox[{"RandomInteger", "[", 
         RowBox[{"{", 
          RowBox[{"1", ",", "depth"}], "}"}], "]"}]}], "}"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"mut", "=", 
      RowBox[{"Which", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"rep", "[", 
          RowBox[{"[", "2", "]"}], "]"}], "\[Equal]", "1"}], ",", 
        RowBox[{"RandomReal", "[", "rang1", "]"}], ",", 
        RowBox[{
         RowBox[{"rep", "[", 
          RowBox[{"[", "2", "]"}], "]"}], "\[Equal]", "2"}], ",", 
        RowBox[{"RandomInteger", "[", "rang2", "]"}], ",", 
        RowBox[{
         RowBox[{"rep", "[", 
          RowBox[{"[", "2", "]"}], "]"}], "\[Equal]", "3"}], ",", 
        RowBox[{"RandomReal", "[", "rang3", "]"}], ",", 
        RowBox[{
         RowBox[{"rep", "[", 
          RowBox[{"[", "2", "]"}], "]"}], "\[Equal]", "4"}], ",", 
        RowBox[{"RandomInteger", "[", "rang4", "]"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"ReplacePart", "[", 
      RowBox[{"kid", ",", 
       RowBox[{"rep", "\[Rule]", "mut"}]}], "]"}]}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"cross", "[", 
   RowBox[{"{", 
    RowBox[{"kid1_", ",", "kid2_"}], "}"}], "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", "len", "}"}], ",", 
    RowBox[{
     RowBox[{"len", "=", 
      RowBox[{"RandomInteger", "[", 
       RowBox[{"{", 
        RowBox[{"1", ",", 
         RowBox[{"length", "-", "1"}]}], "}"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Join", "[", 
        RowBox[{
         RowBox[{"kid1", "[", 
          RowBox[{"[", 
           RowBox[{"1", ";;", "len"}], "]"}], "]"}], ",", 
         RowBox[{"kid2", "[", 
          RowBox[{"[", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"len", "+", "1"}], ")"}], ";;", 
            RowBox[{"-", "1"}]}], "]"}], "]"}]}], "]"}], ",", 
       RowBox[{"Join", "[", 
        RowBox[{
         RowBox[{"kid1", "[", 
          RowBox[{"[", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"len", "+", "1"}], ")"}], ";;", 
            RowBox[{"-", "1"}]}], "]"}], "]"}], ",", 
         RowBox[{"kid2", "[", 
          RowBox[{"[", 
           RowBox[{"1", ";;", "len"}], "]"}], "]"}]}], "]"}]}], "}"}]}]}], 
   "]"}]}]}], "Input",
 CellChangeTimes->{{3.7633918484006243`*^9, 
  3.7633918486160555`*^9}},ExpressionUUID->"097f8843-a440-474d-9282-\
b33b3004a8a4"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"tournament", "[", 
   RowBox[{"fit_", ",", "tours_"}], "]"}], ":=", 
  RowBox[{
   RowBox[{"Sort", "[", 
    RowBox[{
     RowBox[{"RandomSample", "[", 
      RowBox[{"fit", ",", "tours"}], "]"}], ",", 
     RowBox[{
      RowBox[{
       RowBox[{"#1", "[", 
        RowBox[{"[", "1", "]"}], "]"}], ">", 
       RowBox[{"#2", "[", 
        RowBox[{"[", "1", "]"}], "]"}]}], "&"}]}], "]"}], "[", 
   RowBox[{"[", 
    RowBox[{"1", ",", "2"}], "]"}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"negativetournament", "[", 
   RowBox[{"fit_", ",", "tours_"}], "]"}], ":=", 
  RowBox[{
   RowBox[{"Sort", "[", 
    RowBox[{
     RowBox[{"RandomSample", "[", 
      RowBox[{"fit", ",", "tours"}], "]"}], ",", 
     RowBox[{
      RowBox[{
       RowBox[{"#1", "[", 
        RowBox[{"[", "1", "]"}], "]"}], ">", 
       RowBox[{"#2", "[", 
        RowBox[{"[", "1", "]"}], "]"}]}], "&"}]}], "]"}], "[", 
   RowBox[{"[", 
    RowBox[{
     RowBox[{"-", "1"}], ",", "2"}], "]"}], "]"}]}]}], "Input",ExpressionUUID-\
>"7c06f1fd-fb96-42c8-a5d6-8ce12f14aef9"],

Cell[BoxData[
 RowBox[{
  RowBox[{"GAevo", "[", 
   RowBox[{
   "randomseed_", ",", "maxgens_", ",", "pop_", ",", "crossrate_", ",", 
    "mutrate_", ",", "verbose_"}], "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "prog", ",", "bestfitperstep", ",", "chromosomes", ",", "t1", ",", 
      "pigs", ",", "fitness", ",", "p1", ",", "p2", ",", "maxchilds"}], "}"}],
     ",", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"maxchilds", "=", 
      RowBox[{"Round", "[", 
       RowBox[{
        RowBox[{"selectionrate", "*", "pop"}], ",", "2"}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"SeedRandom", "[", "randomseed", "]"}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"ParallelEvaluate", "[", 
      RowBox[{"SeedRandom", "[", "randomseed", "]"}], "]"}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"bestfitperstep", "=", 
      RowBox[{"{", "}"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"chromosomes", "=", 
      RowBox[{"ParallelTable", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"RandomReal", "[", "rang1", "]"}], ",", 
          RowBox[{"RandomInteger", "[", "rang2", "]"}], ",", 
          RowBox[{"RandomReal", "[", "rang3", "]"}], ",", 
          RowBox[{"RandomInteger", "[", "rang4", "]"}]}], "}"}], ",", 
        RowBox[{"{", "pop", "}"}], ",", 
        RowBox[{"{", "length", "}"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"t1", "=", 
      RowBox[{"AbsoluteTime", "[", "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"Do", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"pigs", "=", 
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{"x", "+", 
             RowBox[{
              SuperscriptBox["x", "2"], "*", 
              RowBox[{"(", 
               RowBox[{"1", "+", 
                RowBox[{"func", "[", 
                 RowBox[{"x", ",", "#", ",", "grammar"}], "]"}]}], ")"}]}]}], 
            ")"}], "&"}], "/@", "chromosomes"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"fitness", "=", 
         RowBox[{"Sort", "[", 
          RowBox[{
           RowBox[{"ParallelTable", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", 
                RowBox[{"MemoryConstrained", "[", 
                 RowBox[{
                  RowBox[{"TimeConstrained", "[", 
                   RowBox[{
                    RowBox[{"chi2GA", "[", 
                    RowBox[{
                    RowBox[{"pigs", "[", 
                    RowBox[{"[", "j", "]"}], "]"}], ",", "data"}], "]"}], ",",
                     ".5"}], "]"}], ",", 
                  SuperscriptBox["10", "7"]}], "]"}]}], ",", "j"}], "}"}], 
             ",", 
             RowBox[{"{", 
              RowBox[{"j", ",", "1", ",", 
               RowBox[{"Length", "[", "pigs", "]"}]}], "}"}]}], "]"}], ",", 
           RowBox[{
            RowBox[{
             RowBox[{"#1", "[", 
              RowBox[{"[", "1", "]"}], "]"}], ">", 
             RowBox[{"#2", "[", 
              RowBox[{"[", "1", "]"}], "]"}]}], "&"}]}], "]"}]}], ";", 
        RowBox[{"AppendTo", "[", 
         RowBox[{"bestfitperstep", ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"fitness", "[", 
             RowBox[{"[", 
              RowBox[{"1", ",", "1"}], "]"}], "]"}], ",", 
            RowBox[{"pigs", "[", 
             RowBox[{"[", 
              RowBox[{"fitness", "[", 
               RowBox[{"[", 
                RowBox[{"1", ",", "2"}], "]"}], "]"}], "]"}], "]"}], ",", 
            RowBox[{"chromosomes", "[", 
             RowBox[{"[", 
              RowBox[{"fitness", "[", 
               RowBox[{"[", 
                RowBox[{"1", ",", "2"}], "]"}], "]"}], "]"}], "]"}]}], 
           "}"}]}], "]"}], ";", 
        RowBox[{"p1", "=", 
         RowBox[{"Partition", "[", 
          RowBox[{
           RowBox[{"RandomSample", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"Table", "[", 
               RowBox[{
                RowBox[{"negativetournament", "[", 
                 RowBox[{"fitness", ",", "toursize"}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"10", "maxchilds"}], "}"}]}], "]"}], "//", "Union"}],
              ",", "maxchilds"}], "]"}], ",", "2"}], "]"}]}], ";", 
        RowBox[{"p2", "=", 
         RowBox[{"Partition", "[", 
          RowBox[{
           RowBox[{"RandomSample", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"Table", "[", 
               RowBox[{
                RowBox[{"tournament", "[", 
                 RowBox[{"fitness", ",", "toursize"}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"10", "maxchilds"}], "}"}]}], "]"}], "//", "Union"}],
              ",", "maxchilds"}], "]"}], ",", "2"}], "]"}]}], ";", 
        RowBox[{"Do", "[", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"chromosomes", "[", 
               RowBox[{"[", 
                RowBox[{"p1", "[", 
                 RowBox[{"[", 
                  RowBox[{"jj", ",", "1"}], "]"}], "]"}], "]"}], "]"}], ",", 
              RowBox[{"chromosomes", "[", 
               RowBox[{"[", 
                RowBox[{"p1", "[", 
                 RowBox[{"[", 
                  RowBox[{"jj", ",", "2"}], "]"}], "]"}], "]"}], "]"}]}], 
             "}"}], "=", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"RandomReal", "[", 
                RowBox[{"{", 
                 RowBox[{"0", ",", "1"}], "}"}], "]"}], "<", "crossrate"}], 
              ",", "\[IndentingNewLine]", 
              RowBox[{"cross", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"chromosomes", "[", 
                  RowBox[{"[", 
                   RowBox[{"p2", "[", 
                    RowBox[{"[", 
                    RowBox[{"jj", ",", "1"}], "]"}], "]"}], "]"}], "]"}], ",",
                  " ", 
                 RowBox[{"chromosomes", "[", 
                  RowBox[{"[", 
                   RowBox[{"p2", "[", 
                    RowBox[{"[", 
                    RowBox[{"jj", ",", "2"}], "]"}], "]"}], "]"}], "]"}]}], 
                "}"}], "]"}], ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"chromosomes", "[", 
                 RowBox[{"[", 
                  RowBox[{"p1", "[", 
                   RowBox[{"[", 
                    RowBox[{"jj", ",", "1"}], "]"}], "]"}], "]"}], "]"}], ",", 
                RowBox[{"chromosomes", "[", 
                 RowBox[{"[", 
                  RowBox[{"p1", "[", 
                   RowBox[{"[", 
                    RowBox[{"jj", ",", "2"}], "]"}], "]"}], "]"}], "]"}]}], 
               "}"}]}], "]"}]}], ";"}], ",", 
          RowBox[{"{", 
           RowBox[{"jj", ",", "1", ",", 
            RowBox[{"Length", "[", "p1", "]"}]}], "}"}]}], "]"}], ";", 
        RowBox[{"Do", "[", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"chromosomes", "[", 
               RowBox[{"[", 
                RowBox[{"p1", "[", 
                 RowBox[{"[", 
                  RowBox[{"jj", ",", "1"}], "]"}], "]"}], "]"}], "]"}], ",", 
              RowBox[{"chromosomes", "[", 
               RowBox[{"[", 
                RowBox[{"p1", "[", 
                 RowBox[{"[", 
                  RowBox[{"jj", ",", "2"}], "]"}], "]"}], "]"}], "]"}]}], 
             "}"}], "=", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"RandomReal", "[", 
                RowBox[{"{", 
                 RowBox[{"0", ",", "1"}], "}"}], "]"}], "<", "mutrate"}], ",",
               "\[IndentingNewLine]", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"mutation", "[", 
                 RowBox[{"chromosomes", "[", 
                  RowBox[{"[", 
                   RowBox[{"p2", "[", 
                    RowBox[{"[", 
                    RowBox[{"jj", ",", "1"}], "]"}], "]"}], "]"}], "]"}], 
                 "]"}], ",", 
                RowBox[{"mutation", "[", 
                 RowBox[{"chromosomes", "[", 
                  RowBox[{"[", 
                   RowBox[{"p2", "[", 
                    RowBox[{"[", 
                    RowBox[{"jj", ",", "2"}], "]"}], "]"}], "]"}], "]"}], 
                 "]"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"chromosomes", "[", 
                 RowBox[{"[", 
                  RowBox[{"p1", "[", 
                   RowBox[{"[", 
                    RowBox[{"jj", ",", "1"}], "]"}], "]"}], "]"}], "]"}], ",", 
                RowBox[{"chromosomes", "[", 
                 RowBox[{"[", 
                  RowBox[{"p1", "[", 
                   RowBox[{"[", 
                    RowBox[{"jj", ",", "2"}], "]"}], "]"}], "]"}], "]"}]}], 
               "}"}]}], "]"}]}], ";"}], ",", 
          RowBox[{"{", 
           RowBox[{"jj", ",", "1", ",", 
            RowBox[{"Length", "[", "p1", "]"}]}], "}"}]}], "]"}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"prog`int", "++"}]}], ",", 
       RowBox[{"{", "maxgens", "}"}]}], "]"}], ";", "\[IndentingNewLine]", 
     RowBox[{"If", "[", 
      RowBox[{
       RowBox[{"verbose", "\[Equal]", "True"}], ",", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"Print", "[", 
         RowBox[{"\"\<Time taken: \>\"", ",", 
          RowBox[{
           RowBox[{"AbsoluteTime", "[", "]"}], "-", "t1"}], ",", 
          "\"\< sec\>\""}], "]"}], ";", "\[IndentingNewLine]", 
        RowBox[{"Print", "[", 
         RowBox[{
         "\"\<\!\(\*SuperscriptBox[SubscriptBox[\(\[Chi]\), \(min\)], \
\(2\)]\) = \>\"", ",", 
          RowBox[{"Abs", "[", 
           RowBox[{"fitness", "[", 
            RowBox[{"[", 
             RowBox[{"1", ",", "1"}], "]"}], "]"}], "]"}]}], "]"}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"Print", "[", "\"\<Best-fit function is: \>\"", "]"}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"Print", "[", 
         RowBox[{"bestfitperstep", "[", 
          RowBox[{"[", 
           RowBox[{
            RowBox[{"-", "1"}], ",", "2"}], "]"}], "]"}], "]"}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"Speak", "[", "\"\<The end\>\"", "]"}], ";"}]}], "]"}], ";", 
     "\[IndentingNewLine]", "bestfitperstep"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.7784033478710065`*^9, 3.7784033830214477`*^9}, {
  3.778403434701226*^9, 3.778403601425473*^9}, {3.778403809191017*^9, 
  3.7784038476918263`*^9}, {3.778403962211406*^9, 3.7784040067539396`*^9}, {
  3.7784041088681717`*^9, 3.7784041504211483`*^9}, {3.7784048007844224`*^9, 
  3.778404813504496*^9}, {3.7784049057146606`*^9, 3.778404913264098*^9}, {
  3.7784049676444197`*^9, 3.7784051050143166`*^9}, {3.778405136244371*^9, 
  3.778405141797906*^9}, {3.7784053747243986`*^9, 3.778405411217189*^9}, {
  3.7784061324062643`*^9, 3.778406152598372*^9}, {3.778406246087945*^9, 
  3.778406246265281*^9}, {3.7784764207461424`*^9, 3.7784764483291073`*^9}, {
  3.801924349880456*^9, 3.8019243640417423`*^9}, {3.8019250493196716`*^9, 
  3.801925066222498*^9}},ExpressionUUID->"ef3015d1-683f-4b25-b841-\
285a8ca0ee9a"],

Cell[BoxData[
 RowBox[{"(*", " ", "end", " ", "*)"}]], "Input",
 CellChangeTimes->{{3.7633931850260787`*^9, 
  3.7633931870170894`*^9}},ExpressionUUID->"ca8556c4-177d-4a5c-9bd5-\
55104b59f527"]
}, Closed]],

Cell[CellGroupData[{

Cell[BoxData[
 StyleBox[
  RowBox[{"(*", " ", 
   RowBox[{"GA", " ", "//", " ", 
    RowBox[{"one", " ", "fit"}]}], " ", "*)"}],
  FontSize->22]], "Input",
 CellChangeTimes->{{3.764312986551441*^9, 3.7643129885059814`*^9}, 
   3.777635020609703*^9, 3.7776351044969716`*^9, {3.8019252828305664`*^9, 
   3.801925295241192*^9}},
 Background->RGBColor[
  0.9, 1, 1],ExpressionUUID->"9936d293-927b-4518-935d-55993e56cccb"],

Cell[BoxData[
 RowBox[{
  RowBox[{"LaunchKernels", "[", "7", "]"}], ";"}]], "Input",
 CellChangeTimes->{{3.763393214452123*^9, 
  3.763393218592304*^9}},ExpressionUUID->"feb50f14-2c9c-4552-aa5e-\
78e458875e83"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Run", " ", "the", " ", "GA", " ", "code", " ", "with", " ", "1", " ", 
    "random", " ", "seed"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"generations", "=", "1500"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"prog`int", "=", "0"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"ProgressIndicator", "[", 
    RowBox[{
     RowBox[{"Dynamic", "[", "prog`int", "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "generations"}], "}"}]}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{"{", 
     RowBox[{
     "randomseed", ",", " ", "maxgens", ",", " ", "population", ",", " ", 
      "crossoverrate", ",", " ", "mutationrate", ",", " ", 
      RowBox[{"verbose", " ", 
       RowBox[{"(", 
        RowBox[{"True", "/", "False"}], ")"}]}]}], "}"}], " ", "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"GApop", "=", 
     RowBox[{"GAevo", "[", 
      RowBox[{
      "1234", ",", "generations", ",", "100", ",", "0.75", ",", "0.3", ",", 
       "True"}], "]"}]}], ";"}]}]}]], "Input",
 CellChangeTimes->{
  3.778403616991485*^9, {3.7784039122216816`*^9, 3.778403924643993*^9}, {
   3.778403970401459*^9, 3.7784039829621897`*^9}, {3.7784048217145576`*^9, 
   3.7784048457640886`*^9}, {3.7784049208842654`*^9, 3.778404935524335*^9}, {
   3.778405114116522*^9, 3.778405114499031*^9}, {3.778405185454662*^9, 
   3.7784052327646866`*^9}, 3.778405414304783*^9, 3.778405504644823*^9, {
   3.77840606098112*^9, 3.7784061116535263`*^9}, {3.778406341325013*^9, 
   3.778406343055256*^9}, {3.778406446845564*^9, 3.7784064470573015`*^9}, {
   3.7784125020994053`*^9, 3.7784125030270696`*^9}, {3.778476471705838*^9, 
   3.778476499641095*^9}, {3.801924432392068*^9, 3.8019244457704463`*^9}, 
   3.801924481761086*^9, {3.8019251870197897`*^9, 3.801925193795885*^9}, {
   3.801925950041278*^9, 3.801925977357977*^9}, 
   3.801926166849247*^9},ExpressionUUID->"7ed6f6d2-de9d-4e45-9311-\
2a4dac26d5ab"],

Cell[BoxData[
 ProgressIndicatorBox[Dynamic[prog`int], {0, 1500}]], "Output",
 CellChangeTimes->{3.8019253347375326`*^9, 3.8019259558999195`*^9, 
  3.8019261682967567`*^9},ExpressionUUID->"1213faa5-acb5-4919-aac6-\
1137c9ef0403"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"Time taken: \"\>", "\[InvisibleSpace]", 
   "125.8198001`9.55129398434706", "\[InvisibleSpace]", "\<\" sec\"\>"}],
  SequenceForm["Time taken: ", 125.8198001`9.55129398434706, " sec"],
  Editable->False]], "Print",
 CellChangeTimes->{3.80192536161766*^9, 3.8019260427039013`*^9, 
  3.801926294137656*^9},ExpressionUUID->"88c80677-4e7a-4c23-bc3c-\
120b7c4a09b1"],

Cell[BoxData[
 InterpretationBox[
  RowBox[{"\<\"\\!\\(\\*SuperscriptBox[SubscriptBox[\\(\[Chi]\\), \\(min\\)], \
\\(2\\)]\\) = \"\>", "\[InvisibleSpace]", "29.176011654503796`"}],
  SequenceForm[
  "\!\(\*SuperscriptBox[SubscriptBox[\(\[Chi]\), \(min\)], \(2\)]\) = ", 
   29.176011654503796`],
  Editable->False]], "Print",
 CellChangeTimes->{3.80192536161766*^9, 3.8019260427039013`*^9, 
  3.8019262941396866`*^9},ExpressionUUID->"05650985-73cd-4e6a-8ae1-\
836d70b1524d"],

Cell[BoxData["\<\"Best-fit function is: \"\>"], "Print",
 CellChangeTimes->{3.80192536161766*^9, 3.8019260427039013`*^9, 
  3.8019262941396866`*^9},ExpressionUUID->"9bf5227e-719a-427f-9a52-\
c817361cc9b5"],

Cell[BoxData[
 RowBox[{"x", "+", 
  RowBox[{
   SuperscriptBox["x", "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"-", "0.5128968007741621`"}], "+", 
     RowBox[{"1.5528875590678615`", " ", 
      SuperscriptBox["0.08918560377688678`", 
       RowBox[{"0.802670433991981`", " ", "x"}]], " ", 
      SuperscriptBox["x", 
       RowBox[{"0.802670433991981`", " ", "x"}]]}]}], ")"}]}]}]], "Print",
 CellChangeTimes->{3.80192536161766*^9, 3.8019260427039013`*^9, 
  3.80192629414771*^9},ExpressionUUID->"da6f0610-17f4-4d27-9a7e-cbb1aa0a77f4"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Plot", " ", "of", " ", "the", " ", "generations"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"ListLogLogPlot", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"GApop", "[", 
      RowBox[{"[", 
       RowBox[{"All", ",", "1"}], "]"}], "]"}], "//", "Abs"}], ",", 
    RowBox[{"Joined", "\[Rule]", "True"}], ",", 
    RowBox[{"PlotRange", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"1", ",", 
         RowBox[{"4", " ", "generations"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"20", ",", 
         SuperscriptBox["10", "4"]}], "}"}]}], "}"}]}], ",", 
    RowBox[{"Frame", "\[Rule]", "True"}], ",", 
    RowBox[{"FrameStyle", "\[Rule]", "Black"}], ",", 
    RowBox[{"Epilog", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"Dashed", ",", 
         RowBox[{"Line", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"0.1", ",", 
               RowBox[{"fmin", "[", 
                RowBox[{"[", "1", "]"}], "]"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"4", "generations"}], ",", 
               RowBox[{"fmin", "[", 
                RowBox[{"[", "1", "]"}], "]"}]}], "}"}]}], "}"}], "//", 
           "Log"}], "]"}]}], "}"}], ",", 
       RowBox[{"Inset", "[", 
        RowBox[{
         RowBox[{"ListLogLogPlot", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"GApop", "[", 
             RowBox[{"[", 
              RowBox[{"All", ",", "1"}], "]"}], "]"}], "//", "Abs"}], ",", 
           RowBox[{"Joined", "\[Rule]", "True"}], ",", 
           RowBox[{"PlotRange", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"100", ",", "1500"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"28", ",", "34"}], "}"}]}], "}"}]}], ",", 
           RowBox[{"Frame", "\[Rule]", "True"}], ",", 
           RowBox[{"FrameStyle", "\[Rule]", "Black"}], ",", 
           RowBox[{"Epilog", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{"Dashed", ",", 
              RowBox[{"Line", "[", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"0.1", ",", 
                    RowBox[{"fmin", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"4", "generations"}], ",", 
                    RowBox[{"fmin", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "}"}]}], "}"}], "//", 
                "Log"}], "]"}]}], "}"}]}], ",", 
           RowBox[{"FrameLabel", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{
             "\"\<N\>\"", ",", 
              "\"\<\!\(\*SuperscriptBox[\(\[Chi]\), \(2\)]\)(N)\>\""}], 
             "}"}]}], ",", 
           RowBox[{"FrameStyle", "\[Rule]", "Black"}], ",", 
           RowBox[{"BaseStyle", "\[Rule]", 
            RowBox[{"FontSize", "\[Rule]", "14"}]}], ",", 
           RowBox[{"ImageSize", "\[Rule]", "250"}]}], "]"}], ",", 
         RowBox[{"Scaled", "[", 
          RowBox[{"{", 
           RowBox[{"0.7", ",", "0.65"}], "}"}], "]"}]}], "]"}]}], "}"}]}], 
    ",", 
    RowBox[{"FrameLabel", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{
      "\"\<N\>\"", ",", 
       "\"\<\!\(\*SuperscriptBox[\(\[Chi]\), \(2\)]\)(N)\>\""}], "}"}]}], ",", 
    RowBox[{"FrameStyle", "\[Rule]", "Black"}], ",", 
    RowBox[{"BaseStyle", "\[Rule]", 
     RowBox[{"FontSize", "\[Rule]", "14"}]}], ",", 
    RowBox[{"ImageSize", "\[Rule]", "500"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.7633929266727533`*^9, 3.763393070201845*^9}, {
  3.763393332764333*^9, 3.7633934005734005`*^9}, {3.763537137275759*^9, 
  3.7635371771383505`*^9}, {3.7635372196169186`*^9, 3.7635372965386815`*^9}, {
  3.763537938338153*^9, 3.7635379679532356`*^9}, {3.7643140555012016`*^9, 
  3.7643140674011965`*^9}, {3.7643141046710367`*^9, 3.7643141048214316`*^9}, {
  3.778404030116023*^9, 3.778404030853419*^9}, {3.778405288774827*^9, 
  3.778405336544338*^9}, {3.778476842681634*^9, 3.778476872058549*^9}, {
  3.7784774635163536`*^9, 3.778477481286607*^9}, {3.7784820163028464`*^9, 
  3.778482285739515*^9}, {3.8019247594902315`*^9, 3.801924775866001*^9}, {
  3.8019252609445477`*^9, 3.8019252637738557`*^9}, {3.801925347923712*^9, 
  3.801925362462548*^9}, {3.801925400759549*^9, 3.8019254355449305`*^9}, {
  3.8019259825394335`*^9, 3.8019259897317753`*^9}, {3.801926303719161*^9, 
  3.8019263969954863`*^9}},ExpressionUUID->"7f447e9b-ca99-403a-bbef-\
7879ada59ac8"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.004583333333333334], 
     AbsoluteThickness[1.6], 
     StyleBox[LineBox[CompressedData["
1:eJxN3Hc8Vv8bP3B7Z5WVLSrR4lNkhMpqIZEZiZSSEYnKLKOMJBUREVIie2SP
kOyMKAllpMxEGb/v7+fx6/X+y+P5OLdz3ud6X9f1Pvd9n/uIWjkcs6GioKD4
QEtB8X//0tPLRr0/NKfCbZD7OvO8mKpsyI/fauULKk6Sdg/d+oVVqUS2/GF+
sfjPJ0xk0p3FVv750gtFlawECtX/b2bqlx5jEZT/vLpfqn8+LOeVP7iN+p+v
P24v5v4C6wXvlKK5SfPPKa+7uN8K0P6zsNaRPdzP4Yk9f5b3baP7Zw+vPxXn
n8P+4ecVrgrT/7N0Ng3d7lA4fPDS1X2/4cx0h3vbTBn+ua5G2c2lCJ7Mbl26
zsX4zwvSd6+lXIBX4wc3rp8cu8fO9M93blAXfDZnUv3TznXqfLew6oaD9ztN
nsHCy40N8pPwo07mheRdzP9sIhWu1XQFPl9XUNpeCLcWdMx2z8Nzawp9Fnex
/HPNDJu+iRO8Or8sqmslStPSxrlUS2oVfm4ehJ+pVdW84Vvzz51rAs8uHIXX
OMsotvvCR9NC1W1y4a3K246XfYM5xtdxT3Kz/vP+44u7aTXgp/WJl5ld4Av7
7pSwPoHzJu9sX98Iu77WVZKfh1fzk+2fM/jT8tsOwSsUeiuWLrB2avpziRj4
hZLY2c1VMMvaSjfHUXhmucjYl579n3UvbGn4xceumub/w1B+dK2qcfTLJ1zS
8BGNNzVDyrC7ZO2CjQ58W8bm4yNLeM0Fzu+BTuyqpm+vaFvqrVX9/nHTje2+
7Kr33llte+XPrsrPOzgSfhderT/YVfJexN0sOHnDwZ7/KuGtHJunolvhPU2v
49/0w6/X34stnIBF1WyDXJfh+k7x2b8sHP+scmLW7Cg/h6oANefd7d7sqt+2
i8lelIQFXyx2msnBZvQJ0fzqMOdIeeWLY7CSzOEAVktY8uiGder28KXMjCBd
D/iA95WlnQHwav+BbWKTqa7Gw75DViFDafB7mznGzYUwU+L8SY0aWKNk1E61
FW5TuUvD8wm2dDL/+3YEnruVzmM+C7NL7+RvWoFLzSQqhJg5/9nlbEqpDjfs
2DlTeUoUjipLcTOQhgeLl7yl5OD5p/SeQ2qED31l8DkM27nM51GegKUEufls
T8Gr/RneWcS/acAVLqkN+DzvBY+vNbaZC4IHHu3e1RsBJynI1qXEwhE2kxFm
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
cVuowFdtZehYVWGJBdPuYsL/B7i7Ykg=
       "]],
      FontSize->14]}}, {}, {}, {}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{0.043497573741050954`, 3.026805314046102},
  BaseStyle->(FontSize -> 14),
  DisplayFunction->Identity,
  Epilog->{{
     Dashing[{Small, Small}], 
     LineBox[
      NCache[{{-2.3025850929940455`, 3.4595418658995203`}, {
         Log[6000], 3.4595418658995203`}}, {{-2.3025850929940455`, 
       3.4595418658995203`}, {8.699514748210191, 3.4595418658995203`}}]]}, 
    InsetBox[
     GraphicsBox[{{{}, {{{}, {}, {
           Hue[0.67, 0.6, 0.6], 
           Directive[
            PointSize[0.004583333333333334], 
            RGBColor[0.368417, 0.506779, 0.709798], 
            AbsoluteThickness[1.6], FontSize -> 14], 
           LineBox[CompressedData["
1:eJxN23c01+//P3Bkk5WMbKFCJRKRVVktSWRkZKSUUEpUZhllJKmIiKwS2SN7
hOwtMqIiKTNR4vv+nd85n/v1V+d2ni+v53U95uufRKydTthRUVBQyNNQUPy/
f69H3ji67M2pvri+yGdFnlldP3iXFPUdTnXF2+bOdteZ1HUme8tY7sH8A8bq
bOHwbeqG9/SPOdVdXL2cLCyY1AM8aq4vxcBsAS62wwmwjLlfSmkqHFu4zywi
A1Z2uPzEKhfe3RHiJl4MG+uEsY2Ww8eusN14VAtLhWm17G+EVxKpRcbb4Lb0
0iC/Hjg701+Q5yPx93U8v158gjMEOkUlx2GbgZKSlCm4lzagV2AOHjIODQj+
DYtQD47Mr8DFztK/Dag2/s97pr4OptPB1se2pa4yE88jas7pcsCKDmqyIdxw
yttervf8cOXm21spROHztr+u79wC+zc/5jWWhg1iHvJ57IJn9DvDIvfATpR/
/V8qw0mRV9iL1OG/LPZqlZqwa1GVcPUhWNJMsbZMD75lprYv9yQsPLYxMtEE
3vercijYAh7z4djqbEO8zyXe6+g5uD29dV7MEQ7mbnuw6AJHhT5zqLoGG36g
CQq8AVM9ifur4w0fkO5uXXcHPhgzwlEUBKc5N7efCyXiE+LOuyEC/kLzaLHg
MTz8PeXqqRgin5sYEmfj4cY/E3f9k2AhnaN7uV7C0e85iuMz4FfsP3kkcuDu
rRfPJBfA1Trzz0RKYL/b1R8fV8Crl3+LM9TCDV2371xtgC33qNAONsNToS3Z
ah1w6kB1ZGwP/KvgTtFiP3G/OdOth4fhcIHzU9FjxH2E81i/jsN0lZtjpKdg
T2mPp5dm4LueFtzpC3DzAWPeL0tw0J+2l7z/YPf7nN26lFz/85Yh/edXaeBy
oac8sQyw/YWvByrWwwfFWaSH2WExl/YPyxvh0eddhmyb4MfJz1NFBeFnV1P7
ZURh76tqC0oScNNY4j91SXh675/V/Ttg9vvHKDRkYYbVhwzKe2DXP2miu5Tg
2YITBptV4UhvlUT2/XA8K9WmFU3Y55tI+aguLJpNH117FE7wYc5+oQ87KFxi
8TaEixpN8k+ZwGlxX99ImcMFjdw0K1Zw58WPRfW2MO0Ma0/4OTjvtIfVqYvE
+WLbLHmd4YG63P7eK7C6dX7vAzd4T9oJ80M3YKbOBZdVT/j4iUW+TF9Yljvu
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
fSWE/w/7lZo6
            "]]}}}, {}, {}, {}, {}}}, {
      DisplayFunction -> Identity, GridLines -> {None, None}, DisplayFunction -> 
       Identity, DisplayFunction -> Identity, DisplayFunction -> Identity, 
       PlotRangePadding -> {{0, 0}, {0, 0}}, 
       AxesOrigin -> {4.618710436993603, 3.3331752902474086`}, PlotRange -> 
       NCache[{{
           Log[100], 
           Log[1500]}, {
           Log[28], 
           Log[34]}}, {{4.605170185988092, 7.313220387090301}, {
         3.332204510175204, 3.5263605246161616`}}], PlotRangeClipping -> True,
        ImagePadding -> All, DisplayFunction -> Identity, AspectRatio -> 
       NCache[GoldenRatio^(-1), 0.6180339887498948], Axes -> {True, True}, 
       AxesLabel -> {None, None}, 
       AxesOrigin -> {4.618710436993603, 3.3331752902474086`}, 
       BaseStyle -> (FontSize -> 14), DisplayFunction :> Identity, Epilog -> {
         Dashing[{Small, Small}], 
         LineBox[
          NCache[{{-2.3025850929940455`, 3.4595418658995203`}, {
             Log[6000], 3.4595418658995203`}}, {{-2.3025850929940455`, 
           3.4595418658995203`}, {8.699514748210191, 3.4595418658995203`}}]]},
        Frame -> {{True, True}, {True, True}}, FrameLabel -> {{
          FormBox[
          "\"\\!\\(\\*SuperscriptBox[\\(\[Chi]\\), \\(2\\)]\\)(N)\"", 
           TraditionalForm], None}, {
          FormBox["\"N\"", TraditionalForm], None}}, FrameStyle -> 
       GrayLevel[0], FrameTicks -> {{
          Charting`ScaledTicks[{Log, Exp}], 
          Charting`ScaledFrameTicks[{Log, Exp}]}, {
          Charting`ScaledTicks[{Log, Exp}], 
          Charting`ScaledFrameTicks[{Log, Exp}]}}, GridLines -> {None, None}, 
       GridLinesStyle -> Directive[
         GrayLevel[0.5, 0.4]], ImageSize -> 250, 
       Method -> {"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
             (Exp[#]& )[
              Part[#, 1]], 
             (Exp[#]& )[
              Part[#, 2]]}& ), "CopiedValueFunction" -> ({
             (Exp[#]& )[
              Part[#, 1]], 
             (Exp[#]& )[
              Part[#, 2]]}& )}}, PlotRange -> NCache[{{
           Log[100], 
           Log[1500]}, {
           Log[28], 
           Log[34]}}, {{4.605170185988092, 7.313220387090301}, {
         3.332204510175204, 3.5263605246161616`}}], PlotRangeClipping -> True,
        PlotRangePadding -> {{0, 0}, {0, 0}}, Ticks -> {
         Charting`ScaledTicks[{Log, Exp}], 
         Charting`ScaledTicks[{Log, Exp}]}}], 
     Scaled[{0.7, 0.65}]]},
  Frame->{{True, True}, {True, True}},
  FrameLabel->{{
     FormBox[
     "\"\\!\\(\\*SuperscriptBox[\\(\[Chi]\\), \\(2\\)]\\)(N)\"", 
      TraditionalForm], None}, {
     FormBox["\"N\"", TraditionalForm], None}},
  FrameStyle->GrayLevel[0],
  FrameTicks->FrontEndValueCache[{{
      Charting`ScaledTicks[{Log, Exp}], 
      Charting`ScaledFrameTicks[{Log, Exp}]}, {
      Charting`ScaledTicks[{Log, Exp}], 
      Charting`ScaledFrameTicks[{Log, Exp}]}}, {{{{3.912023005428146, 
        FormBox["50", TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {4.605170185988092, 
        FormBox["100", TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {6.214608098422191, 
        FormBox["500", TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {6.907755278982137, 
        FormBox["1000", TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {8.517193191416238, 
        FormBox["5000", TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {9.210340371976184, 
        FormBox[
         TemplateBox[{"10", "4"}, "Superscript", SyntaxForm -> 
          SuperscriptBox], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {2.302585092994046, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {2.995732273553991, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {3.4011973816621555`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {3.6888794541139363`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.0943445622221, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.248495242049359, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.382026634673881, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.499809670330265, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {5.298317366548036, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {5.703782474656201, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {5.991464547107982, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.396929655216146, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.551080335043404, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.684611727667927, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.802394763324311, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {7.600902459542082, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.006367567650246, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.294049640102028, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.699514748210191, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.85366542803745, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.987196820661973, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {9.104979856318357, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {9.903487552536127, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {10.308952660644293`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {10.596634733096073`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {10.819778284410283`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {11.002099841204238`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {11.156250521031495`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {11.289781913656018`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {11.407564949312402`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {11.512925464970229`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}}, {{3.912023005428146, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {4.605170185988092, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {6.214608098422191, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {6.907755278982137, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {8.517193191416238, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {9.210340371976184, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {2.302585092994046, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {2.995732273553991, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {3.4011973816621555`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {3.6888794541139363`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.0943445622221, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.248495242049359, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.382026634673881, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.499809670330265, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {5.298317366548036, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {5.703782474656201, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {5.991464547107982, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.396929655216146, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.551080335043404, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.684611727667927, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.802394763324311, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {7.600902459542082, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.006367567650246, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.294049640102028, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.699514748210191, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.85366542803745, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.987196820661973, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {9.104979856318357, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {9.903487552536127, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {10.308952660644293`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {10.596634733096073`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {10.819778284410283`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {11.002099841204238`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {11.156250521031495`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {11.289781913656018`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {11.407564949312402`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {11.512925464970229`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}}}, {{{0., 
        FormBox["1", TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {2.302585092994046, 
        FormBox["10", TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {4.605170185988092, 
        FormBox["100", TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {6.907755278982137, 
        FormBox["1000", TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {0.6931471805599453, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.0986122886681098`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.3862943611198906`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.6094379124341003`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.791759469228055, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.9459101490553132`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {2.0794415416798357`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {2.1972245773362196`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {2.995732273553991, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {3.4011973816621555`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {3.6888794541139363`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {3.912023005428146, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.0943445622221, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.248495242049359, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.382026634673881, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.499809670330265, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {5.298317366548036, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {5.703782474656201, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {5.991464547107982, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.214608098422191, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.396929655216146, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.551080335043404, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.684611727667927, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.802394763324311, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {7.600902459542082, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.006367567650246, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.294049640102028, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.517193191416238, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.699514748210191, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.85366542803745, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.987196820661973, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {9.104979856318357, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {9.210340371976184, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {9.903487552536127, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {10.308952660644293`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}}, {{0., 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {2.302585092994046, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {4.605170185988092, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {6.907755278982137, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {0.6931471805599453, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.0986122886681098`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.3862943611198906`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.6094379124341003`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.791759469228055, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.9459101490553132`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {2.0794415416798357`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {2.1972245773362196`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {2.995732273553991, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {3.4011973816621555`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {3.6888794541139363`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {3.912023005428146, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.0943445622221, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.248495242049359, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.382026634673881, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.499809670330265, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {5.298317366548036, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {5.703782474656201, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {5.991464547107982, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.214608098422191, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.396929655216146, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.551080335043404, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.684611727667927, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.802394763324311, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {7.600902459542082, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.006367567650246, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.294049640102028, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.517193191416238, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.699514748210191, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.85366542803745, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.987196820661973, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {9.104979856318357, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {9.210340371976184, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {9.903487552536127, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {10.308952660644293`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}}}}],
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  ImageSize->500,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Exp[#]& )[
         Part[#, 1]], 
        (Exp[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Exp[#]& )[
         Part[#, 1]], 
        (Exp[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->NCache[{{0, 
      Log[6000]}, {
      Log[20], 
      Log[10000]}}, {{0, 8.699514748210191}, {2.995732273553991, 
     9.210340371976184}}],
  PlotRangeClipping->True,
  PlotRangePadding->{{0, 0}, {0, 0}},
  Ticks->{
    Charting`ScaledTicks[{Log, Exp}], 
    Charting`ScaledTicks[{Log, Exp}]}]], "Output",
 CellChangeTimes->{
  3.8019247784967794`*^9, 3.8019252644090624`*^9, {3.801925406336362*^9, 
   3.801925438093034*^9}, 3.801926052626571*^9, {3.801926294321806*^9, 
   3.801926397568633*^9}},ExpressionUUID->"8dc0a7db-f249-4860-b60d-\
f8a1d10eb27c"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"Plot", " ", "of", " ", "the", " ", "best"}], "-", 
    RowBox[{
    "fit", " ", "real", " ", "model", " ", "vs", " ", "the", " ", "best"}], 
    "-", 
    RowBox[{"fit", " ", "GA"}]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"plr", "=", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"0", ",", "1.5"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", ".8"}], "}"}]}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{"Show", "[", 
    RowBox[{
     RowBox[{"ErrorListPlot", "[", 
      RowBox[{"data", ",", 
       RowBox[{"PlotRange", "\[Rule]", "plr"}], ",", 
       RowBox[{"PlotStyle", "\[Rule]", "Gray"}]}], "]"}], ",", 
     RowBox[{"Plot", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{
           RowBox[{"model", "[", 
            RowBox[{"x", ",", "a", ",", "b", ",", "c"}], "]"}], "/.", 
           RowBox[{"fmin", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], ",", 
          RowBox[{"GApop", "[", 
           RowBox[{"[", 
            RowBox[{
             RowBox[{"-", "1"}], ",", "2"}], "]"}], "]"}]}], "}"}], "//", 
        "Evaluate"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "1.5"}], "}"}], ",", 
       RowBox[{"PlotRange", "\[Rule]", "plr"}], ",", 
       RowBox[{"Frame", "\[Rule]", "True"}], ",", 
       RowBox[{"PlotLegends", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{"\"\<model\>\"", ",", "\"\<GA\>\""}], "}"}]}]}], "]"}], ",", 
     RowBox[{"Frame", "\[Rule]", "True"}], ",", 
     RowBox[{"Axes", "\[Rule]", "False"}], ",", 
     RowBox[{"FrameLabel", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"\"\<x\>\"", ",", "\"\<f(x)\>\""}], "}"}]}], ",", 
     RowBox[{"FrameStyle", "\[Rule]", "Black"}], ",", 
     RowBox[{"BaseStyle", "\[Rule]", 
      RowBox[{"FontSize", "\[Rule]", "15"}]}], ",", 
     RowBox[{"PlotRange", "\[Rule]", "plr"}]}], "]"}]}]}]], "Input",
 CellChangeTimes->{{3.7784826119295516`*^9, 3.778482645909897*^9}, {
  3.778482697199574*^9, 3.778482726909507*^9}, {3.7784828701397915`*^9, 
  3.778482873871664*^9}, {3.801924562146166*^9, 3.8019245706692867`*^9}, {
  3.801925449969102*^9, 3.8019255320326633`*^9}, {3.801925995191311*^9, 
  3.8019260131272354`*^9}},ExpressionUUID->"204ccaf3-cb10-41ec-9bdf-\
0416082e5301"],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{{}, {{{}, {
         Hue[0.67, 0.6, 0.6], 
         Directive[
          PointSize[0.012833333333333334`], 
          AbsoluteThickness[1.6], 
          GrayLevel[0.5]], {
          PointBox[CompressedData["
1:eJxTTMoPSmViYGCQB2IQPWsmGNh/LNY5e/zDNHsTYxDYbB/0mclM22a7PQMY
HLBnfnDi6GLbg/bpaSBwzN7vzfm+fMFj9mfPgIH9quKdyzYxnrOHmHfRvvIB
b0H7j7P258DSV+y/ZM7XlYq/as8INu+GvcgaxwR1q1tQ+27b2/8+KMf++g7U
/Hv2S31+ffpfdRdq/gP7LrOrX1hePITKP7K3ue+zxtDsIdS8J/bql9sqtyY+
gtr/1P7H1P2neJY8hJr/3F54P6/fFNHHUPNe2Au+rP3DyfgYat4re7V5s1Jn
JD6BmvfGPv9G5KPShCdQ897aN9Y+8X17+hnUvPf2UqwKlV4Kz+3B2tM+2D+w
vXHsnPpze7C08Ud70XmVrrzHnkPD75P9C0kxB7WkZ1D7P9nn1UibLf72DGr+
Z/t732o4zZpg5n2x9wr7q90tBzPvq33cX6F1b/fDzPtmf93xGNMlQ5h53+z7
H3I0SVs/hZr33T77XXz1xdonUPN+2P9fZlylI/HUHgCwyutO
           "]], {{
            
            LineBox[{{0.025, 0.056381292841883396`}, {
             0.025, -0.011575533606872437`}}], 
            LineBox[{
              Offset[{1.5, 0}, {0.025, 0.056381292841883396`}], 
              Offset[{-1.5, 0}, {0.025, 0.056381292841883396`}]}], 
            LineBox[{
              Offset[{1.5, 0}, {0.025, -0.011575533606872437`}], 
              Offset[{-1.5, 0}, {0.025, -0.011575533606872437`}]}]}, {
            
            LineBox[{{0.07500000000000001, 0.12027304028265791`}, {
             0.07500000000000001, 0.06125066555536916}}], 
            LineBox[{
              Offset[{1.5, 0}, {0.07500000000000001, 0.12027304028265791`}], 
              
              Offset[{-1.5, 0}, {0.07500000000000001, 
               0.12027304028265791`}]}], 
            LineBox[{
              Offset[{1.5, 0}, {0.07500000000000001, 0.06125066555536916}], 
              
              Offset[{-1.5, 0}, {0.07500000000000001, 
               0.06125066555536916}]}]}, {
            
            LineBox[{{0.125, 0.15520139885492715`}, {0.125, 
             0.11418579210604277`}}], 
            LineBox[{
              Offset[{1.5, 0}, {0.125, 0.15520139885492715`}], 
              Offset[{-1.5, 0}, {0.125, 0.15520139885492715`}]}], 
            LineBox[{
              Offset[{1.5, 0}, {0.125, 0.11418579210604277`}], 
              Offset[{-1.5, 0}, {0.125, 0.11418579210604277`}]}]}, {
            
            LineBox[{{0.17500000000000002`, 0.1880755989226064}, {
             0.17500000000000002`, 0.15673859620014918`}}], 
            LineBox[{
              Offset[{1.5, 0}, {0.17500000000000002`, 0.1880755989226064}], 
              Offset[{-1.5, 0}, {0.17500000000000002`, 0.1880755989226064}]}], 
            LineBox[{
              Offset[{1.5, 0}, {0.17500000000000002`, 0.15673859620014918`}], 
              
              Offset[{-1.5, 0}, {0.17500000000000002`, 
               0.15673859620014918`}]}]}, {
            
            LineBox[{{0.225, 0.26583772759649643`}, {0.225, 
             0.2030159013410508}}], 
            LineBox[{
              Offset[{1.5, 0}, {0.225, 0.26583772759649643`}], 
              Offset[{-1.5, 0}, {0.225, 0.26583772759649643`}]}], 
            LineBox[{
              Offset[{1.5, 0}, {0.225, 0.2030159013410508}], 
              Offset[{-1.5, 0}, {0.225, 0.2030159013410508}]}]}, {
            
            LineBox[{{0.275, 0.270907178304894}, {0.275, 
             0.19738683131189672`}}], 
            LineBox[{
              Offset[{1.5, 0}, {0.275, 0.270907178304894}], 
              Offset[{-1.5, 0}, {0.275, 0.270907178304894}]}], 
            LineBox[{
              Offset[{1.5, 0}, {0.275, 0.19738683131189672`}], 
              Offset[{-1.5, 0}, {0.275, 0.19738683131189672`}]}]}, {
            
            LineBox[{{0.32500000000000007`, 0.36951619503544897`}, {
             0.32500000000000007`, 0.29834296739708466`}}], 
            LineBox[{
              Offset[{1.5, 0}, {0.32500000000000007`, 0.36951619503544897`}], 
              
              Offset[{-1.5, 0}, {0.32500000000000007`, 
               0.36951619503544897`}]}], 
            LineBox[{
              Offset[{1.5, 0}, {0.32500000000000007`, 0.29834296739708466`}], 
              Offset[{-1.5, 0}, {0.32500000000000007`, 
               0.29834296739708466`}]}]}, {
            
            LineBox[{{0.37500000000000006`, 0.43697362002052736`}, {
             0.37500000000000006`, 0.3826252340454049}}], 
            LineBox[{
              Offset[{1.5, 0}, {0.37500000000000006`, 0.43697362002052736`}], 
              
              Offset[{-1.5, 0}, {0.37500000000000006`, 
               0.43697362002052736`}]}], 
            LineBox[{
              Offset[{1.5, 0}, {0.37500000000000006`, 0.3826252340454049}], 
              
              Offset[{-1.5, 0}, {0.37500000000000006`, 
               0.3826252340454049}]}]}, {
            
            LineBox[{{0.42500000000000004`, 0.4699612571850725}, {
             0.42500000000000004`, 0.4337286614032901}}], 
            LineBox[{
              Offset[{1.5, 0}, {0.42500000000000004`, 0.4699612571850725}], 
              Offset[{-1.5, 0}, {0.42500000000000004`, 0.4699612571850725}]}], 
            LineBox[{
              Offset[{1.5, 0}, {0.42500000000000004`, 0.4337286614032901}], 
              
              Offset[{-1.5, 0}, {0.42500000000000004`, 
               0.4337286614032901}]}]}, {
            
            LineBox[{{0.47500000000000003`, 0.49274770746595353`}, {
             0.47500000000000003`, 0.42851691671568215`}}], 
            LineBox[{
              Offset[{1.5, 0}, {0.47500000000000003`, 0.49274770746595353`}], 
              
              Offset[{-1.5, 0}, {0.47500000000000003`, 
               0.49274770746595353`}]}], 
            LineBox[{
              Offset[{1.5, 0}, {0.47500000000000003`, 0.42851691671568215`}], 
              
              Offset[{-1.5, 0}, {0.47500000000000003`, 
               0.42851691671568215`}]}]}, {
            
            LineBox[{{0.525, 0.5895099907100962}, {0.525, 
             0.5296353610606603}}], 
            LineBox[{
              Offset[{1.5, 0}, {0.525, 0.5895099907100962}], 
              Offset[{-1.5, 0}, {0.525, 0.5895099907100962}]}], 
            LineBox[{
              Offset[{1.5, 0}, {0.525, 0.5296353610606603}], 
              Offset[{-1.5, 0}, {0.525, 0.5296353610606603}]}]}, {
            
            LineBox[{{0.5750000000000001, 0.5668973433915876}, {
             0.5750000000000001, 0.5088336222684826}}], 
            LineBox[{
              Offset[{1.5, 0}, {0.5750000000000001, 0.5668973433915876}], 
              Offset[{-1.5, 0}, {0.5750000000000001, 0.5668973433915876}]}], 
            LineBox[{
              Offset[{1.5, 0}, {0.5750000000000001, 0.5088336222684826}], 
              Offset[{-1.5, 0}, {0.5750000000000001, 0.5088336222684826}]}]}, {
            
            LineBox[{{0.6250000000000001, 0.6054405378697834}, {
             0.6250000000000001, 0.5434141705285715}}], 
            LineBox[{
              Offset[{1.5, 0}, {0.6250000000000001, 0.6054405378697834}], 
              Offset[{-1.5, 0}, {0.6250000000000001, 0.6054405378697834}]}], 
            LineBox[{
              Offset[{1.5, 0}, {0.6250000000000001, 0.5434141705285715}], 
              Offset[{-1.5, 0}, {0.6250000000000001, 0.5434141705285715}]}]}, {
            
            LineBox[{{0.675, 0.5824671808499964}, {0.675, 
             0.5200840810383813}}], 
            LineBox[{
              Offset[{1.5, 0}, {0.675, 0.5824671808499964}], 
              Offset[{-1.5, 0}, {0.675, 0.5824671808499964}]}], 
            LineBox[{
              Offset[{1.5, 0}, {0.675, 0.5200840810383813}], 
              Offset[{-1.5, 0}, {0.675, 0.5200840810383813}]}]}, {
            
            LineBox[{{0.7250000000000001, 0.6202025505793087}, {
             0.7250000000000001, 0.5725658371171989}}], 
            LineBox[{
              Offset[{1.5, 0}, {0.7250000000000001, 0.6202025505793087}], 
              Offset[{-1.5, 0}, {0.7250000000000001, 0.6202025505793087}]}], 
            LineBox[{
              Offset[{1.5, 0}, {0.7250000000000001, 0.5725658371171989}], 
              Offset[{-1.5, 0}, {0.7250000000000001, 0.5725658371171989}]}]}, {
            LineBox[{{0.775, 0.614067410550565}, {0.775, 
             0.5736862537486755}}], 
            LineBox[{
              Offset[{1.5, 0}, {0.775, 0.614067410550565}], 
              Offset[{-1.5, 0}, {0.775, 0.614067410550565}]}], 
            LineBox[{
              Offset[{1.5, 0}, {0.775, 0.5736862537486755}], 
              Offset[{-1.5, 0}, {0.775, 0.5736862537486755}]}]}, {
            
            LineBox[{{0.8250000000000001, 0.6727763790132901}, {
             0.8250000000000001, 0.6010505986121084}}], 
            LineBox[{
              Offset[{1.5, 0}, {0.8250000000000001, 0.6727763790132901}], 
              Offset[{-1.5, 0}, {0.8250000000000001, 0.6727763790132901}]}], 
            LineBox[{
              Offset[{1.5, 0}, {0.8250000000000001, 0.6010505986121084}], 
              Offset[{-1.5, 0}, {0.8250000000000001, 0.6010505986121084}]}]}, {
            
            LineBox[{{0.8750000000000001, 0.6788388373291875}, {
             0.8750000000000001, 0.5947110857888628}}], 
            LineBox[{
              Offset[{1.5, 0}, {0.8750000000000001, 0.6788388373291875}], 
              Offset[{-1.5, 0}, {0.8750000000000001, 0.6788388373291875}]}], 
            LineBox[{
              Offset[{1.5, 0}, {0.8750000000000001, 0.5947110857888628}], 
              Offset[{-1.5, 0}, {0.8750000000000001, 0.5947110857888628}]}]}, {
            
            LineBox[{{0.925, 0.7412640659887906}, {0.925, 
             0.6835227918715214}}], 
            LineBox[{
              Offset[{1.5, 0}, {0.925, 0.7412640659887906}], 
              Offset[{-1.5, 0}, {0.925, 0.7412640659887906}]}], 
            LineBox[{
              Offset[{1.5, 0}, {0.925, 0.6835227918715214}], 
              Offset[{-1.5, 0}, {0.925, 0.6835227918715214}]}]}, {
            
            LineBox[{{0.9750000000000001, 0.7502044213548891}, {
             0.9750000000000001, 0.6951791017706024}}], 
            LineBox[{
              Offset[{1.5, 0}, {0.9750000000000001, 0.7502044213548891}], 
              Offset[{-1.5, 0}, {0.9750000000000001, 0.7502044213548891}]}], 
            LineBox[{
              Offset[{1.5, 0}, {0.9750000000000001, 0.6951791017706024}], 
              Offset[{-1.5, 0}, {0.9750000000000001, 0.6951791017706024}]}]}, {
            
            LineBox[{{1.025, 0.7462152122348166}, {1.025, 
             0.7010034698035731}}], 
            LineBox[{
              Offset[{1.5, 0}, {1.025, 0.7462152122348166}], 
              Offset[{-1.5, 0}, {1.025, 0.7462152122348166}]}], 
            LineBox[{
              Offset[{1.5, 0}, {1.025, 0.7010034698035731}], 
              Offset[{-1.5, 0}, {1.025, 0.7010034698035731}]}]}, {
            
            LineBox[{{1.075, 0.7628902722955111}, {1.075, 
             0.7229622280354004}}], 
            LineBox[{
              Offset[{1.5, 0}, {1.075, 0.7628902722955111}], 
              Offset[{-1.5, 0}, {1.075, 0.7628902722955111}]}], 
            LineBox[{
              Offset[{1.5, 0}, {1.075, 0.7229622280354004}], 
              Offset[{-1.5, 0}, {1.075, 0.7229622280354004}]}]}, {
            
            LineBox[{{1.125, 0.7265504741649271}, {1.125, 
             0.6724117854492901}}], 
            LineBox[{
              Offset[{1.5, 0}, {1.125, 0.7265504741649271}], 
              Offset[{-1.5, 0}, {1.125, 0.7265504741649271}]}], 
            LineBox[{
              Offset[{1.5, 0}, {1.125, 0.6724117854492901}], 
              Offset[{-1.5, 0}, {1.125, 0.6724117854492901}]}]}, {
            
            LineBox[{{1.175, 0.7526198292621457}, {1.175, 
             0.6825944149670794}}], 
            LineBox[{
              Offset[{1.5, 0}, {1.175, 0.7526198292621457}], 
              Offset[{-1.5, 0}, {1.175, 0.7526198292621457}]}], 
            LineBox[{
              Offset[{1.5, 0}, {1.175, 0.6825944149670794}], 
              Offset[{-1.5, 0}, {1.175, 0.6825944149670794}]}]}, {
            
            LineBox[{{1.225, 0.7589463434659394}, {1.225, 
             0.7103434715432295}}], 
            LineBox[{
              Offset[{1.5, 0}, {1.225, 0.7589463434659394}], 
              Offset[{-1.5, 0}, {1.225, 0.7589463434659394}]}], 
            LineBox[{
              Offset[{1.5, 0}, {1.225, 0.7103434715432295}], 
              Offset[{-1.5, 0}, {1.225, 0.7103434715432295}]}]}, {
            
            LineBox[{{1.275, 0.7499556373830241}, {1.275, 
             0.6950013059709788}}], 
            LineBox[{
              Offset[{1.5, 0}, {1.275, 0.7499556373830241}], 
              Offset[{-1.5, 0}, {1.275, 0.7499556373830241}]}], 
            LineBox[{
              Offset[{1.5, 0}, {1.275, 0.6950013059709788}], 
              Offset[{-1.5, 0}, {1.275, 0.6950013059709788}]}]}, {
            
            LineBox[{{1.325, 0.7706740163721432}, {1.325, 
             0.7136835122926938}}], 
            LineBox[{
              Offset[{1.5, 0}, {1.325, 0.7706740163721432}], 
              Offset[{-1.5, 0}, {1.325, 0.7706740163721432}]}], 
            LineBox[{
              Offset[{1.5, 0}, {1.325, 0.7136835122926938}], 
              Offset[{-1.5, 0}, {1.325, 0.7136835122926938}]}]}, {
            
            LineBox[{{1.375, 0.7282506539491211}, {1.375, 
             0.6589125186179265}}], 
            LineBox[{
              Offset[{1.5, 0}, {1.375, 0.7282506539491211}], 
              Offset[{-1.5, 0}, {1.375, 0.7282506539491211}]}], 
            LineBox[{
              Offset[{1.5, 0}, {1.375, 0.6589125186179265}], 
              Offset[{-1.5, 0}, {1.375, 0.6589125186179265}]}]}, {
            
            LineBox[{{1.425, 0.6875759954993453}, {1.425, 
             0.6393545349991733}}], 
            LineBox[{
              Offset[{1.5, 0}, {1.425, 0.6875759954993453}], 
              Offset[{-1.5, 0}, {1.425, 0.6875759954993453}]}], 
            LineBox[{
              Offset[{1.5, 0}, {1.425, 0.6393545349991733}], 
              Offset[{-1.5, 0}, {1.425, 0.6393545349991733}]}]}, {
            LineBox[{{1.475, 0.6601790430504278}, {1.475, 
             0.6205383126133922}}], 
            LineBox[{
              Offset[{1.5, 0}, {1.475, 0.6601790430504278}], 
              Offset[{-1.5, 0}, {1.475, 0.6601790430504278}]}], 
            LineBox[{
              Offset[{1.5, 0}, {1.475, 0.6205383126133922}], 
              Offset[{-1.5, 0}, {1.475, 0.6205383126133922}]}]}, {
            
            LineBox[{{1.525, 0.6749726883193142}, {1.525, 
             0.6434291035876644}}], 
            LineBox[{
              Offset[{1.5, 0}, {1.525, 0.6749726883193142}], 
              Offset[{-1.5, 0}, {1.525, 0.6749726883193142}]}], 
            LineBox[{
              Offset[{1.5, 0}, {1.525, 0.6434291035876644}], 
              
              Offset[{-1.5, 0}, {1.525, 
               0.6434291035876644}]}]}}}}, {}}}, {}, {}, {}, {}}, {{{{}, {}, 
        TagBox[{
          Directive[
           Opacity[1.], 
           RGBColor[0.368417, 0.506779, 0.709798], 
           AbsoluteThickness[1.6]], 
          LineBox[CompressedData["
1:eJwV13k8VN8bB3CUMK0U0SIkFX5pFRUfSUoUWoREiOQ7IUtJKQlJthJ9LYki
+tJmrZSQolKINtkz15LM3DvDEPE7/TWv92vuee55nnvuOc9VdvLc7SImIiIy
U1RE5O/vsKnHDQvPQ/ppPL5lTmY4wg4vXVarpo+g6aWjbQmX8H6gyz1KbRfa
XwyvVwiPAC9/SyRbzR5lbkLDRPdIBMvxF9ipeSAt4K1F99xYvKvawdmjdhb+
Oy03XGiJg2faiTfmatHwd2GLrXNPRnlkZMlOtVT0L55pAKNMiE/xluh1f4Ak
sW25G77kweScY2ihVTHElU2efwh6iuJTLi2Z9aXoCPbzPDlRhm+2/2h5n3yJ
/CZdp2OsV5DeFuVablAFI8Eiq2/V1ZjV6JK3/sA7cFnL7uTX1GCxEvtuqFMt
4qQttyta10Gn5di7zVfrUWbeP66r/BHlv4PMGpMbsOiN/qNGiUa4vaiuLg3+
hEFrJ/+Qyk9IdM6aJ3voC4ytcTjY4wv+Z90xNO7yDdXynDWRK7+hlW/+wcDk
O4zvQUa1uglMm8JKuX0tuPIuq+WyTzNicwKO7N/fBr2lozEZEq1Qmym50z+5
HeeOyH7/ebwNRV5BOdE3O/C8qKxnrl87GpfESVhe7URRYaFh9IIOqF5oWHYw
8QcUM6N8Gqs7oGvRtvZmchdKd5pqurh1osUrVD8qkgPXPq5YoKATebo2019d
oTAj2+rAzeAfkLOq+pYd2o3+6Ph14uM/gE6RKxW+PWjYMd9V3aMLiXJu09X8
e6G42tOkuaULwalHL65z78PeZx9l8jZxcOPDv6+jvX6iMOFAp04iB4EecbyF
3v342KRWWdDLwU/HZfI2Tr/weYqJZbwGhct/+ia3ug6gf6rsO7mjFLYfv1b9
n/sArBeYTOklnszRizzpMQDV+xr5T90pnK2JnS19YgCCpvlOdmwKXsnaKkah
A5jBDpNN9KRgpRuM/24PQD4g4pvQj4KKn0LAifYBROQ2zjQNpvC0fxt3hi0X
KSvr5XYkUtCOTomoPshFWqFpzCBxnha9JNiRC9s0ufNpSRTueifZDbpxoeNY
XidIpvDvcP+b7ye58Pjponw9lcKJyVczsuO5YH/6GlNxm8KaBc02hvVcGP+c
6Ci4R+H+85WDo41czCjYnGB+n4K6Q2hs4VcuKlLGKnuJVW6tqFrWzoWS4+Sr
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
4P90Q6bk
           "]]}, Annotation[#, "Charting`Private`Tag$84653#1"]& ], 
        TagBox[{
          Directive[
           Opacity[1.], 
           RGBColor[0.880722, 0.611041, 0.142051], 
           AbsoluteThickness[1.6]], 
          LineBox[CompressedData["
1:eJwV13k4VdsbB3AkoVKESpEkoYSKovjKUN3IUDIlY4NkqFAiLi6SqWgkxI0r
UUmk/FSaEFKiQhlz9kHi7H1wDOG3+ms/n2c/e+2137XX+75rpZvv3sMCfHx8
C/j5+P5cx0x90i19XfSVLmj99+cafWiN8gclfbRkrXMJVtXH+8EezwQlcywX
3P/wu5o5OI+M4r2UnDA+a0Vr3yYnREhzlzsq+SD8Oyep3dAHtVW7WfuUQvG2
zTC+4GAofDNPv7NQSoTyLaucdRcT8TI+/n97lDKgvmH/66M9GZgtdGpOn+cD
nJt8FuPuXIi//naNKrEphdxwqb188hOUnj3cltPwHPZiB1SWWFWgxeG4+qkz
r3FI7F772N03EN+ZcOSlQRXu4uTC/PvVWNh0uGjzgVq8VBhgPo3UYZW8V16U
2wd0qI00/4j5iC1t3rXbkxtw/OXjZylHP+HlRJhZ081GKH3VKXNxaYLHi+rq
5xGfsUN3ga22yhekuOfKSLl8hcov99MtrV+hZtc1On24BXeCK9Z/yGxBO9ei
3uCvb5DxNYbHlm9gOpZqSO9vQ33/ERzu/I5L+UFHbW07cOndBpaJTzuUFgjv
CbzZCfXXa4PLP3bg8Ymw/MRbXYhtknL2v9WJptWX51gld6On2X9eyfYuKP7T
qHww5QcSNzfKi/d2QceyY9Otmz14IT2i8CG8G20novQT4lngCxf1zhP+gSId
+/lvkyj0HrjrEZX0A9I2VS13otgQkv0hHiPcA3TzJb3y78XAlFfJjH8PUqQ9
5isF9mGw8K+t4V09iMg4dl7Lsx/pz23k1PVZSK+/UZl44ie+R+e+sUhhIcTn
Mkf21ADqG2O8XftY+OmqvMTe7Rfc9zXVFa+lEDfVL9h+ZBA+FXt0Ej0p7Dp5
pfqu5yCuH1y34OhxCoIsvfgzPoOQCBh0hReF0LpLi8RPD6JmfHXooDeFEze1
FYyjBuFWlJm04yQFG50I3L09CF25J0rtZygoBCwNOt05CAHThUvzIymUDewc
EnMYgtpM283yNAraiWmx1QeHwCSoyZ5Mp1CkTq+OcB3CPK85K1dnUMg7leo4
4jEE2WtuhXG3KNwYG3j37cwQjq5mfu39l8JpweTsO1eHkHBpL/Uul8LG5d/t
DRuG8CZwptW+iMKX1Vu6dRU5+OVx2lSgkkJPg5eRgRIHDu0D67KJmZCsbBNl
Dgb/Ng02qaKw4IvoUct1HDhq1zlFV5N4RLf9PLyJg9aJNdv5a8n8qYiRS8Yc
CDjcC/j2gcKt3PfC7EMcJEtLPVzZQuH+PgHPgSMcVP3dtukhcfmMdi3twUFl
Omu1QSuFZtvMhN9eHHD7X1g4fqMgIewnIRHAQYFP36uENgqRHkuW60Vx4L47
QOVzFwUPFXf1yzkcJC5NFR3toyAnerk3IJcD66STbZ79FBr7X2XZ5XGwB581
Ooj1CxQk5e5xEKiw277yJ4VF6t1jd4o5CDJRfpj4i8LzTa6vnr/mQIPJDZ1D
U5A0cN7f38XB62KjzBQehRr5i2Lvf3CQ5sWJmSb+m/9F1QMWBxKBJxi3MQr9
r+R0A/o4WOzF3ak6TuGFSbscH03mN2o4VTRBwdP0YK8UH42mgfHkgikKL20O
BG+Xo+HhbBlkMIuNymSpajN5GpkpmVlpxHX1HyTtFGhoxn/cOEbcvMP4vo8S
jRpW6417gmxwtNW6bq6ncexM72FxITbkFs/sGNWnsdvIWeyZMBuK+55e5t9O
w+vJVM8CETZUL/p1zjOioTovT8mNWGtO79lVO2kUX9P8KSjKhhnvY4GlBQ1d
JfuzRnPZCPr6r0S+Mw0ft7MF2fPZCFt00PmxK40GerPWIHG0xeKCl+402v00
VDaLsZFUFWfSfJTGpuTWvVXEd0r9A2efoMEIuN3rXMDGl+s72p3DaEhUPgrn
ibOx0a4/TzKLxrlCsf+VSLHRWX3LfOpfGi8+W4j3Ecfr7Oeysmn4PVWilkmz
QclUbCu9Q8OyLWNuGHFq29UP9oU0rILGTAwXsyHgvn0k4wUN826LoPtL2HjQ
OJpy/iUN6/+my1qIHY0L9E+8pjEv+2iQ4FI2Hq9eHLO9ikaox8kAO+JjvQMy
PfUkXk23HSeIP3rfMFBpp+HfG06vXsZGSPselngnDQFXltxfxKoWs2Inumgo
nl1Te5w4UsOnsZZFIzLDMvMB8Wau0RGfX+T79p/W01zORo/7uKjtEA0+dzE3
S+JLTfcfgKYRq3t9ti9xf8nS8YUjNJQORL67S5wROBT36DeNctZck+WybJj2
ZWukTZP1qTrmupl4zN7hcyQfg13Xa35bEe/d+lbORpBB/KKMwiji2dOpD8fm
Msjrr53HJi7ysbTpms/A+EHYymlip47Zk+8WMOgM210iKcfGk4oTxjcXMQiz
U3IwIPb6Z8dXvWUMYjT1U5KIx2Ib2MtlGVSaBe3KJo5KdhyblGOgItQe/Jg4
I+vU0jIFBqrNir4txKp5UyopigwGN8xT7ycuLYzRDVRioFS4ym+C+OOLjAPa
qgy0r/48v3QFWZ8qFS+pdQz89TPtlIn76ovPDasxYOIT7mkTC7TXpBdpMvC5
KdNjRbzx92jHeh0GZrN1IyOIK2ZFcOZvZbDEZeh0ArHZ3Pn8v7aR97kO/rpO
fEhmlUK+AYOipgaPfGLOyvsbYg1JPKLLvIqJQ1R0jI4ZEzuODJcTX9ticWjN
Lgb/MceS64gVDFr9hXYz2Evn5jYSP9h5OIplykA4yWB7K/E2C87VN3tIvDla
zp3E1TbB/922YCCkHstPEVs7CZVGWDH46Anln8Rdh5OqXPcxyHpl2zhE7OO9
vNlgP4MJ688Cw8QT/rm9K2wZGBqUPeYRR5/bMD5tx+DVv8JDE8SLIp+JtDsw
KEx9lT9FnBm3S+aZIwP5Hf0DM8TrLjeqpjkxkHodXsQvT9Y31WlrsAuJn3rc
bwFik3/7TB3cGPDuCNfOIv6U5++oc4iBy57fsoLETg9nvJYcYaCv6zHy537/
k9gQ3lEGIgnmVn98pkIq8csxBqvcH2r+GU+wOjOj5DiDhpbka3zElz6sfXDF
mzwvNvL3NJnP8q+PX/j5MgiSbf01SXynffvHvScZBCoad44Rb6LqOjX9GEgb
aNmOEL/8ZUsvDGAgkfBgL01sPtLNzznNQFy55NMAcetvb4kPgQzS1XZ9ZRMf
ERxXuB/EQKHM06WbmJkbuTHhHIPRPjmf78ShixYYe4UysGw5wveFeO6yVGvT
MAZ7so0XfyBWVC0MEIlksEyv5tML4kLNrdG9UQzSDE+fKSXW06m8VnWejH+5
IvM+sc2u76VRcQzZJ1vCbxJ3WxytPpRA1tvBc0sSsa8t02x0kcHuPkP/aOKY
I8IT/JfJ+zM4Z32JD7+TzRC5yiA/yVbLjdhw3UZD8esMoh/mOlsTT9IHY+Vv
MkjeJMa/mbjZ2m+9cjrZ76MqgWuIi0tjPqnfYpCQpeO0+M//E/JIBrfJ/34C
Z0bI/jLtrH6+I4dBFUf37g9iZaN2N/NcBklSWmYNxN3CIvkH8xkkCmq03SXe
f8Vp67lHDOpC4jbaEm/g+XX8U8LgnFJV+598IOZw4Z+4UgYyXdLjKsTVK4pr
U//HQMxgKmiC5JNt+SKOT18zcD6vUXyFWOFV8bnRRgahNeen75F8NqNYIz/9
mYHHPpO0ROLv5zvezG5m4Je/Pc+H+Noe0flS3xlcP8UvrkYs0uKcvrGHQTGP
vfg2yaecIdHnJ4YZWCnnzPaXYeP9Xnm3wFGSj9ZfvGFKfLdESyhsjMGcG92p
CsTuwS7mF38zEN3w8Vc9yedfhB633xPk4mbTwvfyxM9kXWf6JbkwrTnrl0fq
h0HJyckP0lx4bFppEUz8xiyCV7yEi3POkwVmxHXBt4dCl3Phmmw59IvUn+8t
rA4JRS5Cb5QlqhL/vupZobuRiyOrfHTjJUm9VAsuX6HFxRYnI10bYsG3cU8E
N3MhWeRdvoJ43nBBYb0uF+baNTsfLiL7Y+9QppshF0tutwfVS7CxVcw/PNaK
C2sNa2t6IRvPcyJDfPdx0fw8OOgRsaHe1bPW+7k4kyazKoB4t9fjk3L2XLx/
Xzk5SuqtQ82Ya5ELF9RzydphUo+DokMMW3252Lbk0I/meWw8nY6epZrIxVyn
RyJGpF9IpFde3nyJi/L5ZXxDc9hw6ylXMEnmgl2WcyiVWLSG2e5yjQv3Rm2/
IdJvOF51CruWwcVuh7j85NlsTK/VnhJ4wMUPIbu4ZwJsGNuzRr994CKmbqdM
zm8KS8zCovsauJgxVHikTzygv0ya18iFbdTmp18nKVxVtNKSaOZCU0Z2vjAx
NVTut6uTC0PNFU2upJ+6EH2FU8zh4mnDvq7xEQr1j4z6E8SHUa4uM7d8kEKE
XjEradEw2srEo0yItasUu65KDSNU6sfJetLfZbTObk5fOox0Xdns9gEK3vzV
b++tHIaJkdbxMdIfzrMwy3qvOQzXnFXR4mwKu/ut7ebvHYamnSdfazuFt/JH
KuOThzFdEZH0po6CfEfDUp8rw7Dm/0tNizgoXc/b4townrS9Nc8h/bCGjJSk
ROowslx/KkTWUEhb9Mb1etYwdprLLtxG+md/IYWprMJh/JxpmbnymoLiQNvG
0vphzBJPMfz5lPS7pfuzukRH4Lzo1WuVHDJeg2nMz3kjkH63cb13NoVv/dt9
R8RGsHqZv0jhbQob5NbriSwagVWsp8Qm0v93RAq1aCwbgbWRv48WOR/o7i1d
GLZ2BJzuNVayKRQ4A0vC5MxGINjj+Sk8noKjwnenAwkjSF173jyDnFcmH6sv
WztnFIv19Ir8dCicm9VXdzV0FF/nC8l1TbAgrajjupqPhxR6Yl/6fRbO+NgM
i57lIWTrnZF0ZxaWax+qVgom99N9pNc5sVAxdTLNMISHoPNCWU8dWRBNSDAO
Cufhelsx95M9Cxn5b670XeDhLdfy4vQ+Fip7N2hVp/KwU+Rhls4uFiTdF5yO
KufB5o2NMTRYeKoquzvrOQ8L0hdnl61nwYlRlXtWwcNB1pi3lhoLd8J3VA6/
4WF/spKBiioLWzNDpA+956F56FS7iCILbm0/Hxu289AYyxV8sJiFOTnjsU6d
PIhOds5ZKc1Cgdcc56BuHrJHpQKSJVkYnVSYU0Tx8NvcJdFPnIVYGQfblUNk
foVl5evnsqDefXStHs2DSZ6yRJoIC015ATN2XB4Kc+gGYWEW5HSSci/xeLjg
knGpU5CF13y3ggvGecBE9EXTWSx4VBdYVE/yML6naayEn4V5l8pW9UzxUFsd
U7eCj4WHttW8mRke4r/+J3phugf/B8NPiNI=
           "]]}, 
         Annotation[#, "Charting`Private`Tag$84653#2"]& ]}}, {}, {}}}, {
    Frame -> True, Axes -> False, FrameLabel -> {
       FormBox["\"x\"", TraditionalForm], 
       FormBox["\"f(x)\"", TraditionalForm]}, FrameStyle -> GrayLevel[0], 
     BaseStyle -> (FontSize -> 15), PlotRange -> {{0, 1.5}, {0, 0.8}}, 
     DisplayFunction -> Identity, PlotRangePadding -> {{0, 0}, {0, 0}}, 
     AxesOrigin -> {0, 0}, PlotRange -> {{0, 1.5}, {0, 0.8}}, 
     PlotRangeClipping -> True, ImagePadding -> All, DisplayFunction -> 
     Identity, AspectRatio -> NCache[GoldenRatio^(-1), 0.6180339887498948], 
     Axes -> {True, True}, AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, 
     DisplayFunction :> Identity, Frame -> {{False, False}, {False, False}}, 
     FrameLabel -> {{None, None}, {None, None}}, 
     FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
     GridLines -> {None, None}, GridLinesStyle -> Directive[
       GrayLevel[0.5, 0.4]], 
     Method -> {"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
           (Identity[#]& )[
            Part[#, 1]], 
           (Identity[#]& )[
            Part[#, 2]]}& ), "CopiedValueFunction" -> ({
           (Identity[#]& )[
            Part[#, 1]], 
           (Identity[#]& )[
            Part[#, 2]]}& )}}, PlotRange -> {{0, 1.5}, {0, 0.8}}, 
     PlotRangeClipping -> True, PlotRangePadding -> {{0, 0}, {0, 0}}, 
     Ticks -> {Automatic, Automatic}}],FormBox[
    FormBox[
     TemplateBox[{"\"model\"", "\"GA\""}, "LineLegend", 
      DisplayFunction -> (FormBox[
        StyleBox[
         StyleBox[
          PaneBox[
           TagBox[
            GridBox[{{
               TagBox[
                GridBox[{{
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #}, {
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    AbsoluteThickness[1.6]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #2}}, 
                 GridBoxAlignment -> {
                  "Columns" -> {Center, Left}, "Rows" -> {{Baseline}}}, 
                 AutoDelete -> False, 
                 GridBoxDividers -> {
                  "Columns" -> {{False}}, "Rows" -> {{False}}}, 
                 GridBoxItemSize -> {"Columns" -> {{All}}, "Rows" -> {{All}}},
                  GridBoxSpacings -> {
                  "Columns" -> {{0.5}}, "Rows" -> {{0.8}}}], "Grid"]}}, 
             GridBoxAlignment -> {"Columns" -> {{Left}}, "Rows" -> {{Top}}}, 
             AutoDelete -> False, 
             GridBoxItemSize -> {
              "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
             GridBoxSpacings -> {"Columns" -> {{1}}, "Rows" -> {{0}}}], 
            "Grid"], Alignment -> Left, AppearanceElements -> None, 
           ImageMargins -> {{5, 5}, {5, 5}}, ImageSizeAction -> 
           "ResizeToFit"], LineIndent -> 0, StripOnInput -> False], {
         FontFamily -> "Arial"}, Background -> Automatic, StripOnInput -> 
         False], TraditionalForm]& ), 
      InterpretationFunction :> (RowBox[{"LineLegend", "[", 
         RowBox[{
           RowBox[{"{", 
             RowBox[{
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"Opacity", "[", "1.`", "]"}], ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    RectangleBox[{0, -1}, {2, 1}]}}, DefaultBaseStyle -> 
                    "ColorSwatchGraphics", AspectRatio -> 1, Frame -> True, 
                    FrameStyle -> 
                    RGBColor[
                    0.24561133333333335`, 0.3378526666666667, 
                    0.4731986666666667], FrameTicks -> None, PlotRangePadding -> 
                    None, ImageSize -> 
                    Dynamic[{
                    Automatic, 1.35 CurrentValue["FontCapHeight"]/
                    AbsoluteCurrentValue[Magnification]}]], 
                    "RGBColor[0.368417, 0.506779, 0.709798]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.368417, 0.506779, 0.709798]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.368417, 0.506779, 0.709798], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"Opacity", "[", "1.`", "]"}], ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    RectangleBox[{0, -1}, {2, 1}]}}, DefaultBaseStyle -> 
                    "ColorSwatchGraphics", AspectRatio -> 1, Frame -> True, 
                    FrameStyle -> 
                    RGBColor[
                    0.587148, 0.40736066666666665`, 0.09470066666666668], 
                    FrameTicks -> None, PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 1.35 CurrentValue["FontCapHeight"]/
                    AbsoluteCurrentValue[Magnification]}]], 
                    "RGBColor[0.880722, 0.611041, 0.142051]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.880722, 0.611041, 0.142051]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.880722, 0.611041, 0.142051], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}]}],
              "}"}], ",", 
           RowBox[{"{", 
             RowBox[{#, ",", #2}], "}"}], ",", 
           RowBox[{"LegendMarkers", "\[Rule]", "None"}], ",", 
           RowBox[{"LabelStyle", "\[Rule]", 
             RowBox[{"{", "}"}]}], ",", 
           RowBox[{"LegendLayout", "\[Rule]", "\"Column\""}]}], "]"}]& ), 
      Editable -> True], TraditionalForm], TraditionalForm]},
  "Legended",
  DisplayFunction->(GridBox[{{
      TagBox[
       ItemBox[
        PaneBox[
         TagBox[#, "SkipImageSizeLevel"], Alignment -> {Center, Baseline}, 
         BaselinePosition -> Baseline], DefaultBaseStyle -> "Labeled"], 
       "SkipImageSizeLevel"], 
      ItemBox[#2, DefaultBaseStyle -> "LabeledLabel"]}}, 
    GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}, 
    AutoDelete -> False, GridBoxItemSize -> Automatic, 
    BaselinePosition -> {1, 1}]& ),
  Editable->True,
  InterpretationFunction->(RowBox[{"Legended", "[", 
     RowBox[{#, ",", 
       RowBox[{"Placed", "[", 
         RowBox[{#2, ",", "After"}], "]"}]}], "]"}]& )]], "Output",
 CellChangeTimes->{
  3.7784826476814165`*^9, {3.778482698354394*^9, 3.7784827276745586`*^9}, {
   3.778482871474963*^9, 3.778482874609726*^9}, {3.8019254988774023`*^9, 
   3.801925532727743*^9}, 3.801925703001601*^9, 3.8019260585013103`*^9, 
   3.8019264217671432`*^9},ExpressionUUID->"f125539a-69ed-4a1a-8ab2-\
8579b48b2e86"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"The", " ", "GA", " ", "best"}], "-", "fit"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"GApop", "[", 
   RowBox[{"[", 
    RowBox[{
     RowBox[{"-", "1"}], ",", "2"}], "]"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.80192601888922*^9, 
  3.801926025835842*^9}},ExpressionUUID->"0a301b64-1a98-4f0f-adac-\
6d476fc0d55b"],

Cell[BoxData[
 RowBox[{"x", "+", 
  RowBox[{
   SuperscriptBox["x", "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"-", "0.5128968007741621`"}], "+", 
     RowBox[{"1.5528875590678615`", " ", 
      SuperscriptBox["0.08918560377688678`", 
       RowBox[{"0.802670433991981`", " ", "x"}]], " ", 
      SuperscriptBox["x", 
       RowBox[{"0.802670433991981`", " ", "x"}]]}]}], ")"}]}]}]], "Output",
 CellChangeTimes->{3.801925544210435*^9, 3.8019260612898855`*^9, 
  3.8019264237125163`*^9},ExpressionUUID->"29615c3d-fc43-4716-b0af-\
9149c944ff80"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"fGA", "[", "x_", "]"}], ":=", 
  RowBox[{"x", "+", 
   RowBox[{
    SuperscriptBox["x", "2"], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", "0.5128968007741621`"}], "+", 
      RowBox[{"1.5528875590678615`", " ", 
       SuperscriptBox["0.08918560377688678`", 
        RowBox[{"0.802670433991981`", " ", "x"}]], " ", 
       SuperscriptBox["x", 
        RowBox[{"0.802670433991981`", " ", "x"}]]}]}], ")"}]}]}]}]], "Input",
 CellChangeTimes->{{3.7773677707448387`*^9, 3.777367795164913*^9}, 
   3.7784072188726087`*^9, 3.7784086631100054`*^9, 3.7784906809297028`*^9, {
   3.80192460385821*^9, 3.8019246087242513`*^9}, 3.8019255476751986`*^9, 
   3.8019260654241853`*^9, 
   3.801926427440859*^9},ExpressionUUID->"20c48c9f-b3fb-4340-b2e2-\
193dd2214bac"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Compare", " ", "the", " ", 
    RowBox[{"chi", "^", "2"}]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"chi2GA", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"model", "[", 
       RowBox[{"x", ",", "a", ",", "b", ",", "c"}], "]"}], "/.", 
      RowBox[{"fmin", "[", 
       RowBox[{"[", "2", "]"}], "]"}]}], ",", "data"}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"chi2GA", "[", 
    RowBox[{
     RowBox[{"fGA", "[", "x", "]"}], ",", "data"}], "]"}]}]}]], "Input",
 CellChangeTimes->{{3.7635659544948115`*^9, 3.763566006122179*^9}, {
  3.7643132125910797`*^9, 3.7643132916148853`*^9}, {3.7643303892542953`*^9, 
  3.764330423655078*^9}, {3.777291251063096*^9, 3.7772912524557858`*^9}, {
  3.7773678029329243`*^9, 3.7773678056728477`*^9}, {3.801924613074791*^9, 
  3.801924630762788*^9}, {3.8019255558224792`*^9, 3.8019255582203903`*^9}, {
  3.8019260367462997`*^9, 
  3.801926042059268*^9}},ExpressionUUID->"ece463dc-be15-49b7-867c-\
a479fc4aea00"],

Cell[BoxData["31.802403411224873`"], "Output",
 CellChangeTimes->{{3.763565974220388*^9, 3.763566007246584*^9}, 
   3.76356967273789*^9, {3.764313243995631*^9, 3.7643132930309525`*^9}, {
   3.764330385599566*^9, 3.7643304242043667`*^9}, 3.777290373739727*^9, 
   3.7772907298433228`*^9, {3.7772912469752836`*^9, 3.7772912531903453`*^9}, 
   3.7772913952033653`*^9, 3.77736790129809*^9, 3.7773689539721117`*^9, 
   3.7783948214939117`*^9, 3.7784055582144804`*^9, 3.7784072224305434`*^9, 
   3.778408666403395*^9, 3.7784906871610484`*^9, 3.778580881569974*^9, 
   3.778826486297177*^9, 3.778827151917736*^9, 3.7789105485835752`*^9, 
   3.7827344599323444`*^9, 3.782796263921315*^9, 3.7827969936600337`*^9, 
   3.783252336158966*^9, {3.8019255532313757`*^9, 3.801925558839254*^9}, 
   3.8019260678322144`*^9, 
   3.8019264313216887`*^9},ExpressionUUID->"bfbf9ace-ec1e-4394-bfd3-\
bb969fd2bc97"],

Cell[BoxData["29.176011654503796`"], "Output",
 CellChangeTimes->{{3.763565974220388*^9, 3.763566007246584*^9}, 
   3.76356967273789*^9, {3.764313243995631*^9, 3.7643132930309525`*^9}, {
   3.764330385599566*^9, 3.7643304242043667`*^9}, 3.777290373739727*^9, 
   3.7772907298433228`*^9, {3.7772912469752836`*^9, 3.7772912531903453`*^9}, 
   3.7772913952033653`*^9, 3.77736790129809*^9, 3.7773689539721117`*^9, 
   3.7783948214939117`*^9, 3.7784055582144804`*^9, 3.7784072224305434`*^9, 
   3.778408666403395*^9, 3.7784906871610484`*^9, 3.778580881569974*^9, 
   3.778826486297177*^9, 3.778827151917736*^9, 3.7789105485835752`*^9, 
   3.7827344599323444`*^9, 3.782796263921315*^9, 3.7827969936600337`*^9, 
   3.783252336158966*^9, {3.8019255532313757`*^9, 3.801925558839254*^9}, 
   3.8019260678322144`*^9, 
   3.8019264313216887`*^9},ExpressionUUID->"9f201508-6ee1-434e-bfdf-\
1531370051e8"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Error", " ", "analysis", " ", "doing", " ", "the", " ", "path", " ", 
    "integral"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"df", "[", 
     RowBox[{"x_", ",", "a1_", ",", "a2_", ",", "a3_"}], "]"}], ":=", 
    RowBox[{"x", 
     RowBox[{"(", 
      RowBox[{"a1", "+", 
       RowBox[{"a2", " ", "x"}], "+", 
       RowBox[{"a3", " ", 
        SuperscriptBox["x", "2"]}]}], ")"}]}]}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"chi2CI", "[", 
     RowBox[{
      RowBox[{"a1_", "?", "NumericQ"}], ",", 
      RowBox[{"a2_", "?", "NumericQ"}], ",", 
      RowBox[{"a3_", "?", "NumericQ"}]}], "]"}], ":=", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", "CI", "}"}], ",", 
      RowBox[{
       RowBox[{"CI", "=", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{
           FractionBox["1", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"Erf", "[", 
              RowBox[{
               FractionBox["1", 
                RowBox[{
                 SqrtBox["2"], " ", 
                 RowBox[{"data", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", "3"}], "]"}], "]"}]}]], 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"df", "[", 
                  RowBox[{
                   RowBox[{"data", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", "1"}], "]"}], "]"}], ",", "a1", ",", 
                   "a2", ",", "a3"}], "]"}], "+", 
                 RowBox[{"fGA", "[", 
                  RowBox[{"data", "[", 
                   RowBox[{"[", 
                    RowBox[{"i", ",", "1"}], "]"}], "]"}], "]"}], "-", 
                 RowBox[{"data", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", "2"}], "]"}], "]"}]}], ")"}]}], "]"}], 
             "+", 
             RowBox[{"Erf", "[", 
              RowBox[{
               FractionBox["1", 
                RowBox[{
                 SqrtBox["2"], " ", 
                 RowBox[{"data", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", "3"}], "]"}], "]"}]}]], 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"df", "[", 
                  RowBox[{
                   RowBox[{"data", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", "1"}], "]"}], "]"}], ",", "a1", ",", 
                   "a2", ",", "a3"}], "]"}], "-", 
                 RowBox[{"fGA", "[", 
                  RowBox[{"data", "[", 
                   RowBox[{"[", 
                    RowBox[{"i", ",", "1"}], "]"}], "]"}], "]"}], "+", 
                 RowBox[{"data", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", "2"}], "]"}], "]"}]}], ")"}]}], "]"}]}], 
            ")"}]}], ",", 
          RowBox[{"{", 
           RowBox[{"i", ",", "1", ",", 
            RowBox[{"Length", "[", "data", "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"Sum", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"CI", "[", 
             RowBox[{"[", "i", "]"}], "]"}], "-", 
            RowBox[{"Erf", "[", 
             FractionBox["1", 
              SqrtBox["2"]], "]"}]}], ")"}], "^", "2"}], ",", 
         RowBox[{"{", 
          RowBox[{"i", ",", "1", ",", 
           RowBox[{"Length", "[", "data", "]"}]}], "}"}]}], "]"}]}]}], 
     "]"}]}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"chi2GApluserr", "[", 
     RowBox[{
      RowBox[{"a1_", "?", "NumericQ"}], ",", 
      RowBox[{"a2_", "?", "NumericQ"}], ",", 
      RowBox[{"a3_", "?", "NumericQ"}]}], "]"}], ":=", 
    RowBox[{"chi2GA", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"fGA", "[", "x", "]"}], "+", 
       RowBox[{"df", "[", 
        RowBox[{"x", ",", "a1", ",", "a2", ",", "a3"}], "]"}]}], ",", 
      "data"}], "]"}]}], "\n", 
   RowBox[{
    RowBox[{"chi2tot", "[", 
     RowBox[{"a1_", ",", "a2_", ",", "a3_"}], "]"}], ":=", 
    RowBox[{
     RowBox[{"chi2CI", "[", 
      RowBox[{"a1", ",", "a2", ",", "a3"}], "]"}], "+", 
     RowBox[{"chi2GApluserr", "[", 
      RowBox[{"a1", ",", "a2", ",", "a3"}], "]"}]}]}]}]}]], "Input",
 CellChangeTimes->{{3.7773680023527517`*^9, 3.7773680307023735`*^9}, {
  3.7773680992030005`*^9, 3.777368429272444*^9}, {3.777368827816651*^9, 
  3.7773688406643686`*^9}, {3.778405547224313*^9, 3.7784055770444813`*^9}, {
  3.7784076687418385`*^9, 3.7784076692539053`*^9}, {3.778910570813989*^9, 
  3.778910576094115*^9}, {3.7789106590759897`*^9, 3.7789106606334596`*^9}, {
  3.782796322263586*^9, 3.7827963394955006`*^9}, {3.783256459252325*^9, 
  3.7832564627026315`*^9}, {3.8019246414757137`*^9, 3.8019246642891607`*^9}, {
  3.801925568450203*^9, 3.8019255720057387`*^9}, {3.8019256050206485`*^9, 
  3.8019256055935955`*^9}, {3.8019256420801497`*^9, 3.801925642345048*^9}, {
  3.80192607266016*^9, 3.8019260833245487`*^9}, {3.801926119987056*^9, 
  3.8019261234106817`*^9}, {3.801926449302365*^9, 
  3.801926449617708*^9}},ExpressionUUID->"20732f62-fd64-405d-b947-\
c5d41c0d1778"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"fminerr2", "=", 
  RowBox[{"FindMinimum", "[", 
   RowBox[{
    RowBox[{"chi2tot", "[", 
     RowBox[{"a1", ",", "a2", ",", "0"}], "]"}], ",", 
    RowBox[{"{", 
     RowBox[{"a1", ",", "0.11", ",", "0.111"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"a2", ",", "0.11", ",", "0.111"}], "}"}], ",", 
    RowBox[{"MaxIterations", "\[Rule]", "500"}]}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"fminerr3", "=", 
  RowBox[{"FindMinimum", "[", 
   RowBox[{
    RowBox[{"chi2tot", "[", 
     RowBox[{"a1", ",", "a2", ",", "a3"}], "]"}], ",", 
    RowBox[{"{", 
     RowBox[{"a1", ",", "0.11", ",", "0.111"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"a2", ",", "0.11", ",", "0.111"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"a3", ",", "0.11", ",", "0.111"}], "}"}], ",", 
    RowBox[{"MaxIterations", "\[Rule]", "500"}]}], "]"}]}]}], "Input",
 CellChangeTimes->{{3.777368914772314*^9, 3.7773689149821215`*^9}, 
   3.7783950740640907`*^9, {3.778405604974828*^9, 3.778405605154762*^9}, {
   3.7784057589248867`*^9, 3.7784057652148447`*^9}, {3.7784058306571293`*^9, 
   3.7784058325161476`*^9}, {3.778407244273259*^9, 3.778407251256173*^9}, {
   3.778826511107337*^9, 3.778826537491393*^9}, {3.7827348060923433`*^9, 
   3.782734813412299*^9}, {3.7827348543821754`*^9, 3.7827348605720205`*^9}, {
   3.7827970025803986`*^9, 3.782797004560522*^9}, {3.801925685783187*^9, 
   3.8019256870935583`*^9}},ExpressionUUID->"857dbb5f-f510-4d10-b50e-\
566aa29e9831"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"41.22738601860228`", ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"a1", "\[Rule]", "0.014270215440420059`"}], ",", 
     RowBox[{"a2", "\[Rule]", 
      RowBox[{"-", "0.006606073254503546`"}]}]}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.782734818136753*^9, 3.782734861811742*^9, 3.7827963803633423`*^9, 
   3.782796432800906*^9, 3.782797006380213*^9, 3.783252345154118*^9, 
   3.8019256478295374`*^9, 3.801925687651781*^9, 3.801926089033427*^9, 
   3.801926127290807*^9, {3.8019264376099205`*^9, 
   3.8019264520907087`*^9}},ExpressionUUID->"8cc0d716-288a-4d9a-88e0-\
e61faac97f88"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"41.12102321270069`", ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"a1", "\[Rule]", "0.027078625428010438`"}], ",", 
     RowBox[{"a2", "\[Rule]", 
      RowBox[{"-", "0.03330453977099443`"}]}], ",", 
     RowBox[{"a3", "\[Rule]", "0.012507596926644075`"}]}], "}"}]}], 
  "}"}]], "Output",
 CellChangeTimes->{
  3.782734818136753*^9, 3.782734861811742*^9, 3.7827963803633423`*^9, 
   3.782796432800906*^9, 3.782797006380213*^9, 3.783252345154118*^9, 
   3.8019256478295374`*^9, 3.801925687651781*^9, 3.801926089033427*^9, 
   3.801926127290807*^9, {3.8019264376099205`*^9, 
   3.8019264524510603`*^9}},ExpressionUUID->"f36b7395-21e7-4db2-afc1-\
22cc531f38ba"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Final", " ", "plot", " ", "with", " ", "errors"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"\[Epsilon]0", "=", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", "1"}], ",", "0", ",", "1"}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"col", "=", 
     RowBox[{"GrayLevel", "[", 
      RowBox[{"0.3", ",", "0.2"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"plot", "=", 
    RowBox[{"Show", "[", 
     RowBox[{
      RowBox[{"ErrorListPlot", "[", 
       RowBox[{"data", ",", 
        RowBox[{"PlotRange", "\[Rule]", "plr"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", "Gray"}]}], "]"}], ",", 
      RowBox[{"Plot", "[", 
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"fGA", "[", "x", "]"}], "+", 
           RowBox[{"\[Epsilon]0", " ", 
            RowBox[{"df", "[", 
             RowBox[{"x", ",", "a1", ",", "a2", ",", "a3"}], "]"}]}]}], "/.", 
          RowBox[{"fminerr3", "[", 
           RowBox[{"[", "2", "]"}], "]"}]}], "//", "Evaluate"}], ",", 
        RowBox[{"{", 
         RowBox[{"x", ",", "0", ",", "1.5"}], "}"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", "plr"}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"col", ",", "Black", ",", "col"}], "}"}]}], ",", 
        RowBox[{"Filling", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"1", "->", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", "3", "}"}], ",", "col"}], "}"}]}], "}"}]}]}], "]"}],
       ",", 
      RowBox[{"Frame", "\[Rule]", "True"}], ",", 
      RowBox[{"Axes", "\[Rule]", "False"}], ",", 
      RowBox[{"FrameLabel", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"\"\<x\>\"", ",", "\"\<f(x)\>\""}], "}"}]}], ",", 
      RowBox[{"FrameStyle", "\[Rule]", "Black"}], ",", 
      RowBox[{"BaseStyle", "\[Rule]", 
       RowBox[{"FontSize", "\[Rule]", "15"}]}], ",", 
      RowBox[{"PlotRange", "\[Rule]", "plr"}]}], "]"}]}]}]}]], "Input",
 CellChangeTimes->{
  3.7635379163237906`*^9, {3.764313306161067*^9, 3.7643133270469923`*^9}, {
   3.764313379153677*^9, 3.7643134168914275`*^9}, {3.764313465023483*^9, 
   3.764313475001771*^9}, {3.7773679490523643`*^9, 3.777367952212802*^9}, {
   3.7773685477325954`*^9, 3.7773686006624107`*^9}, {3.77736864346455*^9, 
   3.777368741352269*^9}, {3.7773690018017*^9, 3.777369055261819*^9}, {
   3.777369132532134*^9, 3.777369132612011*^9}, {3.777369182991953*^9, 
   3.7773691932226067`*^9}, {3.7773692367818427`*^9, 
   3.7773692484559155`*^9}, {3.777369300721883*^9, 3.777369622741661*^9}, 
   3.778233201606267*^9, {3.7784057769645863`*^9, 3.7784057770248795`*^9}, {
   3.7784058419049406`*^9, 3.7784058621251755`*^9}, {3.7788265215073843`*^9, 
   3.7788266062075615`*^9}, {3.7788266537579336`*^9, 3.778826662450323*^9}, {
   3.778827186807453*^9, 3.7788272143500233`*^9}, {3.778828054518855*^9, 
   3.7788280546788063`*^9}, {3.7789105916941195`*^9, 3.778910624753845*^9}, {
   3.778910700444107*^9, 3.778910730373754*^9}, {3.782734895282036*^9, 
   3.7827349031718845`*^9}, {3.7827349369422274`*^9, 3.782734969712227*^9}, {
   3.782735063791979*^9, 3.7827350822417793`*^9}, {3.7827965000511427`*^9, 
   3.7827965003111467`*^9}, 3.7827970149603157`*^9, {3.801925662702399*^9, 
   3.801925792845314*^9}, {3.8019258666691723`*^9, 3.801925923344615*^9}, {
   3.801926093056964*^9, 3.801926105327707*^9}, {3.8019261354890347`*^9, 
   3.8019261420417805`*^9}, {3.8019264675284986`*^9, 
   3.801926480408779*^9}},ExpressionUUID->"ecfd77a8-7f68-4093-b5ba-\
e870b806ca26"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, 
     {GrayLevel[0.5], PointSize[0.012833333333333334`], AbsoluteThickness[
      1.6], PointBox[CompressedData["
1:eJxTTMoPSmViYGCQB2IQPWsmGNh/LNY5e/zDNHsTYxDYbB/0mclM22a7PQMY
HLBnfnDi6GLbg/bpaSBwzN7vzfm+fMFj9mfPgIH9quKdyzYxnrOHmHfRvvIB
b0H7j7P258DSV+y/ZM7XlYq/as8INu+GvcgaxwR1q1tQ+27b2/8+KMf++g7U
/Hv2S31+ffpfdRdq/gP7LrOrX1hePITKP7K3ue+zxtDsIdS8J/bql9sqtyY+
gtr/1P7H1P2neJY8hJr/3F54P6/fFNHHUPNe2Au+rP3DyfgYat4re7V5s1Jn
JD6BmvfGPv9G5KPShCdQ897aN9Y+8X17+hnUvPf2UqwKlV4Kz+3B2tM+2D+w
vXHsnPpze7C08Ud70XmVrrzHnkPD75P9C0kxB7WkZ1D7P9nn1UibLf72DGr+
Z/t732o4zZpg5n2x9wr7q90tBzPvq33cX6F1b/fDzPtmf93xGNMlQ5h53+z7
H3I0SVs/hZr33T77XXz1xdonUPN+2P9fZlylI/HUHgCwyutO
       "]], {{
        LineBox[{{0.025, 0.056381292841883396`}, {
         0.025, -0.011575533606872437`}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.025, 0.056381292841883396`}], 
          Offset[{-1.5, 0}, {0.025, 0.056381292841883396`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.025, -0.011575533606872437`}], 
          Offset[{-1.5, 0}, {0.025, -0.011575533606872437`}]}]}, {
        LineBox[{{0.07500000000000001, 0.12027304028265791`}, {
         0.07500000000000001, 0.06125066555536916}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.07500000000000001, 0.12027304028265791`}], 
          Offset[{-1.5, 0}, {0.07500000000000001, 0.12027304028265791`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.07500000000000001, 0.06125066555536916}], 
          Offset[{-1.5, 0}, {0.07500000000000001, 0.06125066555536916}]}]}, {
        LineBox[{{0.125, 0.15520139885492715`}, {0.125, 
         0.11418579210604277`}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.125, 0.15520139885492715`}], 
          Offset[{-1.5, 0}, {0.125, 0.15520139885492715`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.125, 0.11418579210604277`}], 
          Offset[{-1.5, 0}, {0.125, 0.11418579210604277`}]}]}, {
        LineBox[{{0.17500000000000002`, 0.1880755989226064}, {
         0.17500000000000002`, 0.15673859620014918`}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.17500000000000002`, 0.1880755989226064}], 
          Offset[{-1.5, 0}, {0.17500000000000002`, 0.1880755989226064}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.17500000000000002`, 0.15673859620014918`}], 
          Offset[{-1.5, 0}, {0.17500000000000002`, 
           0.15673859620014918`}]}]}, {
        LineBox[{{0.225, 0.26583772759649643`}, {0.225, 0.2030159013410508}}],
         LineBox[{
         Offset[{1.5, 0}, {0.225, 0.26583772759649643`}], 
          Offset[{-1.5, 0}, {0.225, 0.26583772759649643`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.225, 0.2030159013410508}], 
          Offset[{-1.5, 0}, {0.225, 0.2030159013410508}]}]}, {
        LineBox[{{0.275, 0.270907178304894}, {0.275, 0.19738683131189672`}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.275, 0.270907178304894}], 
          Offset[{-1.5, 0}, {0.275, 0.270907178304894}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.275, 0.19738683131189672`}], 
          Offset[{-1.5, 0}, {0.275, 0.19738683131189672`}]}]}, {
        LineBox[{{0.32500000000000007`, 0.36951619503544897`}, {
         0.32500000000000007`, 0.29834296739708466`}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.32500000000000007`, 0.36951619503544897`}], 
          Offset[{-1.5, 0}, {0.32500000000000007`, 0.36951619503544897`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.32500000000000007`, 0.29834296739708466`}], 
          Offset[{-1.5, 0}, {0.32500000000000007`, 
           0.29834296739708466`}]}]}, {
        LineBox[{{0.37500000000000006`, 0.43697362002052736`}, {
         0.37500000000000006`, 0.3826252340454049}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.37500000000000006`, 0.43697362002052736`}], 
          Offset[{-1.5, 0}, {0.37500000000000006`, 0.43697362002052736`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.37500000000000006`, 0.3826252340454049}], 
          Offset[{-1.5, 0}, {0.37500000000000006`, 0.3826252340454049}]}]}, {
        LineBox[{{0.42500000000000004`, 0.4699612571850725}, {
         0.42500000000000004`, 0.4337286614032901}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.42500000000000004`, 0.4699612571850725}], 
          Offset[{-1.5, 0}, {0.42500000000000004`, 0.4699612571850725}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.42500000000000004`, 0.4337286614032901}], 
          Offset[{-1.5, 0}, {0.42500000000000004`, 0.4337286614032901}]}]}, {
        LineBox[{{0.47500000000000003`, 0.49274770746595353`}, {
         0.47500000000000003`, 0.42851691671568215`}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.47500000000000003`, 0.49274770746595353`}], 
          Offset[{-1.5, 0}, {0.47500000000000003`, 0.49274770746595353`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.47500000000000003`, 0.42851691671568215`}], 
          Offset[{-1.5, 0}, {0.47500000000000003`, 
           0.42851691671568215`}]}]}, {
        LineBox[{{0.525, 0.5895099907100962}, {0.525, 0.5296353610606603}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.525, 0.5895099907100962}], 
          Offset[{-1.5, 0}, {0.525, 0.5895099907100962}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.525, 0.5296353610606603}], 
          Offset[{-1.5, 0}, {0.525, 0.5296353610606603}]}]}, {
        LineBox[{{0.5750000000000001, 0.5668973433915876}, {
         0.5750000000000001, 0.5088336222684826}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.5750000000000001, 0.5668973433915876}], 
          Offset[{-1.5, 0}, {0.5750000000000001, 0.5668973433915876}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.5750000000000001, 0.5088336222684826}], 
          Offset[{-1.5, 0}, {0.5750000000000001, 0.5088336222684826}]}]}, {
        LineBox[{{0.6250000000000001, 0.6054405378697834}, {
         0.6250000000000001, 0.5434141705285715}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.6250000000000001, 0.6054405378697834}], 
          Offset[{-1.5, 0}, {0.6250000000000001, 0.6054405378697834}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.6250000000000001, 0.5434141705285715}], 
          Offset[{-1.5, 0}, {0.6250000000000001, 0.5434141705285715}]}]}, {
        LineBox[{{0.675, 0.5824671808499964}, {0.675, 0.5200840810383813}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.675, 0.5824671808499964}], 
          Offset[{-1.5, 0}, {0.675, 0.5824671808499964}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.675, 0.5200840810383813}], 
          Offset[{-1.5, 0}, {0.675, 0.5200840810383813}]}]}, {
        LineBox[{{0.7250000000000001, 0.6202025505793087}, {
         0.7250000000000001, 0.5725658371171989}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.7250000000000001, 0.6202025505793087}], 
          Offset[{-1.5, 0}, {0.7250000000000001, 0.6202025505793087}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.7250000000000001, 0.5725658371171989}], 
          Offset[{-1.5, 0}, {0.7250000000000001, 0.5725658371171989}]}]}, {
        LineBox[{{0.775, 0.614067410550565}, {0.775, 0.5736862537486755}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.775, 0.614067410550565}], 
          Offset[{-1.5, 0}, {0.775, 0.614067410550565}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.775, 0.5736862537486755}], 
          Offset[{-1.5, 0}, {0.775, 0.5736862537486755}]}]}, {
        LineBox[{{0.8250000000000001, 0.6727763790132901}, {
         0.8250000000000001, 0.6010505986121084}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.8250000000000001, 0.6727763790132901}], 
          Offset[{-1.5, 0}, {0.8250000000000001, 0.6727763790132901}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.8250000000000001, 0.6010505986121084}], 
          Offset[{-1.5, 0}, {0.8250000000000001, 0.6010505986121084}]}]}, {
        LineBox[{{0.8750000000000001, 0.6788388373291875}, {
         0.8750000000000001, 0.5947110857888628}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.8750000000000001, 0.6788388373291875}], 
          Offset[{-1.5, 0}, {0.8750000000000001, 0.6788388373291875}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.8750000000000001, 0.5947110857888628}], 
          Offset[{-1.5, 0}, {0.8750000000000001, 0.5947110857888628}]}]}, {
        LineBox[{{0.925, 0.7412640659887906}, {0.925, 0.6835227918715214}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.925, 0.7412640659887906}], 
          Offset[{-1.5, 0}, {0.925, 0.7412640659887906}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.925, 0.6835227918715214}], 
          Offset[{-1.5, 0}, {0.925, 0.6835227918715214}]}]}, {
        LineBox[{{0.9750000000000001, 0.7502044213548891}, {
         0.9750000000000001, 0.6951791017706024}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.9750000000000001, 0.7502044213548891}], 
          Offset[{-1.5, 0}, {0.9750000000000001, 0.7502044213548891}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.9750000000000001, 0.6951791017706024}], 
          Offset[{-1.5, 0}, {0.9750000000000001, 0.6951791017706024}]}]}, {
        LineBox[{{1.025, 0.7462152122348166}, {1.025, 0.7010034698035731}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.025, 0.7462152122348166}], 
          Offset[{-1.5, 0}, {1.025, 0.7462152122348166}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.025, 0.7010034698035731}], 
          Offset[{-1.5, 0}, {1.025, 0.7010034698035731}]}]}, {
        LineBox[{{1.075, 0.7628902722955111}, {1.075, 0.7229622280354004}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.075, 0.7628902722955111}], 
          Offset[{-1.5, 0}, {1.075, 0.7628902722955111}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.075, 0.7229622280354004}], 
          Offset[{-1.5, 0}, {1.075, 0.7229622280354004}]}]}, {
        LineBox[{{1.125, 0.7265504741649271}, {1.125, 0.6724117854492901}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.125, 0.7265504741649271}], 
          Offset[{-1.5, 0}, {1.125, 0.7265504741649271}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.125, 0.6724117854492901}], 
          Offset[{-1.5, 0}, {1.125, 0.6724117854492901}]}]}, {
        LineBox[{{1.175, 0.7526198292621457}, {1.175, 0.6825944149670794}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.175, 0.7526198292621457}], 
          Offset[{-1.5, 0}, {1.175, 0.7526198292621457}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.175, 0.6825944149670794}], 
          Offset[{-1.5, 0}, {1.175, 0.6825944149670794}]}]}, {
        LineBox[{{1.225, 0.7589463434659394}, {1.225, 0.7103434715432295}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.225, 0.7589463434659394}], 
          Offset[{-1.5, 0}, {1.225, 0.7589463434659394}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.225, 0.7103434715432295}], 
          Offset[{-1.5, 0}, {1.225, 0.7103434715432295}]}]}, {
        LineBox[{{1.275, 0.7499556373830241}, {1.275, 0.6950013059709788}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.275, 0.7499556373830241}], 
          Offset[{-1.5, 0}, {1.275, 0.7499556373830241}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.275, 0.6950013059709788}], 
          Offset[{-1.5, 0}, {1.275, 0.6950013059709788}]}]}, {
        LineBox[{{1.325, 0.7706740163721432}, {1.325, 0.7136835122926938}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.325, 0.7706740163721432}], 
          Offset[{-1.5, 0}, {1.325, 0.7706740163721432}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.325, 0.7136835122926938}], 
          Offset[{-1.5, 0}, {1.325, 0.7136835122926938}]}]}, {
        LineBox[{{1.375, 0.7282506539491211}, {1.375, 0.6589125186179265}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.375, 0.7282506539491211}], 
          Offset[{-1.5, 0}, {1.375, 0.7282506539491211}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.375, 0.6589125186179265}], 
          Offset[{-1.5, 0}, {1.375, 0.6589125186179265}]}]}, {
        LineBox[{{1.425, 0.6875759954993453}, {1.425, 0.6393545349991733}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.425, 0.6875759954993453}], 
          Offset[{-1.5, 0}, {1.425, 0.6875759954993453}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.425, 0.6393545349991733}], 
          Offset[{-1.5, 0}, {1.425, 0.6393545349991733}]}]}, {
        LineBox[{{1.475, 0.6601790430504278}, {1.475, 0.6205383126133922}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.475, 0.6601790430504278}], 
          Offset[{-1.5, 0}, {1.475, 0.6601790430504278}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.475, 0.6205383126133922}], 
          Offset[{-1.5, 0}, {1.475, 0.6205383126133922}]}]}, {
        LineBox[{{1.525, 0.6749726883193142}, {1.525, 0.6434291035876644}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.525, 0.6749726883193142}], 
          Offset[{-1.5, 0}, {1.525, 0.6749726883193142}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.525, 0.6434291035876644}], 
          Offset[{-1.5, 0}, {1.525, 
           0.6434291035876644}]}]}}}, {}}, {}, {}, {}, {}}, {
    GraphicsComplexBox[CompressedData["
1:eJxN2nk4VN//AHBka1PWCklCkkKFaHkLlcgyUiLZQ7KkVCKFkIQsRZutaKOS
FuUjVELJrkL2zEwkZu5gkOV35nm+d87vr57znHudc895v895z+tppYuf1RE+
Hh6e1XN4eDj/jpv6pln6OW1PebKbr2LScfv72Nj/zJTT4UzmvBu/pNNBQPCE
UL/XM7AzWXt6/ugz2HPBOfLVgUIQ2mLC+sn7BgrPHunIaSiBpIss1bKBUmi1
O6Z+4sxH+Luq5VXTlnIQ3R3n/l6/EpZ9Ei0VVq+Cxc1HCnQOVYP+yYE7wu5f
YZW896NIlzqo3Nh2oU+3HjZ3+FTvSGqAF1ruKs/EGuH9ZOje5ttNcGzfwYoK
gWbwLK2qKgn/BpvTxmD08ze46fpAWtLpB2z88/dy2pkfsO5gz9jMkVZosGn0
7tJthU6WRa3+np+QUXkq+GptGxBdyzSk9neAiLvpPtbJdkjIDfKwsekC2Xnf
3WpmO0B5kbBZ4O1u0GpdWFzn1AWvj4fmxmf0wERK0oZB925oVkoWoiT1ArFO
SuabcA8oXmxSOXzzF7itke7lfdYDupZdmzJu98HnoUv9xca90HE8cntcLBX+
c77T9bquFwp0bRd+SqTBkEIK3/eDv0DqQGXrw0g6fLv7vkaz/hdAL0/ih4Df
UB4gGCa5rQ9uSnkuVA7sB/tv9c1yj/sgPP3oJS2vAbDYNnzjoBAV0mpvVMQf
/wOdZtb20q5UCPFNZiw/MQjuee+I2hdU+OOsstTW5S+k0Cw3FI1R4cr0AH+n
+xA8lF0atlGbBkWDu4dF7IZh0kbeaMiTBt+VNvfqKTKAJde6/nkSDTzXuKon
5zBAbvV1T+lCGrw/cCh4hxwTFPefGCyup8HGgwOPJLKYwBeXfOTULxp4X9z1
Y5sMAfmyhyX8B2kQ7S48yZtMwH1+f16zvzR4t9x5dkCCBZHSUSqHqDR4OxM1
RzWeBdVn9Zwzv9Gg9oXhQJzoCPBYixRf/o8Gn+TdK2KTRiD7XMS56hs0iCjc
n9UzbxRskvbug+M0sFdodzgUNwpJje89vbfQ4N9rdZm1QmOQaFQ2VsNLg3Nz
+r9ePz8GPQsEq2PfU0FKUddZiYcNK0bj9qw+SYUzvgdG5p1lQ+mGpvz2lVR4
blPFnp1lw0ueSJ22d33gl3n6s4VyPJxjXS0afh8HG2XbbQ0ahsHgxwS9+jwN
Mh7UCNPdGLCJIsIncp8GEvqO+wd6GFBI/9M3WE6DoB93xXIdmeASGvhq108a
1Pvc0F/TyYSn7T1RE79pMBnw4PcKGwKIq7TENrQ+Ch9enhtrIoCRWro/eIAG
W0QCwmIoLKj3ZR8+30kDI1vq2M86FvCJFBW+/0wDkwHrgwutRuB9yH/lprk0
UBzs2FhYOwKXdS6Eh0bSgDG4NFRu7yhIGxaGTR1A83NddDqymA0f3qQQ4sw+
qK40oe5TPg/jrotVrsaHwGn+pOyH14fBrWNcVTYAxQctfDTBiAHRwfwFj+7Q
oGST84eSjwxwkRCfNSyhgdyS2V1j25mgsNFW3+w7Dfhcd4ymlzLhnEKs2Fka
io+psa71ugSMuY6/c0Pft/+aw5ZzLwholl0mtB7Fx9R1rzK9jSzw2nOCUOul
wcxa7Wm+Zyz4trpkx1QdDRZY7M2q0RyB/YNREi9e0CBAUGE6K38ERnsma9yu
0kDPqnBx6NpR8N3Mm0Z3pUHF7w1aVbfYoLPkxdmKuVSI8Fwquy2SAa/8/2h3
PqWBl+nh35I8TOi1SVonWY3iPXVXp2MoE97ouLg96qJBeuDwlRdTTKiPNP4+
htb//V8b5uJTBFgGHbrbiObPGJ5XcnyEgGXHRPi10P4FRYUYtPmxgHg8cc6i
jQaXo64xXjJYwPtLp5XxgQYuHX9eG3SyIePFPrVPP1D+SrFk7ZV9QeO59qe6
Ez5wY3zw888zw8DayJi+5ksD46iOP0c2MWDvHKvx0lQaiKv3jj98yYAYeXnT
0iI0vva6ntvrmVCTVMVKbaLBrY7rdbb5TJDc45QthPKpvjT9kLYqAQ5p/DmT
aH19Q15Iwz0CNpxNnKpD7fZWapeYIgtaHntKN6N8tb/uEJqSzoLTneryPY00
8OGt+vRk5QiwL6acz0f5fke83Dk1awQ0z7S1rr5Gg64IwVYNmVG4JTlFVfJC
65Vbfq3/Mht2WlvJUyWpICZ8UkzsFAOaCZf06Mc0KN3ZKcfDZAAj5KmMaBUN
HhYGBAocZ8LI67V9MR000GEZuvv+ZcKG1+OJwmi9HZ7Pei91J2ATw4dCQ+s9
t9UxbWMfAd3M6AyvfhrYfRl3LnBC8+UZHD3dTgPacPFJ424WnJN5LOpdgfIl
M0TKrYYN36fMpUL7+mAvuz7P0oIJ0Tqbv7W30ODo70HpvlomyN66WvCZToOU
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
CrEDVQ==
     "], {{{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, 
       {GrayLevel[0.3], Opacity[0.2], EdgeForm[None], 
        GraphicsGroupBox[PolygonBox[CompressedData["
1:eJwl1WWUVlUYgNFx6BJBukO6u7ulU6RLuru7SxSQ7pAGQbpRwqK7u7sb99Uf
ez3nPXO/NTPrnHW/5E06VGsfGhIS8hnxQv/vEebSk9oUIwfBc2EISzjCE4GI
RCIyUYhKND4nOl8Qg5h8SSxiE4e4we8lPglISCISk4SkJCM5R5lHL76lODlJ
wTHm05s6lCAXl1jFcJpTmZQcZwF9qEtJcnOZ1YygBVX4ihMspC/1KMVtNvI9
HcjDFdYwkpZUJRUnWUQ/6lOaO2xiAh3Jy1V+YRSteMYeplONB2xjEl15yV5m
kZpTLKY/bzhAA56wi6mU4S6b+YH3/EUnXvB7cL4uwkz9xMHgjM359BprCTWP
1nf8SXhza33Ob4Q1z9CP/EMEc3V9yHbCmCfrB/6mG6/Yx2yCi3hI0nCanxnA
W/6gIU/ZzTTKco8t/Ehn8nOddYyhDTV4xA5+ojtpOcMSBtKIctxnKxPpQgFu
8CtjaUtN0nGWpQyiMV9TkJusZxztqEV6zrGMwTShPIXIwHmWM4SmVKAwGbnA
CobSjIoUIROZyUJWsnGRlQzjOypRlFtsYDzt+YbH7GQKPXjNfuYER+EsDmsk
zR78b14EabwIHmhS3arXiWP9o67jPJ+bO+kolnGMcPa+1ZYMZB5/8p5ylKUM
pSlFbVowgLn8wTtK8g3N6c8cDvCWEtTiO/oxm/28oTgdGclSjhLW31RTm9GX
WezjNcXowAiWcIQwnq+h41nNaSLba6p9mMleXlGUH1jLOaJ5LnjhDudnDhNq
r7qOYxWniGSvia7nIl+Ye+tN4lnP0N95SRHuk8T+Fr1GbOsJeoeE1r9ocj2r
UbWdptK7mkg3agq9rDF1mH6ltzS+LtZkeij4jtBqmlrvaWLdpCn1in6pY/U2
CaxX6kkiWjfWX7lAdHMvvUFc6+n6Gy8ozGauEsvPvtc1nCGKua1u4BIxzEN1
EQdDQ/77kqqqY1jBCSLYa6Q9mcYenlOINgxhIf/wiSqMZjnHCe/zDbUHU9nN
MwrSmsEs4G8+UpkGdGcKu3hKAVoxiPn8xQcqUZ9u/MROnpCfitSjK5PZwWPy
UYG6dGES23lEXvKQm1zkJAfZyUZWspCZTGQkA+lJR1rSBGcc3JPgLgTnG9yR
4B4Fd4GkJAnOP7hDJAzOm/LUoTMT2cZD4vMvhFcFPA==
          "]]]}, {}, {}, {}, {}, {}, {}, {}}, {{}, {}, {}, 
       TagBox[
        {GrayLevel[0.3], AbsoluteThickness[1.6], Opacity[0.2], 
         LineBox[CompressedData["
1:eJwl1FWUVgUYhtFhZmBopLukpFO6pCQFBxCQEIcOZyjpBumSVkDCoKWlQUK6
G5RukO5m/4uLfZ71Xpyr76yTMSIqPDJaUFBQLI9ADzOL7tTnMwoSTAihRCcG
YcQMvEts4hCXeMQnAR+RkEQkJglJSUZyUpCSVKQmDWlJR3oykJEjzKYHDShH
IT7mKHPoydeU51PO8ydDaElNMnGMX+lFQypQmAssYSitqEVmjvMbvWlERW6w
mrFEUYSLLGUYrfmSLJzgd/rQmErcZA3j6EBRLrGM4bThEVv5mXDusIGJdOEp
/zCDrJzkD/rygl004QF/M5XPucVafuQ1e+nIE7YH7utDmK7vOBC4sV1ML7Oc
YHuEvmIPMey2+phthNrT9C37CbNr6102EmJP0jfs43uesYNfCHyIByUbp5hL
P16ym294yBZ+ojK3Wcd4OlGcK6xgJO2owz02MZmufMJp5tGfplThf9Yzgc6U
4CorGUV76pKdM8xnAN9SlZJcYxWj+Y6vyMG/LGAgEVSjFDn5j4UMohnVKU0u
zrKIwTSnBmXITR7yko/8nGMxP9CCLyjLdf5iDJHU4z6bmUI3nrOTmYFTuMWh
oA//hwL6HpTzgXU=
          "]]},
        Annotation[#, "Charting`Private`Tag$86998#1"]& ], 
       TagBox[
        {GrayLevel[0], AbsoluteThickness[1.6], Opacity[1.], 
         LineBox[CompressedData["
1:eJwl01W4VGUYgNE5tIfubumWLlEaJY90h0qHdIiASCpd0g2S0t2NSIfSodKl
tOTaDxdr3m/Pv6/m+yd9844RHcJCoVBcH+FcZhk/0ILPKUFMYhGbOGHv349H
fBKQkEQkJglJSUZyUpCSVKQmDWlJR3oykJEPyURmspCVbFxhOYP4ksqUJDtX
+ZXBfEUVPiYH11jBEL6mKqW4zxbG0Zn65OQvVjKUllTjEx6wlfF0oQG5+JtV
DKMV1XnGXqbRh095yDYm0JWG5OYfVjOc1tTgOfuYzreU5l+2M5FuRIoUCh3T
hTTiFb8xm/5EdX5SF5OH66zhR2I4O6NtgqWbj+h8InjBfmYE+3Z2VvsSxXwi
2K8uCvavF4Idaxn9jx3BXfA8ScP1z+AuaHeNrMeDO6K/aGw9H9wTbayvOUQC
z3M0lp7TAUQzn9IlxDVf1LzcYC0/8YHv/9C2hJmP6gK+4H8OMJPvKMsjdvIz
PWjCG35nLt+Tj5usYwTtqMlLDjKLfpTjMbuYTE+a8hG3WM9I2lOL8jxhN1Po
RTPyc5sNjCL4U9amAgW4w0ZG05E6VKQgd9nEGDpRl0oUojBFKEox7rGZsXxD
PT7jKXuYSm+a85bDzGMg0f22p3Up8cyXNJkW13dC2YNr
          "]]},
        Annotation[#, "Charting`Private`Tag$86998#2"]& ], 
       TagBox[
        {GrayLevel[0.3], AbsoluteThickness[1.6], Opacity[0.2], 
         LineBox[CompressedData["
1:eJwV0mWUVVUYgOE7dHePdIeANNIh3R1KDAiIyJBKdynSjdLd3Ui3CQgqSHeJ
dMdzfjzn/fY+565119o7Y0Rkvc5hoVAooUfqKKHQf+xkEt1oRnXSEM4HpCUd
6clARjKRmSxkJRvZyUFOcpGbPHxIXvKRn48oQEEKUZgiFKUY9/mJyXSnOTUo
zv/sYgo9+JSafMwDdjOVnnxGLd7wM/MZzBeU4CF7mMbXtKA2b/mFBQyhIyV5
xF6m8w0tiRE1FPpTV/AddXjHryxkKF9SisfsYwa9aEVMvz+lKxlNXUL2ftNF
DCOx9QXdTCfiWv+jaxlHMuvLuo3SPGE/M0np3TXtTULzOd1Ia2JZn9ZVwXmb
b+r3JDVfCs5Xtwbnr3eCM9Z6Gqa/B3dBF2tqvRHcBR2uSfRicEd0S3CH9HZw
T/Qrjadngnuk6zRcb+l4kpuv6HbSme9qGZ5ygB9IZf+69iGR+bxuIoLY1n/p
asZQnyj2/tAljKAz8e2d1fVMoCzPOMiP9KUNcXz3t65hLA2Iau+4LmUkkZTj
OYeYRT/a0pBovj+hyxhFF8rzgsPMpj+f04gKvOQIcxhAOxpTkVccZS4DaU8T
PqESlalCVV5zjHkMogNNie4/ndTlfEtXEtj7VzcwkRTWV3UH6c33NLtW0/ck
o4Vq
          "]]},
        Annotation[#, "Charting`Private`Tag$86998#3"]& ]}}], {}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->False,
  AxesLabel->{None, None},
  AxesOrigin->{0, 0},
  BaseStyle->(FontSize -> 15),
  DisplayFunction->Identity,
  Frame->True,
  FrameLabel->{
    FormBox["\"x\"", TraditionalForm], 
    FormBox["\"f(x)\"", TraditionalForm]},
  FrameStyle->GrayLevel[0],
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{0, 1.5}, {0, 0.8}},
  PlotRangeClipping->True,
  PlotRangePadding->{{0, 0}, {0, 0}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{{3.8019256969979796`*^9, 3.801925714775713*^9}, {
  3.801925745723984*^9, 3.801925765366178*^9}, {3.801925880662243*^9, 
  3.80192592389287*^9}, {3.8019261071272836`*^9, 3.801926144230516*^9}, {
  3.8019264405167885`*^9, 
  3.8019264810992594`*^9}},ExpressionUUID->"649d1176-68b2-4f61-bd28-\
e578c4867792"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"Export", "[", 
  RowBox[{"\"\<plot_case_1.pdf\>\"", ",", "plot", ",", 
   RowBox[{"ImageSize", "\[Rule]", "500"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.778826610787349*^9, 3.7788266167223983`*^9}, {
  3.801925913501132*^9, 
  3.8019259269413424`*^9}},ExpressionUUID->"234e8456-2795-4447-847a-\
5366da304e07"],

Cell[BoxData[
 RowBox[{"(*", " ", "end", " ", "*)"}]], "Input",
 CellChangeTimes->{{3.7643129929411526`*^9, 
  3.7643129948112364`*^9}},ExpressionUUID->"78d9f6b1-c42a-4626-b2d7-\
229d2b55a12f"]
}, Closed]],

Cell[CellGroupData[{

Cell[BoxData[
 StyleBox[
  RowBox[{"(*", " ", 
   RowBox[{"GA", " ", "//", " ", 
    RowBox[{"multiple", " ", "fits"}]}], " ", "*)"}],
  FontSize->22]], "Input",
 CellChangeTimes->{{3.764312986551441*^9, 3.7643129885059814`*^9}, 
   3.777635020609703*^9, 3.7776351044969716`*^9, {3.8019252975466175`*^9, 
   3.801925300920355*^9}},
 Background->RGBColor[
  0.9, 1, 1],ExpressionUUID->"1a7987ad-714a-4087-aae9-f569c6371d2f"],

Cell[BoxData[
 RowBox[{
  RowBox[{"LaunchKernels", "[", "7", "]"}], ";"}]], "Input",
 CellChangeTimes->{{3.763393214452123*^9, 
  3.763393218592304*^9}},ExpressionUUID->"324fc1be-15ae-4112-ab31-\
2f4cf2cb7fd7"],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
   RowBox[{
   "Run", " ", "the", " ", "GA", " ", "with", " ", "multiple", " ", "random", 
    " ", "seeds"}], " ", "//", " ", 
   RowBox[{"change", " ", "the", " ", "sample", " ", "parameter"}]}], " ", 
  "*)"}]], "Input",
 CellChangeTimes->{{3.801926528367456*^9, 
  3.8019265492641897`*^9}},ExpressionUUID->"25612c41-5a0a-46d4-8fab-\
4eedbfcb34cc"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{"prog`int", ",", "prog`pop", ",", "GApop"}], "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"generations", "=", "300"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"samples", "=", "4"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"prog`int", "=", "0"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"prog`pop", "=", "0"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"ProgressIndicator", "[", 
  RowBox[{
   RowBox[{"Dynamic", "[", "prog`int", "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", "generations"}], "}"}]}], "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ProgressIndicator", "[", 
   RowBox[{
    RowBox[{"Dynamic", "[", "prog`pop", "]"}], ",", 
    RowBox[{"{", 
     RowBox[{"0", ",", "samples"}], "}"}]}], "]"}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"{", 
    RowBox[{
    "randomseed", ",", " ", "maxgens", ",", " ", "population", ",", " ", 
     "crossoverrate", ",", " ", "mutationrate", ",", " ", 
     RowBox[{"verbose", " ", 
      RowBox[{"(", 
       RowBox[{"True", "/", "False"}], ")"}]}]}], "}"}], " ", 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Do", "[", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"GApop", "[", "jj", "]"}], "=", 
      RowBox[{"GAevo", "[", 
       RowBox[{
        RowBox[{"1234", "jj"}], ",", "generations", ",", "100", ",", "0.75", 
        ",", "0.3", ",", "False"}], "]"}]}], ";", 
     RowBox[{"prog`pop", "++"}], ";", 
     RowBox[{"prog`int", "=", "0"}], ";"}], ",", 
    RowBox[{"{", 
     RowBox[{"jj", ",", "1", ",", "samples"}], "}"}]}], "]"}], 
  ";"}]}], "Input",
 CellChangeTimes->{
  3.778403616991485*^9, {3.7784039122216816`*^9, 3.778403924643993*^9}, {
   3.778403970401459*^9, 3.7784039829621897`*^9}, {3.7784048217145576`*^9, 
   3.7784048457640886`*^9}, {3.7784049208842654`*^9, 3.778404935524335*^9}, {
   3.778405114116522*^9, 3.778405114499031*^9}, {3.778405185454662*^9, 
   3.7784052327646866`*^9}, 3.778405414304783*^9, 3.778405504644823*^9, {
   3.77840606098112*^9, 3.7784061116535263`*^9}, {3.778406341325013*^9, 
   3.778406343055256*^9}, {3.778406446845564*^9, 3.7784064470573015`*^9}, {
   3.7784125020994053`*^9, 3.7784125030270696`*^9}, {3.7784763320260096`*^9, 
   3.7784763640263433`*^9}, {3.7784765359091845`*^9, 3.778476622266158*^9}, {
   3.7784766764665785`*^9, 3.778476677846485*^9}, {3.778476739576846*^9, 
   3.778476775226169*^9}, {3.7784770458468943`*^9, 3.778477047946451*^9}, {
   3.7784772577370834`*^9, 3.7784772583767433`*^9}, {3.778477370951474*^9, 
   3.778477371276441*^9}, {3.8019244747619505`*^9, 3.801924475178142*^9}, {
   3.801925137537366*^9, 3.8019251751448298`*^9}, {3.8019252393406706`*^9, 
   3.801925239469205*^9}, {3.801926504273736*^9, 3.801926507187703*^9}, {
   3.8019267144050055`*^9, 
   3.801926714993703*^9}},ExpressionUUID->"b09b81a3-ea59-4344-a105-\
b9b9e504595b"],

Cell[BoxData[
 ProgressIndicatorBox[Dynamic[prog`int], {0, 300}]], "Output",
 CellChangeTimes->{3.7784773179661584`*^9, 3.8019245149229045`*^9, 
  3.8019251767185516`*^9, 3.801925241023525*^9, 3.8019265109758644`*^9, 
  3.801926768570582*^9},ExpressionUUID->"6e2d298b-5448-4b5e-935b-\
4f7ffab4fde4"],

Cell[BoxData[
 ProgressIndicatorBox[Dynamic[prog`pop], {0, 4}]], "Output",
 CellChangeTimes->{3.7784773179661584`*^9, 3.8019245149229045`*^9, 
  3.8019251767185516`*^9, 3.801925241023525*^9, 3.8019265109758644`*^9, 
  3.801926768583256*^9},ExpressionUUID->"fafb88b8-e136-48c1-b168-\
443bcc9a130f"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"Export", "[", 
  RowBox[{
   RowBox[{"\"\<test_samples\>\"", "<>", "\"\<.zip\>\""}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"\"\<test_samples\>\"", "<>", "\"\<.m\>\""}], "->", 
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{"GApop", "[", "jj", "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"jj", ",", "1", ",", "samples"}], "}"}]}], "]"}]}], "}"}]}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.778483971928008*^9, 3.778484004571416*^9}, {
  3.801924519631752*^9, 3.8019245229945145`*^9}, {3.801926647306615*^9, 
  3.801926651928259*^9}},ExpressionUUID->"db4627fd-ffc8-4704-9b2e-\
70d8577c140c"],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{"Plot", " ", "the", " ", 
   RowBox[{"chi", "^", "2"}], " ", "as", " ", "a", " ", "function", " ", "of",
    " ", "the", " ", "generations"}], " ", "*)"}]], "Input",
 CellChangeTimes->{{3.778910507633906*^9, 3.778910511163908*^9}, {
  3.8019245353068285`*^9, 3.801924536149663*^9}, {3.8019267751755114`*^9, 
  3.8019267863935776`*^9}},ExpressionUUID->"91e1b640-3610-4363-981f-\
770fa41977de"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ListLogLogPlot", "[", 
  RowBox[{
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"GApop", "[", "jj", "]"}], "[", 
       RowBox[{"[", 
        RowBox[{"All", ",", "1"}], "]"}], "]"}], "//", "Abs"}], ",", 
     RowBox[{"{", 
      RowBox[{"jj", ",", "1", ",", "samples"}], "}"}]}], "]"}], ",", 
   RowBox[{"Joined", "\[Rule]", "True"}], ",", 
   RowBox[{"PlotRange", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"1", ",", " ", "generations"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"10", ",", 
        SuperscriptBox["10", "4"]}], "}"}]}], "}"}]}], ",", 
   RowBox[{"Frame", "\[Rule]", "True"}], ",", 
   RowBox[{"FrameStyle", "\[Rule]", "Black"}], ",", 
   RowBox[{"Epilog", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"{", 
      RowBox[{"Dashed", ",", 
       RowBox[{"Line", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"0.1", ",", 
             RowBox[{"fmin", "[", 
              RowBox[{"[", "1", "]"}], "]"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"generations", ",", 
             RowBox[{"fmin", "[", 
              RowBox[{"[", "1", "]"}], "]"}]}], "}"}]}], "}"}], "//", "Log"}],
         "]"}]}], "}"}], "}"}]}], ",", 
   RowBox[{"FrameLabel", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
     "\"\<N\>\"", ",", 
      "\"\<\!\(\*SuperscriptBox[\(\[Chi]\), \(2\)]\)(N)\>\""}], "}"}]}], ",", 
   RowBox[{"FrameStyle", "\[Rule]", "Black"}], ",", 
   RowBox[{"BaseStyle", "\[Rule]", 
    RowBox[{"FontSize", "\[Rule]", "14"}]}], ",", 
   RowBox[{"ImageSize", "\[Rule]", "500"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.7633929266727533`*^9, 3.763393070201845*^9}, {
  3.763393332764333*^9, 3.7633934005734005`*^9}, {3.763537137275759*^9, 
  3.7635371771383505`*^9}, {3.7635372196169186`*^9, 3.7635372965386815`*^9}, {
  3.763537938338153*^9, 3.7635379679532356`*^9}, {3.7643140555012016`*^9, 
  3.7643140674011965`*^9}, {3.7643141046710367`*^9, 3.7643141048214316`*^9}, {
  3.778404030116023*^9, 3.778404030853419*^9}, {3.778405288774827*^9, 
  3.778405336544338*^9}, {3.778476842681634*^9, 3.778476872058549*^9}, {
  3.7784774635163536`*^9, 3.778477481286607*^9}, {3.7784820163028464`*^9, 
  3.778482285739515*^9}, {3.8019247594902315`*^9, 3.801924775866001*^9}, {
  3.8019252609445477`*^9, 3.8019252637738557`*^9}, {3.8019261957659397`*^9, 
  3.8019261982514515`*^9}, {3.801926663997324*^9, 3.801926667494136*^9}, {
  3.80192689308634*^9, 
  3.8019269134549*^9}},ExpressionUUID->"8c0d9483-cf3a-406a-9a18-d5d0131d65cd"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.004583333333333334], 
     AbsoluteThickness[1.6], 
     StyleBox[LineBox[CompressedData["
1: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

       "]],
      FontSize->14]}, 
    {RGBColor[0.880722, 0.611041, 0.142051], PointSize[0.004583333333333334], 
     AbsoluteThickness[1.6], 
     StyleBox[LineBox[CompressedData["
1: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
0NUCy2WGi+i2wS+SnOwKO+B/ADI5ka8=
       "]],
      FontSize->14]}, 
    {RGBColor[0.560181, 0.691569, 0.194885], PointSize[0.004583333333333334], 
     AbsoluteThickness[1.6], 
     StyleBox[LineBox[CompressedData["
1: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
       "]],
      FontSize->14]}, 
    {RGBColor[0.922526, 0.385626, 0.209179], PointSize[0.004583333333333334], 
     AbsoluteThickness[1.6], 
     StyleBox[LineBox[CompressedData["
1:eJxN2Hk8VesaB/BtJkNs2YYdoojsdHBSiWshkkok1xBCOQmnjMfUKUqkzEM6
hlJkTiG0zWORS4bQrCLVOU5tY5vQ6X72vfvnr/X5ftbwPO9a73rW8y4F11MH
3ThJJJIaB4n03+3RR84Tu1UY+hTrytoyT0VCkOt2yJ/Jk/rSJ5UFDU0UiC87
FpYN1efY1or9+6tB0zzbnOs2LQgWL7JtY69Z6qv4nW2/4p365TdJxP/Nuj4H
26y4nGzv23a2elSdi/DtfLwzXlqO+P3aQB3lLWwZo6HGfYGbaBu0Vm6ukCXy
a4cpj9bysC1vun8HpQhm5c/LdsjZhWbPIjgy0VMnVJ6PbVoFN692HB9Rw2/+
tuCyLJE46hdq+BUuKz2Von6Yn+2Odr1A/xqYUdG39LuEANvztKTT+V4w6/7B
3TKMP1NEV7GdEMF1f8QRXm92Zci+AJZf7u7azoAzhgTn87YKsm2vlmjaEwR7
dtxvGKDDffcHZ54y4TlhevjiViG226dXW9n7wKznC9c/1PmsMgoXGLS2P5AW
Jjb3/tsoMVKWGBK+6D5vLkyobGIaUk7IEsK+mjsHzsHmJXHGbpXwZj31Q43j
sNjEGgqDIsK20aFFbR4TEWL4bFGVrd5aIrcz5zdBf9jLMKFe5AZcxUjYItMN
B9Ra6G5nwqz5uZrtO9SS6v698HeS5Xdnf3hPYWmRUiZcrKvortIKC4m3BHp/
gqeXa+zO8YmybeG1qWtWGrZLv31DgiZK8NDLne5NUon9Jg/ax/TgYNWH824H
4Muabi8znGFhL/JfF33gv15ujNhyDqZKjX5MTIJZ7x8coJqSnFQuSjx1otTL
11GJvPVmz39ugTeLqUym98E7emqzH7yBa2VSsuhfYAWD49EBy3Dn0IaZb0Ji
bOvbzDiYU+HxLYpaJ1Vh2eLFIYdtsAPfzXSqMUz+2NRSfBDW1dwXJeIsRpx+
uerzwC4qoWq+fo3xr7Bf2Z1oixB4V1jQkkYUzKo/sFtWHmdoNnxuzDV2rAR+
4jYnoEKHV+UwnUzaYZP6Tx5EH9yvn8Qt+UqMsOqYSnhNphLOPo7fHn2E5y6V
SjrOiBFcuZoGxy2kCVGaBrXnO9zgoNQsJ0hm2989v+EABfYemm5xUYD/aMwP
tKbBo3VLYWrbYGYu35kxgxXe+54/fB/s4c+s4rCB1WQp0sddyMTWxdzmwASp
/9VnWKOGuvFdAFz/MGqEeRaeELdzm4uG32Vob32RDN/S0erIz4KT3RjJDvnw
4d2Nqxbuwm0WTRlhNTCvNUcFo5VMRN/dyxXl/SMfk3S6WTd8I7dDIn4Ijq0Q
UGsYgR3Oa9k//QinvY3heD0JG+uNnX68AF+OvaV0m0uc7dLdXw4GCsHV3nl2
6hKw1VB0TL+sOGERqv0msYlCdAbv0j2mDLO+b/Deikkzy23wpyu+Brf1YdUN
fGNfd8MfVKeCNSxguyMtpva2sKG6c4qvM1w2JXM9xB3uqqos9PWGK7z9pu2D
YNcOxRqtMHjMQ1VnKUqcSGk4WrC2gULQGHGl1fGwpy2f5dE0OFVpyY50HQ6U
yCDF58FZYYMhq0vFiSTm66yqIAox7+K3FF4JkwUl68brYKeLJp/02mA5ul9V
VBfMJ8d9qK0f7nGxnZx+BrP6B9jB9d0o7SO8IZAjWfsL/PnXtlmtOdh+6oW2
0hK8+QM1bBX3GrbTzcMXRlfBVqTtPWVisMWWbEV/Kdiw2UpOTR4OCVb7MKQE
LzCNbgbS4OOpnP7CWrADv0zY1R1wGTPukxQBSx2p648zgc89tHFc2AfHeQcU
HbaCTc1inpfbwaGDwcIkZzhn7IKr0S9wpf4vzNNecJOa4d8lvvCR4UqngSCY
fHvwBOMMzOrfVsT/c7hB5DK89oUtIZoIR3B3PuJPg6NC2oKYmbBolM+xkZvw
T47n8+sL4Kz7uoeTS9cQNxuzdSJ+eKeH71Xne/DP/bGBSjWwrWm86LtG2NxP
NPRKO6wWb9Jj2AUv5nArfOiFe0vqo88PweV3IuWkXq44/6HUbO5buFR2QHHT
B/joi7q6/Al4mDdqWHYKfm0bFxXzFVbgfvVmehGu8aZ9teKUYFt7YvxVCR/s
aq5asCy0Yn9ym/seMrzdQ18zVhJm9ddw8/oIFZIifOLYbNCWjXBkd5q0LQ22
ykyhhmjADMuB+FRt+BTHt8iinfCtVD8xOgF/Ezmu32wM+9Nb1rWawZsOb29v
OAD/flhf994heN2oRGqOHaw72/w6xgkeDSereB9dEc8n++x+d7iv5PH0hl/h
GMnepDkf+I+4ax4tv8HWz3iiL4ZKEBflOYevGVIIzqvXv5mGwUa0wcdcF+Bd
mW/I9Gi40Lu7zz1Ogqizyi3mWJIgTsUGS4snw+95rsxVp8Ejf+UH2GTC2jIC
OZPZcNfCx0uRt2DW+ghOf0SuyS6Fi8U+SylXwIMqXi551XCr6fQ1hTr4fETr
y7QmeNn3q5JAO9z5JOJCQCd8RFuP91U3PBHXU67fDxe8aE3NGoJnqy/Q556v
GN+UvcreEThR9sRE+uiK8ayrXD3+AeZrXp9Jm4DP0EIyTjLgS2ecJEtm4G4j
W+n3TDh6obdIegkOTlgzuIeDwvbG15Y3AnjgRvkMqSwB+LjnuFGTMLxLSYQ2
IgZv8Ol7Ni8Bv7vxxFpUBk7Lu1GgKAdfCyh4/pMiHBagP6OjDP9nNGeJ2ASz
1r+wWII5yUATFlhOEdipDfsvFCpq6MCT1Qet1v8LTg3TyxEzhLNXc8osGsPh
nxQa3+2BFcv509v3wzfDhcpzLWGPbSdFwqxhepddlY0dXHh9/K6aI1zdJcmz
6AwPeL2kdxyDeRmrhxLd4UqHEGcbrxX5ZfUekfaGXzy893zYDyZcq4aTAmHt
woOOZqGw4MCMz/IZ2OLgHPXOOVhT8rqLQySc+VhpD+8lWEf57tOSWNiBZEWx
SIQbasj8jBTY2G20IuYqnLdUIK+cCQsVbrOsuw7XT1iZH8iBa9+Xrx3JoxD0
BPliqR/zmvX/A04vbDaavf2j7rzXFnzW9uP4mIT80DLYteHN1PI9mMdfVu3s
fZhWmWO9WAs/iGkJ/K0Rvrqj9srfLfBnx+Zqlwewp/q3kf5OWCE7fI1BN/w0
1dm+pBf+B380Gu4=
       "]],
      FontSize->14]}}, {}, {}, {}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{0.028518912373281004`, 2.3371238693889564`},
  BaseStyle->(FontSize -> 14),
  DisplayFunction->Identity,
  Epilog->{{
     Dashing[{Small, Small}], 
     LineBox[
      NCache[{{-2.3025850929940455`, 3.4595418658995203`}, {
         Log[300], 3.4595418658995203`}}, {{-2.3025850929940455`, 
       3.4595418658995203`}, {5.703782474656201, 3.4595418658995203`}}]]}},
  Frame->{{True, True}, {True, True}},
  FrameLabel->{{
     FormBox[
     "\"\\!\\(\\*SuperscriptBox[\\(\[Chi]\\), \\(2\\)]\\)(N)\"", 
      TraditionalForm], None}, {
     FormBox["\"N\"", TraditionalForm], None}},
  FrameStyle->GrayLevel[0],
  FrameTicks->FrontEndValueCache[{{
      Charting`ScaledTicks[{Log, Exp}], 
      Charting`ScaledFrameTicks[{Log, Exp}]}, {
      Charting`ScaledTicks[{Log, Exp}], 
      Charting`ScaledFrameTicks[{Log, Exp}]}}, {{{{2.302585092994046, 
        FormBox["10", TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {3.912023005428146, 
        FormBox["50", TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {4.605170185988092, 
        FormBox["100", TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {6.214608098422191, 
        FormBox["500", TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {6.907755278982137, 
        FormBox["1000", TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {8.517193191416238, 
        FormBox["5000", TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {9.210340371976184, 
        FormBox[
         TemplateBox[{"10", "4"}, "Superscript", SyntaxForm -> 
          SuperscriptBox], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {1.6094379124341003`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.791759469228055, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.9459101490553132`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {2.0794415416798357`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {2.1972245773362196`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {2.995732273553991, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {3.4011973816621555`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {3.6888794541139363`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.0943445622221, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.248495242049359, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.382026634673881, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.499809670330265, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {5.298317366548036, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {5.703782474656201, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {5.991464547107982, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.396929655216146, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.551080335043404, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.684611727667927, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.802394763324311, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {7.600902459542082, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.006367567650246, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.294049640102028, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.699514748210191, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.85366542803745, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.987196820661973, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {9.104979856318357, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {9.903487552536127, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {10.308952660644293`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {10.596634733096073`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {10.819778284410283`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {11.002099841204238`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {11.156250521031495`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {11.289781913656018`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {11.407564949312402`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {11.512925464970229`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}}, {{2.302585092994046, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {3.912023005428146, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {4.605170185988092, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {6.214608098422191, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {6.907755278982137, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {8.517193191416238, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {9.210340371976184, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {1.6094379124341003`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.791759469228055, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.9459101490553132`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {2.0794415416798357`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {2.1972245773362196`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {2.995732273553991, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {3.4011973816621555`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {3.6888794541139363`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.0943445622221, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.248495242049359, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.382026634673881, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.499809670330265, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {5.298317366548036, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {5.703782474656201, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {5.991464547107982, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.396929655216146, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.551080335043404, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.684611727667927, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.802394763324311, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {7.600902459542082, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.006367567650246, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.294049640102028, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.699514748210191, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.85366542803745, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.987196820661973, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {9.104979856318357, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {9.903487552536127, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {10.308952660644293`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {10.596634733096073`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {10.819778284410283`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {11.002099841204238`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {11.156250521031495`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {11.289781913656018`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {11.407564949312402`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {11.512925464970229`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}}}, {{{0., 
        FormBox["1", TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {1.6094379124341003`, 
        FormBox["5", TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {2.302585092994046, 
        FormBox["10", TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {3.912023005428146, 
        FormBox["50", TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {4.605170185988092, 
        FormBox["100", TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {-0.6931471805599453, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {-0.5108256237659907, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {-0.35667494393873245`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {-0.2231435513142097, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {-0.10536051565782628`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {0.6931471805599453, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.0986122886681098`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.3862943611198906`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.791759469228055, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.9459101490553132`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {2.0794415416798357`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {2.1972245773362196`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {2.995732273553991, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {3.4011973816621555`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {3.6888794541139363`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.0943445622221, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.248495242049359, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.382026634673881, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.499809670330265, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {5.298317366548036, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {5.703782474656201, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {5.991464547107982, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.214608098422191, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.396929655216146, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.551080335043404, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.684611727667927, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.802394763324311, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.907755278982137, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {7.600902459542082, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.006367567650246, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.294049640102028, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.517193191416238, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}}, {{0., 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {1.6094379124341003`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {2.302585092994046, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {3.912023005428146, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {4.605170185988092, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.01, 0.}, {
         AbsoluteThickness[0.1]}}, {-0.6931471805599453, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {-0.5108256237659907, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {-0.35667494393873245`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {-0.2231435513142097, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {-0.10536051565782628`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {0.6931471805599453, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.0986122886681098`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.3862943611198906`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.791759469228055, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {1.9459101490553132`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {2.0794415416798357`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {2.1972245773362196`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {2.995732273553991, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {3.4011973816621555`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {3.6888794541139363`, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.0943445622221, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.248495242049359, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.382026634673881, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {4.499809670330265, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {5.298317366548036, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {5.703782474656201, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {5.991464547107982, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.214608098422191, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.396929655216146, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.551080335043404, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.684611727667927, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.802394763324311, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {6.907755278982137, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {7.600902459542082, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.006367567650246, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.294049640102028, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}, {8.517193191416238, 
        FormBox[
         TemplateBox[{0., 0.}, "Spacer2"], TraditionalForm], {0.005, 0.}, {
         AbsoluteThickness[0.1]}}}}}],
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  ImageSize->500,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Exp[#]& )[
         Part[#, 1]], 
        (Exp[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Exp[#]& )[
         Part[#, 1]], 
        (Exp[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->NCache[{{0, 
      Log[300]}, {
      Log[10], 
      Log[10000]}}, {{0, 5.703782474656201}, {2.302585092994046, 
     9.210340371976184}}],
  PlotRangeClipping->True,
  PlotRangePadding->{{0, 0}, {0, 0}},
  Ticks->{
    Charting`ScaledTicks[{Log, Exp}], 
    Charting`ScaledTicks[{Log, Exp}]}]], "Output",
 CellChangeTimes->{
  3.8019247784967794`*^9, 3.8019252644090624`*^9, {3.801926654279863*^9, 
   3.8019266707563963`*^9}, {3.8019268698124933`*^9, 
   3.8019269139113884`*^9}},ExpressionUUID->"e0627811-c10d-4e9f-9efe-\
22e785967797"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"The", " ", "best"}], "-", 
    RowBox[{"fitting", " ", "GA", " ", "functions"}]}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"GAfuncs", "=", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"GApop", "[", "i", "]"}], "[", 
       RowBox[{"[", 
        RowBox[{
         RowBox[{"-", "1"}], ",", "2"}], "]"}], "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"i", ",", "1", ",", "samples"}], "}"}]}], "]"}]}], 
   ";"}]}]], "Input",
 CellChangeTimes->{{3.8019269990910892`*^9, 
  3.8019270166575074`*^9}},ExpressionUUID->"d44a2e91-9961-42c4-8e1f-\
4a4a6fe358a7"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"Plot", " ", "of", " ", "the", " ", "best"}], "-", 
    RowBox[{
    "fit", " ", "real", " ", "model", " ", "vs", " ", "the", " ", "best"}], 
    "-", 
    RowBox[{"fit", " ", "GA"}]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"plr", "=", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"0", ",", "1.5"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", ".8"}], "}"}]}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{"Show", "[", 
    RowBox[{
     RowBox[{"ErrorListPlot", "[", 
      RowBox[{"data", ",", 
       RowBox[{"PlotRange", "\[Rule]", "plr"}], ",", 
       RowBox[{"PlotStyle", "\[Rule]", "Gray"}]}], "]"}], ",", 
     RowBox[{"Plot", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{
           RowBox[{"model", "[", 
            RowBox[{"x", ",", "a", ",", "b", ",", "c"}], "]"}], "/.", 
           RowBox[{"fmin", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], ",", "GAfuncs"}], "}"}], "//", 
        "Evaluate"}], ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "0", ",", "1.5"}], "}"}], ",", 
       RowBox[{"PlotRange", "\[Rule]", "plr"}], ",", 
       RowBox[{"Frame", "\[Rule]", "True"}]}], "]"}], ",", 
     RowBox[{"Frame", "\[Rule]", "True"}], ",", 
     RowBox[{"Axes", "\[Rule]", "False"}], ",", 
     RowBox[{"FrameLabel", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"\"\<x\>\"", ",", "\"\<f(x)\>\""}], "}"}]}], ",", 
     RowBox[{"FrameStyle", "\[Rule]", "Black"}], ",", 
     RowBox[{"BaseStyle", "\[Rule]", 
      RowBox[{"FontSize", "\[Rule]", "15"}]}], ",", 
     RowBox[{"PlotRange", "\[Rule]", "plr"}]}], "]"}]}]}]], "Input",
 CellChangeTimes->{{3.8019269284492855`*^9, 3.801926971318722*^9}, 
   3.801927020618803*^9},ExpressionUUID->"5699ebcd-0362-43c9-b66e-\
e1d95c0b2470"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, 
     {GrayLevel[0.5], PointSize[0.012833333333333334`], AbsoluteThickness[
      1.6], PointBox[CompressedData["
1:eJxTTMoPSmViYGCQB2IQPWsmGNh/LNY5e/zDNHsTYxDYbB/0mclM22a7PQMY
HLBnfnDi6GLbg/bpaSBwzN7vzfm+fMFj9mfPgIH9quKdyzYxnrOHmHfRvvIB
b0H7j7P258DSV+y/ZM7XlYq/as8INu+GvcgaxwR1q1tQ+27b2/8+KMf++g7U
/Hv2S31+ffpfdRdq/gP7LrOrX1hePITKP7K3ue+zxtDsIdS8J/bql9sqtyY+
gtr/1P7H1P2neJY8hJr/3F54P6/fFNHHUPNe2Au+rP3DyfgYat4re7V5s1Jn
JD6BmvfGPv9G5KPShCdQ897aN9Y+8X17+hnUvPf2UqwKlV4Kz+3B2tM+2D+w
vXHsnPpze7C08Ud70XmVrrzHnkPD75P9C0kxB7WkZ1D7P9nn1UibLf72DGr+
Z/t732o4zZpg5n2x9wr7q90tBzPvq33cX6F1b/fDzPtmf93xGNMlQ5h53+z7
H3I0SVs/hZr33T77XXz1xdonUPN+2P9fZlylI/HUHgCwyutO
       "]], {{
        LineBox[{{0.025, 0.056381292841883396`}, {
         0.025, -0.011575533606872437`}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.025, 0.056381292841883396`}], 
          Offset[{-1.5, 0}, {0.025, 0.056381292841883396`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.025, -0.011575533606872437`}], 
          Offset[{-1.5, 0}, {0.025, -0.011575533606872437`}]}]}, {
        LineBox[{{0.07500000000000001, 0.12027304028265791`}, {
         0.07500000000000001, 0.06125066555536916}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.07500000000000001, 0.12027304028265791`}], 
          Offset[{-1.5, 0}, {0.07500000000000001, 0.12027304028265791`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.07500000000000001, 0.06125066555536916}], 
          Offset[{-1.5, 0}, {0.07500000000000001, 0.06125066555536916}]}]}, {
        LineBox[{{0.125, 0.15520139885492715`}, {0.125, 
         0.11418579210604277`}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.125, 0.15520139885492715`}], 
          Offset[{-1.5, 0}, {0.125, 0.15520139885492715`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.125, 0.11418579210604277`}], 
          Offset[{-1.5, 0}, {0.125, 0.11418579210604277`}]}]}, {
        LineBox[{{0.17500000000000002`, 0.1880755989226064}, {
         0.17500000000000002`, 0.15673859620014918`}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.17500000000000002`, 0.1880755989226064}], 
          Offset[{-1.5, 0}, {0.17500000000000002`, 0.1880755989226064}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.17500000000000002`, 0.15673859620014918`}], 
          Offset[{-1.5, 0}, {0.17500000000000002`, 
           0.15673859620014918`}]}]}, {
        LineBox[{{0.225, 0.26583772759649643`}, {0.225, 0.2030159013410508}}],
         LineBox[{
         Offset[{1.5, 0}, {0.225, 0.26583772759649643`}], 
          Offset[{-1.5, 0}, {0.225, 0.26583772759649643`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.225, 0.2030159013410508}], 
          Offset[{-1.5, 0}, {0.225, 0.2030159013410508}]}]}, {
        LineBox[{{0.275, 0.270907178304894}, {0.275, 0.19738683131189672`}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.275, 0.270907178304894}], 
          Offset[{-1.5, 0}, {0.275, 0.270907178304894}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.275, 0.19738683131189672`}], 
          Offset[{-1.5, 0}, {0.275, 0.19738683131189672`}]}]}, {
        LineBox[{{0.32500000000000007`, 0.36951619503544897`}, {
         0.32500000000000007`, 0.29834296739708466`}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.32500000000000007`, 0.36951619503544897`}], 
          Offset[{-1.5, 0}, {0.32500000000000007`, 0.36951619503544897`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.32500000000000007`, 0.29834296739708466`}], 
          Offset[{-1.5, 0}, {0.32500000000000007`, 
           0.29834296739708466`}]}]}, {
        LineBox[{{0.37500000000000006`, 0.43697362002052736`}, {
         0.37500000000000006`, 0.3826252340454049}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.37500000000000006`, 0.43697362002052736`}], 
          Offset[{-1.5, 0}, {0.37500000000000006`, 0.43697362002052736`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.37500000000000006`, 0.3826252340454049}], 
          Offset[{-1.5, 0}, {0.37500000000000006`, 0.3826252340454049}]}]}, {
        LineBox[{{0.42500000000000004`, 0.4699612571850725}, {
         0.42500000000000004`, 0.4337286614032901}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.42500000000000004`, 0.4699612571850725}], 
          Offset[{-1.5, 0}, {0.42500000000000004`, 0.4699612571850725}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.42500000000000004`, 0.4337286614032901}], 
          Offset[{-1.5, 0}, {0.42500000000000004`, 0.4337286614032901}]}]}, {
        LineBox[{{0.47500000000000003`, 0.49274770746595353`}, {
         0.47500000000000003`, 0.42851691671568215`}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.47500000000000003`, 0.49274770746595353`}], 
          Offset[{-1.5, 0}, {0.47500000000000003`, 0.49274770746595353`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.47500000000000003`, 0.42851691671568215`}], 
          Offset[{-1.5, 0}, {0.47500000000000003`, 
           0.42851691671568215`}]}]}, {
        LineBox[{{0.525, 0.5895099907100962}, {0.525, 0.5296353610606603}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.525, 0.5895099907100962}], 
          Offset[{-1.5, 0}, {0.525, 0.5895099907100962}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.525, 0.5296353610606603}], 
          Offset[{-1.5, 0}, {0.525, 0.5296353610606603}]}]}, {
        LineBox[{{0.5750000000000001, 0.5668973433915876}, {
         0.5750000000000001, 0.5088336222684826}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.5750000000000001, 0.5668973433915876}], 
          Offset[{-1.5, 0}, {0.5750000000000001, 0.5668973433915876}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.5750000000000001, 0.5088336222684826}], 
          Offset[{-1.5, 0}, {0.5750000000000001, 0.5088336222684826}]}]}, {
        LineBox[{{0.6250000000000001, 0.6054405378697834}, {
         0.6250000000000001, 0.5434141705285715}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.6250000000000001, 0.6054405378697834}], 
          Offset[{-1.5, 0}, {0.6250000000000001, 0.6054405378697834}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.6250000000000001, 0.5434141705285715}], 
          Offset[{-1.5, 0}, {0.6250000000000001, 0.5434141705285715}]}]}, {
        LineBox[{{0.675, 0.5824671808499964}, {0.675, 0.5200840810383813}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.675, 0.5824671808499964}], 
          Offset[{-1.5, 0}, {0.675, 0.5824671808499964}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.675, 0.5200840810383813}], 
          Offset[{-1.5, 0}, {0.675, 0.5200840810383813}]}]}, {
        LineBox[{{0.7250000000000001, 0.6202025505793087}, {
         0.7250000000000001, 0.5725658371171989}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.7250000000000001, 0.6202025505793087}], 
          Offset[{-1.5, 0}, {0.7250000000000001, 0.6202025505793087}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.7250000000000001, 0.5725658371171989}], 
          Offset[{-1.5, 0}, {0.7250000000000001, 0.5725658371171989}]}]}, {
        LineBox[{{0.775, 0.614067410550565}, {0.775, 0.5736862537486755}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.775, 0.614067410550565}], 
          Offset[{-1.5, 0}, {0.775, 0.614067410550565}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.775, 0.5736862537486755}], 
          Offset[{-1.5, 0}, {0.775, 0.5736862537486755}]}]}, {
        LineBox[{{0.8250000000000001, 0.6727763790132901}, {
         0.8250000000000001, 0.6010505986121084}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.8250000000000001, 0.6727763790132901}], 
          Offset[{-1.5, 0}, {0.8250000000000001, 0.6727763790132901}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.8250000000000001, 0.6010505986121084}], 
          Offset[{-1.5, 0}, {0.8250000000000001, 0.6010505986121084}]}]}, {
        LineBox[{{0.8750000000000001, 0.6788388373291875}, {
         0.8750000000000001, 0.5947110857888628}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.8750000000000001, 0.6788388373291875}], 
          Offset[{-1.5, 0}, {0.8750000000000001, 0.6788388373291875}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.8750000000000001, 0.5947110857888628}], 
          Offset[{-1.5, 0}, {0.8750000000000001, 0.5947110857888628}]}]}, {
        LineBox[{{0.925, 0.7412640659887906}, {0.925, 0.6835227918715214}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.925, 0.7412640659887906}], 
          Offset[{-1.5, 0}, {0.925, 0.7412640659887906}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.925, 0.6835227918715214}], 
          Offset[{-1.5, 0}, {0.925, 0.6835227918715214}]}]}, {
        LineBox[{{0.9750000000000001, 0.7502044213548891}, {
         0.9750000000000001, 0.6951791017706024}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.9750000000000001, 0.7502044213548891}], 
          Offset[{-1.5, 0}, {0.9750000000000001, 0.7502044213548891}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.9750000000000001, 0.6951791017706024}], 
          Offset[{-1.5, 0}, {0.9750000000000001, 0.6951791017706024}]}]}, {
        LineBox[{{1.025, 0.7462152122348166}, {1.025, 0.7010034698035731}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.025, 0.7462152122348166}], 
          Offset[{-1.5, 0}, {1.025, 0.7462152122348166}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.025, 0.7010034698035731}], 
          Offset[{-1.5, 0}, {1.025, 0.7010034698035731}]}]}, {
        LineBox[{{1.075, 0.7628902722955111}, {1.075, 0.7229622280354004}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.075, 0.7628902722955111}], 
          Offset[{-1.5, 0}, {1.075, 0.7628902722955111}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.075, 0.7229622280354004}], 
          Offset[{-1.5, 0}, {1.075, 0.7229622280354004}]}]}, {
        LineBox[{{1.125, 0.7265504741649271}, {1.125, 0.6724117854492901}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.125, 0.7265504741649271}], 
          Offset[{-1.5, 0}, {1.125, 0.7265504741649271}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.125, 0.6724117854492901}], 
          Offset[{-1.5, 0}, {1.125, 0.6724117854492901}]}]}, {
        LineBox[{{1.175, 0.7526198292621457}, {1.175, 0.6825944149670794}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.175, 0.7526198292621457}], 
          Offset[{-1.5, 0}, {1.175, 0.7526198292621457}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.175, 0.6825944149670794}], 
          Offset[{-1.5, 0}, {1.175, 0.6825944149670794}]}]}, {
        LineBox[{{1.225, 0.7589463434659394}, {1.225, 0.7103434715432295}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.225, 0.7589463434659394}], 
          Offset[{-1.5, 0}, {1.225, 0.7589463434659394}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.225, 0.7103434715432295}], 
          Offset[{-1.5, 0}, {1.225, 0.7103434715432295}]}]}, {
        LineBox[{{1.275, 0.7499556373830241}, {1.275, 0.6950013059709788}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.275, 0.7499556373830241}], 
          Offset[{-1.5, 0}, {1.275, 0.7499556373830241}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.275, 0.6950013059709788}], 
          Offset[{-1.5, 0}, {1.275, 0.6950013059709788}]}]}, {
        LineBox[{{1.325, 0.7706740163721432}, {1.325, 0.7136835122926938}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.325, 0.7706740163721432}], 
          Offset[{-1.5, 0}, {1.325, 0.7706740163721432}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.325, 0.7136835122926938}], 
          Offset[{-1.5, 0}, {1.325, 0.7136835122926938}]}]}, {
        LineBox[{{1.375, 0.7282506539491211}, {1.375, 0.6589125186179265}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.375, 0.7282506539491211}], 
          Offset[{-1.5, 0}, {1.375, 0.7282506539491211}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.375, 0.6589125186179265}], 
          Offset[{-1.5, 0}, {1.375, 0.6589125186179265}]}]}, {
        LineBox[{{1.425, 0.6875759954993453}, {1.425, 0.6393545349991733}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.425, 0.6875759954993453}], 
          Offset[{-1.5, 0}, {1.425, 0.6875759954993453}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.425, 0.6393545349991733}], 
          Offset[{-1.5, 0}, {1.425, 0.6393545349991733}]}]}, {
        LineBox[{{1.475, 0.6601790430504278}, {1.475, 0.6205383126133922}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.475, 0.6601790430504278}], 
          Offset[{-1.5, 0}, {1.475, 0.6601790430504278}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.475, 0.6205383126133922}], 
          Offset[{-1.5, 0}, {1.475, 0.6205383126133922}]}]}, {
        LineBox[{{1.525, 0.6749726883193142}, {1.525, 0.6434291035876644}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.525, 0.6749726883193142}], 
          Offset[{-1.5, 0}, {1.525, 0.6749726883193142}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.525, 0.6434291035876644}], 
          Offset[{-1.5, 0}, {1.525, 
           0.6434291035876644}]}]}}}, {}}, {}, {}, {}, {}}, {{{}, {}, 
     TagBox[
      {RGBColor[0.368417, 0.506779, 0.709798], AbsoluteThickness[1.6], 
       Opacity[1.], LineBox[CompressedData["
1:eJwV13k8VN8bB3CUMK0U0SIkFX5pFRUfSUoUWoREiOQ7IUtJKQlJthJ9LYki
+tJmrZSQolKINtkz15LM3DvDEPE7/TWv92vuee55nnvuOc9VdvLc7SImIiIy
U1RE5O/vsKnHDQvPQ/ppPL5lTmY4wg4vXVarpo+g6aWjbQmX8H6gyz1KbRfa
XwyvVwiPAC9/SyRbzR5lbkLDRPdIBMvxF9ipeSAt4K1F99xYvKvawdmjdhb+
Oy03XGiJg2faiTfmatHwd2GLrXNPRnlkZMlOtVT0L55pAKNMiE/xluh1f4Ak
sW25G77kweScY2ihVTHElU2efwh6iuJTLi2Z9aXoCPbzPDlRhm+2/2h5n3yJ
/CZdp2OsV5DeFuVablAFI8Eiq2/V1ZjV6JK3/sA7cFnL7uTX1GCxEvtuqFMt
4qQttyta10Gn5di7zVfrUWbeP66r/BHlv4PMGpMbsOiN/qNGiUa4vaiuLg3+
hEFrJ/+Qyk9IdM6aJ3voC4ytcTjY4wv+Z90xNO7yDdXynDWRK7+hlW/+wcDk
O4zvQUa1uglMm8JKuX0tuPIuq+WyTzNicwKO7N/fBr2lozEZEq1Qmym50z+5
HeeOyH7/ebwNRV5BOdE3O/C8qKxnrl87GpfESVhe7URRYaFh9IIOqF5oWHYw
8QcUM6N8Gqs7oGvRtvZmchdKd5pqurh1osUrVD8qkgPXPq5YoKATebo2019d
oTAj2+rAzeAfkLOq+pYd2o3+6Ph14uM/gE6RKxW+PWjYMd9V3aMLiXJu09X8
e6G42tOkuaULwalHL65z78PeZx9l8jZxcOPDv6+jvX6iMOFAp04iB4EecbyF
3v342KRWWdDLwU/HZfI2Tr/weYqJZbwGhct/+ia3ug6gf6rsO7mjFLYfv1b9
n/sArBeYTOklnszRizzpMQDV+xr5T90pnK2JnS19YgCCpvlOdmwKXsnaKkah
A5jBDpNN9KRgpRuM/24PQD4g4pvQj4KKn0LAifYBROQ2zjQNpvC0fxt3hi0X
KSvr5XYkUtCOTomoPshFWqFpzCBxnha9JNiRC9s0ufNpSRTueifZDbpxoeNY
XidIpvDvcP+b7ye58Pjponw9lcKJyVczsuO5YH/6GlNxm8KaBc02hvVcGP+c
6Ci4R+H+85WDo41czCjYnGB+n4K6Q2hs4VcuKlLGKnuJVW6tqFrWzoWS4+Sr
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
4P90Q6bk
        "]]},
      Annotation[#, "Charting`Private`Tag$122945#1"]& ], 
     TagBox[
      {RGBColor[0.880722, 0.611041, 0.142051], AbsoluteThickness[1.6], 
       Opacity[1.], LineBox[CompressedData["
1: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
+gV3vfTVYOD/qkBNcg==
        "]]},
      Annotation[#, "Charting`Private`Tag$122945#2"]& ], 
     TagBox[
      {RGBColor[0.560181, 0.691569, 0.194885], AbsoluteThickness[1.6], 
       Opacity[1.], LineBox[CompressedData["
1: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
HB8XQuiXL/K2goH/AUeBv0c=
        "]]},
      Annotation[#, "Charting`Private`Tag$122945#2"]& ], 
     TagBox[
      {RGBColor[0.922526, 0.385626, 0.209179], AbsoluteThickness[1.6], 
       Opacity[1.], LineBox[CompressedData["
1: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
128K
        "]]},
      Annotation[#, "Charting`Private`Tag$122945#2"]& ], 
     TagBox[
      {RGBColor[0.528488, 0.470624, 0.701351], AbsoluteThickness[1.6], 
       Opacity[1.], LineBox[CompressedData["
1:eJwV13k8VPsbB3AtSlIkiSxZIolyhZL4CFelUveKSkQISRJCFBKirFEp4rZK
UiKSREqWLKVIKmsznBlmDGbOaFG/7++v8X4dw/k+59mOqtvRfw9OFxERiZ8m
IvL/z8mtftd2HnU1u1VVcP3/n3Eey7XeappB5Q9PJlPLDC1chk+Spi3enUo7
s1TbFrwSy0Rfzf1YO5B+Nk13P6JlJxSdNP3QGmnWn2fgh6Z6G6adZgRujQdm
jFhE4Oh/wY07NJOhue2Uva9LMmoSE59t18yBvs3pgcbLORCdFTCb5fMQAcbn
Dw3qFmFL5IHYUocnqHkx98fKveV4cuJg9+22Kmi/UErjW7xAl+Ph1QEhr/Dx
qoXZwOtaLNiU5FljXo+odzKHQ8UbIdV+sHjtviYUqZqa8ktboK7imx/r9hbD
qn9paq9ow7ruI00bL7Th/aIo52M7P6DmR9S29qwPcHQsaEu51QHv6oaGqugO
HHVXT1vZ0okr7nlLFrl2QmF64nIxZhd09/TTvw924clrzNqn+hU9Eztazbd8
QSXvoGi4Tg/Ge+X1ZO278bW4Uipcuw+pBWFeu3f34q16hOGYXj80JcW2h2b1
QcA8t/+J4gDK/KMKknP78Z7R/XbHgm9o10if/c+FAUQuY+h8Z33DsjMftJyv
fMNe2b92Pa9jwHhnr0FuFgPZifWtM1OZ6PaPNUtKZCJBxoX7ecMgio33znud
NoiHkYr8xsFByDrUd92NHUKprytPPGgIGBBJexlEwVDhzKJdnCFIRY4rvwul
YJ95757J6BAGFBj3u09SCN6ewVMdG0KMfX3DZAyFNYb1SWz+EN40JImsvkih
2s51tu+vITg8XOKfVUrhhuPJ16vnUvA9abAjiKbQox7JLF9O4Yqs9zzNUBZa
cw24r50olCvu3MoNZ+EN3f+X6X4Kn9TWJZRFsmCyZIZ1iQsFudViopvOsvAk
ekZvlhuFS5vu/vK6xIImo+ztfm8KGaHUcP5jFjLiVM4VBFJI/uz9RneMBTmX
g/tcEig86NspRvNZSDV/7l50jkLL4DrrqkkWZLy+rhVJpCAxIfbSVoQN0zvf
LLKTKZyfm//0qCQb+w9a9r1OpxC/gXX3kS4bnnYaS3qvUYjOOXTW0IeNe6su
/6f1iILFPs8RWz82sMOl7XAxhRly7v94B7Cx94VxemEJhZg0J4WsMDa+LU5o
1CmjEBez46HIeTZ2Rtn/kn9GIcHHsLOpgA053aN7H9ZSSDWattyNwwZ7x4fx
2o8Udk5MnQ8fY+Phz+9TXZ0UFhT94GUI2Pgx+/FFzicKF1bwK+qn2HhU4Ooj
9YVCuuKQre78YSxxVLpt1UviNb0leHLVMFTHKCuvIQrXWjPrkv2HYbO21SWD
PBfFp+YzLgYNQ7wkMi1YSCH7JoWs0GHM0Szfu3vy/z+ve5oXNYwbS1wKZX6Q
56f2qeBF6jAKer/vj5iicDF4cdp40TAs17zunDeTxPVAdcvk42G4qph7dRFn
bPUS/1M+DGZn3/mboiykqzw5M7dmGKf2W2asmc1C2huH4GVtw/jR75VrIc5C
kvKlfQ5jwyj71ZysKMWCxByzTCfBMEqjy73aiBMnmO1u34exTvRWe8wCFs43
GNoenTYCMcrYZ0iahYSADvP4BSNwU8iLzlrEQmydjGbFXyOI+hizr3oJC6f8
0nlKASMoLrL9V6DOgs3Lv7p7jo9gwDY2OnAZyRvZd425J0bg/aE0iEf8+LnE
TdXTI/DqZ+UMarDAloiz10gdAfMUd07tchb2FIRW6DwYAaVzydByJcnLP7J5
nEcjULIsjS4k5v9bmv6glFynwtJkdVhI+THmq/d8BLn6IxMM4roth5caNI/A
L166OWAVCwaUc4wJewRJ6ifr//2Lhekbfvn/4ozgzuJPuvnE71KuOj8fG0G5
aqX9b+LDazuN8H0EXCtF9i19Fm7E7WRZiHHAD9yk8W0NC/6fuR0zJDj4bMW5
vNqABbNVSS9rJTl45a7SHEbc1dGYZb2YA+5mwxPzDFmQ0rC0tdHkIFrLflDd
iIWe0P71c7U5qHPMPehJfL85cnmzLgcp88/dySPeFFQpYmvIQXGj7RHNtSxE
vDIs+ceKg/7K6ZKL1rGwbXF7rvRmDhSzK7O2E8sfDkj8sJUD06Pr2DHEj6Uf
HrS3I/c3ca55lHj4gJbcXjcOqmxM8sqMWXD0/bLysCcH/ipl6izihuBknPLh
oMJQU3vJehZun+d7Xg8gDhDvCCGWuZQXVhLMwam0tBO3iKP/c0x+HcbBnp41
d98Su5S+KGVFc/AxfOKmqgnpQ9WBjT/jOIjYo3lsM/GGN5rd885zUBae23CE
WL43caZ+OgeuFumyj4njSYpYXeYgYJ7mvA5iemJ8pUMWiaff6mQ+8QexvXZh
NzmY3d+1evUGFiwWSngl5nEw+OziThviIqXqsJwCDsxrpn66EytrBSQXPeTA
V1tF/yRxkr7GjZclHCyNmztxgfjXhk+l7U84uFDeanaX2GfT+cbBZxzU/gxd
VEn86R+z7slqDgp75UNaiTc5jfHEazkItqlx7yUu87w1U6mBg/uhkV+4xMuO
7ZZb3cxB2JRHzy/iC+HiOhvfcdD3Mtp3jikL0+Kew66dg6E57FgZYv9Uf7uD
nzjo8rmvrUzcc1XdK+QrB+EdXxw1ibfd/hiW0MeBRdo5WV3iZw8TkrMYHJw1
bXLWJ9au2HCjkOKgoa1Iz4g4s3a0tHqEg/ZrtinriGe9vdHYxuNA3Kb8hDHx
8S777m98DpI7p/H+f53xTWxMMMlBzH8Y///3/+U+myk2xYHVnrioNcQvJv3k
lkzjIn3u8NVVxKtnqOnoiHLRo3JmoxZxzrwOmM3hwm+PR5AKsYRcvN3OeVzc
br61ZjFxmJqJl9sCLvTGHSMliFk63LCgRVxsy7y2W4R4z9rryXHyXHCpM5Xj
JF51G3fdyFTiYtYhjQffiA22zS67p8rF08krOh+IbzpUNFZqcHHpw/e1NcTS
B450t67g4kOq87tC4qjDKmN9ulxEqPcIMomdo+LkRI24kHHLonyIm88Z6yxe
z0VYzdyyf4jXXxzBCjMuKp1FFqwlXnzvX6/t1lzIPeo/OkXyLe6xaLiLDRc5
M0SDeoj5VeXJx2y5sH4jP6uKuO2DctlFBy5Ux+PbQ4nPT7Fn9nhy8XB6gVI3
qYfNxzIa7vmQ+42zCColnsk0TQzx4+LX7VUJicQRzakLFwRzIbbXh2tE7J9l
pGYVy4W0wDr/JKlHXck+plQCF39X7RHYELOjE/K7E7ko60gTkSN29/mqF5LB
xUQ1tesBqW8H42jcu8nF/BMbJ5tIv1hYuHJGSB4X5+/cNE8lfqfSUWdZwIWV
vfQWO+ItYlq23cVcRLkmXe0g/WZDZ4uT1Esu6gbsLJtIv1I7Lh8W3MdFiT27
Poz0u17qpaklgwvP+fVLVxJnO/lOk6LI84srMf5M+uMiq+r4/FEuimQ3PTYg
Flt48PLX31wMBRg3fNZjgVtU9NhCaRTcXbvOD+uyULDMMVRSdRSBRzUWxRN7
Z87Y8HXZKNSv7XZXJ+6PdHh1XGcU7JCI7Q6kn7fb/mq7azKK+Z8tnAu1WagY
2TQ633EUtaZyKSpkXhglZ59rcB5FlXFXS4EmC8WrxzSiD4zCL6at15A4P+Cq
k8B7FOUBCyKsybzJnBxp/BIyin0Fp+/uJfMqeOaFW3cvjpK1rfLLpqUsrFH8
uteibRQ6xddE/pZl4cFzPcHP9lFYOaz4fY/MP22X2NTST6OIeNbaLkmsdmNV
vVbfKI7Yrpv/cSHJT63TBpKjo7jrY/dkF5mnk/Lps/1m8fD7o5q0ggQLHzXW
DaxfxsPiaIeQFhFSj22+luaaPNSmutf8/kNh/NT1W39r8bDuclH5KmLJj+Je
O3V4GNu+vegc2Q82x3UPHzTgwephZLM+2R8qBqMFqVY8GNi8n2Y1QSE3r0Vs
yIOHnCX2L30ZZF+zm+4z4slDz4mJvUHfKFT+MWoa8+ahi9uZHzZA9sPd/yX9
8uUhMUcQeKaPgrRYoLT0cR7MivQrY7+SfctbTtE0locZtj2B29speK9wX51+
m4dV+yXtR15SUBZPp47n8dBx5oB8bw2FD+yX1/fk81CWUNf07gUFs/tqMsqF
PEjHr/9VVEVh4eqBybuPeVBU+HnRo4JClcGBl1WvyPlvNvzJJPufjLmLPbuf
B/0Yb0fjXAo1DvvCNyqPIVm6fO7REAp1FxY1bFMZw4LFUtYzgyk0t76V2aM2
hlyXIudMsnd/srZ64Kc5Bv4D/eXPj1HgGen2Z60aA5e90eD7YXK/i/9Y02Zj
kF7W+cLElUJY5w3pApcxKJ3Plx/dRPbwPex8metjkDlsWWUgQ/btM9adpgrj
WPVL6+KF/CHEe4r9mJY+Dj7T7XyJ0RCeKx34w5aZQOc5k7suxYN4+jtuhnby
BMRWZj+aXDOI1hJLdtICPm5bW90vK2TitYpnXeIFPnk+LSufrWFCpbdN3i+D
jy/CZ3VS+kyEXTM9suMSH7uiZrh46TGht2SRjPRVPvi1M1MW6zKRvbD2wOXr
fEweGVKJ0WQiaJba1PUiPnzppKIUeSaWjXSvedLKh8lTt+5TIkxE3ttyNvMd
HytCfrfSvxn47F36+cR7PtRS9vz0n2IglZl4esNHPiSXbJQ49IOBXz0mb2u6
+UiYTlt78xlob7vi0zzCh+L0fYxbFAMxT+yv94sLMOyeraLxngG9tq3xwxIC
cBKtle6/Y+ALe+NRwXwBdH53dRm8ZUBfeZXpnIUCcPvvXdvazEBvzKwuPQUB
/Dgfs5PJ+9b6f59IRa0UQHKp6KDvMwZ4I3JRytsE8Ghtdc+5Q97DZkl6admS
/zca0Oh2m4FNKqK2+jsFOLuscsuKWwzk2I0pWO8S4O6SuXcqrzOwtaLxyREn
AXYoX1OZymbgztmw0UpfAfQUkp8NpTPgpPZ1/74kAeb3eH4KPcPAA/+WaxYp
Auyrrjt2KZqBadVVX1ekCeA+WWdYdpp8f991x8kMAYxMpm/+FUnuL8PT4WK2
AM/+XtFz4ySJx+yx7W8LBGj8uEzRKZiBj/YDiWWFAmRMzb9y7TgDK259aLr2
UACKfdenP4iBVvOyLb4lAnzVvinrH8iAXFj433OeCUCninbn+zNwf0TU1PKN
ACedRM+kHWbg93phuHazAH+mBaZ892HgnwSqYkGrAFm75RU9iGmNpnV9bQIs
/ahZY36IAXOXVINTXQLMPGIcL+fFwIXC04EeXwRQtHVgZHgywPwZULy1W4BB
tkjnQuJzmfZ6S/oFKOmxPi9/8P/Pe4nOE0qAH0f6IqzcGdBUkTicwybxWlvQ
0+HGwAm/qfzYEQFuv6sYPkSsPLdv+S6eAIkuqvJXDzDgv7fN02RcANHCdTAi
fpX38rYaX4CYk4uUO1wZ8La6rT4mFODGiUcLFIgrLlxy+/RdgPiTpjovXRiY
13/2evVPAfYXas31JS4+5bM0+Y8AA3H1qg37GfhZtlph5WwaN76unHnDmYFV
2fRrsTk05Pi/P7sSu55+7j8oTmMgX/2YGnHt1q111+fT6MxPGSx0IvHSkz4W
KUWT9/JjTSHEWrJdCs7SNOg5n8OsiBP7PI/JydLQuRRjNbiPgarXuor0YhqH
aV+PZ8S8e/y6D/I0PJu0HNOJ1VKfHXukQCP4Z7KWH/Gu49GKKUo0drFD3m8l
jnPcUu+7lEbVieeOOsTlkAqwUaUhLm5SK0nMXtapqKVO425YywLakQFF8Zx6
UQ0a7dp21r3EtqMeAd80aSz9UeDRRBzVvlKpRovG7C1Pj1YQFz8dr8/RppHw
3dnnPjEj52nASR0a9Ucjdl8nlo2JUnJcRePqBZH1V4g3H9rUsFaPhkxzk0wG
cZjt/MBF+jTWizey04jvr+lQmlhD/l71QNUF4h657IZ3hjQufpuZcYlY6rdb
4IO1NNInFI9cI7b4tkI50ZjGzAn57XnEQQ28hkMmNLb6jhg9Jr5T+CRwkykN
g2NxurXEny5EKGuAxp2sL2s6icVD/26cvpHG6vn92zjEG5wlgvosaFwLSgqf
ReLjZ/FBucqKRubMrpdqxP8tv0pesGhsjHiuYUH8XuJA0InNNJp0jPI8iGeO
L1+624bEdwg254iNOrmNBttoqEt1LSgh9q4sDZK2pbEwc9q0XuLmOMs3Lf/Q
CN8s5mZOnv/vw+LHC+xoVMtyu44T6/3TtjTBnkZBakDsA+IMBZfjVntJfKdC
zqwg+VUnoqmito+GqOy8r4eJJ5kjb/440TDVOBT0iNipKEzlmSsN5fKH/tYk
f5MvbmzKdKNxeaLi80XiF2FiwcEeNN5eak2liJf9fanpL28a8YwDnMsk/x20
nYMlfWjoceZf5RPHSy5T5RymsUhhae4uUj8jXY+C7x6lcUS5o0qZ1Jtydahq
3DFyfonS3njinbfQ7B5II2Kn70Ga+LFfi+rSEJI/twcLvpD6PTmD1XwxgtRD
u8Sptx7k/Jbr52ZH0UgsuZLrSvrB6ZjzW25E05jO/tojII4TXVX3II78fnr9
Kx3SX1JmB1bXJ9PYHBp0pZn0H+nNtVMtqTTmTB9eGEn6U0b8og3tF2gk/Wpv
MiT9LHNOeXnfJRK/vsSZRb4M3Jg79eh7Dvl+2Nt5n46S82+z5f35j+TnUxnq
PumHeYm5q2bdpJG2UJGci+TnPIsC6TxyXdrqxd+kf5ZJnr218iENzUNY8YP0
38aFCy47V5P4ri11MSH9etsutw73Ghqy62+q74ki/TejZKHPKxohEoXnTpD+
/n6RQ2pwPQ3/hyft3pB58HVxVkLKWxonSnxtbsWTelfQOFnTS8P+70N3Tcn8
CHAKrqjvpzEj3LLwTgYDguz6yZZvNHru87JkLjHwQ8nn+OchGrrydZv/ZDIw
Q+Wh38Qojac/JvZL5ZJ6XGZ8QENEiMHuJWEa90m/vhIrFJsuhF6heUJNIQOH
5r9PGpkhxPb8OUvdHjJQOelTUTJbiNMDtzlFxQy4tWQvtJAUQjPM4XTsUzK/
gkXq9isLscttx5d5DaS+hrc5WagIcUv0iDK/kcyzA1fGNdSEyL6dpNHbRPrT
Vv2lHA0hLv4OSHlF5vOPpR6h4bpCOF8PRV0nA9aN9dqZG4T4UaoVU0bmvb+Z
TE24mRDF5QW9bDYDV0pcd7uYCzE7IspsGYfk37XvZzSthNj9dq3snTEybwJW
dj/eKgTDaDJnkOwTPQopKW2OQvCdVG/vn89EiJ8DX/yEENXrO7w3GTOhaOTR
oBkuROAp3ZITG5h4MXUs2+KUEOZSKQPFYEI8Kckq7LSQ7FGmYuutmcgpqM1g
JQihz7knm23HRB2lb9hwVYgN7yNjHx9lQsZdMji2UghLT7vYA2TfeqqtZHO9
SggVWmHtyUdM7B/XVn7+QghXp/sXckqZuHvauo5fK4S6bbbrj+dMmPx3Staj
RYjNfyrFJd8y4dY9XGbRI0SupKtJ8TiT1M33c/v7hND5WJ1oI2Tivu9sl7AB
Iepu242yfzJB/1SbXTwoxJHAw9OtRAdxbonjbtVRISoX+8rvkRvE6gGvlaZj
QpgqeBT+pTSI9vzjf/ZMCPHBJf3sQrVBKBun5aUKhehUdlrBWzmIVyK54fe/
CzFyz/U3W28Q3g33dzT8JOfLCTDgGg5CIrVCnTElRLzrzvff1w/i0e4G4Z8/
QrhQz3rmmQ/if2Hqe3w=
        "]]},
      Annotation[#, "Charting`Private`Tag$122945#2"]& ]}, {}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->False,
  AxesLabel->{None, None},
  AxesOrigin->{0, 0},
  BaseStyle->(FontSize -> 15),
  DisplayFunction->Identity,
  Frame->True,
  FrameLabel->{
    FormBox["\"x\"", TraditionalForm], 
    FormBox["\"f(x)\"", TraditionalForm]},
  FrameStyle->GrayLevel[0],
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{0, 1.5}, {0, 0.8}},
  PlotRangeClipping->True,
  PlotRangePadding->{{0, 0}, {0, 0}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.801926934462536*^9, {3.801926965660048*^9, 3.8019269717502623`*^9}, 
   3.8019270211011953`*^9},ExpressionUUID->"d666c897-a8e2-491e-8fca-\
a4097d457829"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"bestGA", "=", 
  RowBox[{
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"chi2GA", "[", 
        RowBox[{
         RowBox[{"GAfuncs", "[", 
          RowBox[{"[", "i", "]"}], "]"}], ",", "data"}], "]"}], ",", "i"}], 
      "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"i", ",", "1", ",", "samples"}], "}"}]}], "]"}], "//", 
   "Sort"}]}]], "Input",
 CellChangeTimes->{{3.801927025851224*^9, 
  3.801927077835895*^9}},ExpressionUUID->"3a333a7d-2ee1-4c50-b60b-\
a4a88f7a8963"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"30.602403725537933`", ",", "1"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"39.698192858584434`", ",", "3"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"67.64054426802325`", ",", "2"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"230.95761444037618`", ",", "4"}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.8019270324231043`*^9, {3.801927072479381*^9, 
   3.801927078254173*^9}},ExpressionUUID->"e8c0256d-19f6-485a-9949-\
dfbc85980267"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"GAfuncs", "[", 
  RowBox[{"[", 
   RowBox[{"bestGA", "[", 
    RowBox[{"[", 
     RowBox[{"1", ",", "2"}], "]"}], "]"}], "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.801927089494714*^9, 
  3.801927097095369*^9}},ExpressionUUID->"888ecde5-8ab6-426e-943c-\
47ae0a9fe9c5"],

Cell[BoxData[
 RowBox[{"x", "+", 
  RowBox[{
   SuperscriptBox["x", "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"-", "0.5092015229139539`"}], "+", 
     RowBox[{"1.1378791073169827`", " ", 
      SuperscriptBox["0.0693385029774447`", 
       RowBox[{"0.6240465267970023`", " ", "x"}]], " ", 
      SuperscriptBox["x", 
       RowBox[{"0.6240465267970023`", " ", "x"}]]}]}], ")"}]}]}]], "Output",
 CellChangeTimes->{{3.8019270920244193`*^9, 
  3.8019270973191767`*^9}},ExpressionUUID->"9bda335e-995b-48e1-9a95-\
26a18fa3a567"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"fGA", "[", "x_", "]"}], ":=", 
  RowBox[{"x", "+", 
   RowBox[{
    SuperscriptBox["x", "2"], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", "0.5092015229139539`"}], "+", 
      RowBox[{"1.1378791073169827`", " ", 
       SuperscriptBox["0.0693385029774447`", 
        RowBox[{"0.6240465267970023`", " ", "x"}]], " ", 
       SuperscriptBox["x", 
        RowBox[{"0.6240465267970023`", " ", "x"}]]}]}], ")"}]}]}]}]], "Input",
 CellChangeTimes->{{3.7773677707448387`*^9, 3.777367795164913*^9}, 
   3.7784072188726087`*^9, 3.7784086631100054`*^9, 3.7784906809297028`*^9, {
   3.80192460385821*^9, 3.8019246087242513`*^9}, 
   3.8019271047745667`*^9},ExpressionUUID->"2e4aef59-bc98-4e72-b893-\
b6ef33c05fee"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"chi2GA", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"model", "[", 
     RowBox[{"x", ",", "a", ",", "b", ",", "c"}], "]"}], "/.", 
    RowBox[{"fmin", "[", 
     RowBox[{"[", "2", "]"}], "]"}]}], ",", "data"}], 
  "]"}], "\[IndentingNewLine]", 
 RowBox[{"chi2GA", "[", 
  RowBox[{
   RowBox[{"fGA", "[", "x", "]"}], ",", "data"}], "]"}]}], "Input",
 CellChangeTimes->{{3.7635659544948115`*^9, 3.763566006122179*^9}, {
  3.7643132125910797`*^9, 3.7643132916148853`*^9}, {3.7643303892542953`*^9, 
  3.764330423655078*^9}, {3.777291251063096*^9, 3.7772912524557858`*^9}, {
  3.7773678029329243`*^9, 3.7773678056728477`*^9}, {3.801924613074791*^9, 
  3.801924630762788*^9}, {3.8019271091650486`*^9, 
  3.8019271117163763`*^9}},ExpressionUUID->"6bf2f27d-cc5f-4125-969d-\
9010ee69fef8"],

Cell[BoxData["31.802403411224873`"], "Output",
 CellChangeTimes->{{3.763565974220388*^9, 3.763566007246584*^9}, 
   3.76356967273789*^9, {3.764313243995631*^9, 3.7643132930309525`*^9}, {
   3.764330385599566*^9, 3.7643304242043667`*^9}, 3.777290373739727*^9, 
   3.7772907298433228`*^9, {3.7772912469752836`*^9, 3.7772912531903453`*^9}, 
   3.7772913952033653`*^9, 3.77736790129809*^9, 3.7773689539721117`*^9, 
   3.7783948214939117`*^9, 3.7784055582144804`*^9, 3.7784072224305434`*^9, 
   3.778408666403395*^9, 3.7784906871610484`*^9, 3.778580881569974*^9, 
   3.778826486297177*^9, 3.778827151917736*^9, 3.7789105485835752`*^9, 
   3.7827344599323444`*^9, 3.782796263921315*^9, 3.7827969936600337`*^9, 
   3.783252336158966*^9, 
   3.8019271125960264`*^9},ExpressionUUID->"8efa9fdd-4c42-4201-89f0-\
6675451df817"],

Cell[BoxData["30.602403725537933`"], "Output",
 CellChangeTimes->{{3.763565974220388*^9, 3.763566007246584*^9}, 
   3.76356967273789*^9, {3.764313243995631*^9, 3.7643132930309525`*^9}, {
   3.764330385599566*^9, 3.7643304242043667`*^9}, 3.777290373739727*^9, 
   3.7772907298433228`*^9, {3.7772912469752836`*^9, 3.7772912531903453`*^9}, 
   3.7772913952033653`*^9, 3.77736790129809*^9, 3.7773689539721117`*^9, 
   3.7783948214939117`*^9, 3.7784055582144804`*^9, 3.7784072224305434`*^9, 
   3.778408666403395*^9, 3.7784906871610484`*^9, 3.778580881569974*^9, 
   3.778826486297177*^9, 3.778827151917736*^9, 3.7789105485835752`*^9, 
   3.7827344599323444`*^9, 3.782796263921315*^9, 3.7827969936600337`*^9, 
   3.783252336158966*^9, 
   3.8019271125976353`*^9},ExpressionUUID->"e12e26a3-1b62-4cd7-925b-\
2ac776a21b92"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Error", " ", "analysis", " ", "doing", " ", "the", " ", "path", " ", 
    "integral"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"df", "[", 
     RowBox[{"x_", ",", "a1_", ",", "a2_", ",", "a3_"}], "]"}], ":=", 
    RowBox[{"x", 
     RowBox[{"(", 
      RowBox[{"a1", "+", 
       RowBox[{"a2", " ", "x"}], "+", 
       RowBox[{"a3", " ", 
        SuperscriptBox["x", "2"]}]}], ")"}]}]}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"chi2CI", "[", 
     RowBox[{
      RowBox[{"a1_", "?", "NumericQ"}], ",", 
      RowBox[{"a2_", "?", "NumericQ"}], ",", 
      RowBox[{"a3_", "?", "NumericQ"}]}], "]"}], ":=", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", "CI", "}"}], ",", 
      RowBox[{
       RowBox[{"CI", "=", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{
           FractionBox["1", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"Erf", "[", 
              RowBox[{
               FractionBox["1", 
                RowBox[{
                 SqrtBox["2"], " ", 
                 RowBox[{"data", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", "3"}], "]"}], "]"}]}]], 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"df", "[", 
                  RowBox[{
                   RowBox[{"data", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", "1"}], "]"}], "]"}], ",", "a1", ",", 
                   "a2", ",", "a3"}], "]"}], "+", 
                 RowBox[{"fGA", "[", 
                  RowBox[{"data", "[", 
                   RowBox[{"[", 
                    RowBox[{"i", ",", "1"}], "]"}], "]"}], "]"}], "-", 
                 RowBox[{"data", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", "2"}], "]"}], "]"}]}], ")"}]}], "]"}], 
             "+", 
             RowBox[{"Erf", "[", 
              RowBox[{
               FractionBox["1", 
                RowBox[{
                 SqrtBox["2"], " ", 
                 RowBox[{"data", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", "3"}], "]"}], "]"}]}]], 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"df", "[", 
                  RowBox[{
                   RowBox[{"data", "[", 
                    RowBox[{"[", 
                    RowBox[{"i", ",", "1"}], "]"}], "]"}], ",", "a1", ",", 
                   "a2", ",", "a3"}], "]"}], "-", 
                 RowBox[{"fGA", "[", 
                  RowBox[{"data", "[", 
                   RowBox[{"[", 
                    RowBox[{"i", ",", "1"}], "]"}], "]"}], "]"}], "+", 
                 RowBox[{"data", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", "2"}], "]"}], "]"}]}], ")"}]}], "]"}]}], 
            ")"}]}], ",", 
          RowBox[{"{", 
           RowBox[{"i", ",", "1", ",", 
            RowBox[{"Length", "[", "data", "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"Sum", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"CI", "[", 
             RowBox[{"[", "i", "]"}], "]"}], "-", 
            RowBox[{"Erf", "[", 
             FractionBox["1", 
              SqrtBox["2"]], "]"}]}], ")"}], "^", "2"}], ",", 
         RowBox[{"{", 
          RowBox[{"i", ",", "1", ",", 
           RowBox[{"Length", "[", "data", "]"}]}], "}"}]}], "]"}]}]}], 
     "]"}]}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"chi2GApluserr", "[", 
     RowBox[{
      RowBox[{"a1_", "?", "NumericQ"}], ",", 
      RowBox[{"a2_", "?", "NumericQ"}], ",", 
      RowBox[{"a3_", "?", "NumericQ"}]}], "]"}], ":=", 
    RowBox[{"chi2GA", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"fGA", "[", "x", "]"}], "+", 
       RowBox[{"df", "[", 
        RowBox[{"x", ",", "a1", ",", "a2", ",", "a3"}], "]"}]}], ",", 
      "data"}], "]"}]}], "\n", 
   RowBox[{
    RowBox[{"chi2tot", "[", 
     RowBox[{"a1_", ",", "a2_", ",", "a3_"}], "]"}], ":=", 
    RowBox[{
     RowBox[{"chi2CI", "[", 
      RowBox[{"a1", ",", "a2", ",", "a3"}], "]"}], "+", 
     RowBox[{"chi2GApluserr", "[", 
      RowBox[{"a1", ",", "a2", ",", "a3"}], "]"}]}]}]}]}]], "Input",
 CellChangeTimes->{{3.7773680023527517`*^9, 3.7773680307023735`*^9}, {
  3.7773680992030005`*^9, 3.777368429272444*^9}, {3.777368827816651*^9, 
  3.7773688406643686`*^9}, {3.778405547224313*^9, 3.7784055770444813`*^9}, {
  3.7784076687418385`*^9, 3.7784076692539053`*^9}, {3.778910570813989*^9, 
  3.778910576094115*^9}, {3.7789106590759897`*^9, 3.7789106606334596`*^9}, {
  3.782796322263586*^9, 3.7827963394955006`*^9}, {3.783256459252325*^9, 
  3.7832564627026315`*^9}, {3.8019246414757137`*^9, 3.8019246642891607`*^9}, {
  3.801925568450203*^9, 3.8019255720057387`*^9}, {3.8019256050206485`*^9, 
  3.8019256055935955`*^9}, {3.8019256420801497`*^9, 3.801925642345048*^9}, {
  3.80192607266016*^9, 3.8019260833245487`*^9}, {3.801926119987056*^9, 
  3.8019261234106817`*^9}, {3.801926449302365*^9, 
  3.801926449617708*^9}},ExpressionUUID->"c353bf3e-bf8f-4a90-9b3d-\
cd55a079f25e"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"fminerr2", "=", 
  RowBox[{"FindMinimum", "[", 
   RowBox[{
    RowBox[{"chi2tot", "[", 
     RowBox[{"a1", ",", "a2", ",", "0"}], "]"}], ",", 
    RowBox[{"{", 
     RowBox[{"a1", ",", "0.11", ",", "0.111"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"a2", ",", "0.11", ",", "0.111"}], "}"}], ",", 
    RowBox[{"MaxIterations", "\[Rule]", "500"}]}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"fminerr3", "=", 
  RowBox[{"FindMinimum", "[", 
   RowBox[{
    RowBox[{"chi2tot", "[", 
     RowBox[{"a1", ",", "a2", ",", "a3"}], "]"}], ",", 
    RowBox[{"{", 
     RowBox[{"a1", ",", "0.11", ",", "0.111"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"a2", ",", "0.11", ",", "0.111"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"a3", ",", "0.11", ",", "0.111"}], "}"}], ",", 
    RowBox[{"MaxIterations", "\[Rule]", "500"}]}], "]"}]}]}], "Input",
 CellChangeTimes->{{3.777368914772314*^9, 3.7773689149821215`*^9}, 
   3.7783950740640907`*^9, {3.778405604974828*^9, 3.778405605154762*^9}, {
   3.7784057589248867`*^9, 3.7784057652148447`*^9}, {3.7784058306571293`*^9, 
   3.7784058325161476`*^9}, {3.778407244273259*^9, 3.778407251256173*^9}, {
   3.778826511107337*^9, 3.778826537491393*^9}, {3.7827348060923433`*^9, 
   3.782734813412299*^9}, {3.7827348543821754`*^9, 3.7827348605720205`*^9}, {
   3.7827970025803986`*^9, 3.782797004560522*^9}, {3.801925685783187*^9, 
   3.8019256870935583`*^9}},ExpressionUUID->"3d7b6cdb-4784-4b6a-87fd-\
27c37360c232"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"39.423127990849395`", ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"a1", "\[Rule]", "0.03621942801063232`"}], ",", 
     RowBox[{"a2", "\[Rule]", 
      RowBox[{"-", "0.023772688301079366`"}]}]}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.782734818136753*^9, 3.782734861811742*^9, 3.7827963803633423`*^9, 
   3.782796432800906*^9, 3.782797006380213*^9, 3.783252345154118*^9, 
   3.8019256478295374`*^9, 3.801925687651781*^9, 3.801926089033427*^9, 
   3.801926127290807*^9, {3.8019264376099205`*^9, 3.8019264520907087`*^9}, 
   3.801927149096165*^9},ExpressionUUID->"3d533b8c-62d7-4f66-8c28-\
478dc629df75"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"39.061194615673635`", ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"a1", "\[Rule]", "0.05993598516748047`"}], ",", 
     RowBox[{"a2", "\[Rule]", 
      RowBox[{"-", "0.0729728901264369`"}]}], ",", 
     RowBox[{"a3", "\[Rule]", "0.022933095829380547`"}]}], "}"}]}], 
  "}"}]], "Output",
 CellChangeTimes->{
  3.782734818136753*^9, 3.782734861811742*^9, 3.7827963803633423`*^9, 
   3.782796432800906*^9, 3.782797006380213*^9, 3.783252345154118*^9, 
   3.8019256478295374`*^9, 3.801925687651781*^9, 3.801926089033427*^9, 
   3.801926127290807*^9, {3.8019264376099205`*^9, 3.8019264520907087`*^9}, 
   3.801927149461515*^9},ExpressionUUID->"8630bae1-367b-463a-8f8f-\
cf3c3e1712de"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Final", " ", "plot", " ", "with", " ", "errors"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"\[Epsilon]0", "=", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", "1"}], ",", "0", ",", "1"}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"col", "=", 
     RowBox[{"GrayLevel", "[", 
      RowBox[{"0.3", ",", "0.2"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"plot", "=", 
    RowBox[{"Show", "[", 
     RowBox[{
      RowBox[{"ErrorListPlot", "[", 
       RowBox[{"data", ",", 
        RowBox[{"PlotRange", "\[Rule]", "plr"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", "Gray"}]}], "]"}], ",", 
      RowBox[{"Plot", "[", 
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"fGA", "[", "x", "]"}], "+", 
           RowBox[{"\[Epsilon]0", " ", 
            RowBox[{"df", "[", 
             RowBox[{"x", ",", "a1", ",", "a2", ",", "a3"}], "]"}]}]}], "/.", 
          RowBox[{"fminerr3", "[", 
           RowBox[{"[", "2", "]"}], "]"}]}], "//", "Evaluate"}], ",", 
        RowBox[{"{", 
         RowBox[{"x", ",", "0", ",", "1.5"}], "}"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", "plr"}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"col", ",", "Black", ",", "col"}], "}"}]}], ",", 
        RowBox[{"Filling", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"1", "->", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", "3", "}"}], ",", "col"}], "}"}]}], "}"}]}]}], "]"}],
       ",", 
      RowBox[{"Frame", "\[Rule]", "True"}], ",", 
      RowBox[{"Axes", "\[Rule]", "False"}], ",", 
      RowBox[{"FrameLabel", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"\"\<x\>\"", ",", "\"\<f(x)\>\""}], "}"}]}], ",", 
      RowBox[{"FrameStyle", "\[Rule]", "Black"}], ",", 
      RowBox[{"BaseStyle", "\[Rule]", 
       RowBox[{"FontSize", "\[Rule]", "15"}]}], ",", 
      RowBox[{"PlotRange", "\[Rule]", "plr"}]}], "]"}]}]}]}]], "Input",
 CellChangeTimes->{
  3.7635379163237906`*^9, {3.764313306161067*^9, 3.7643133270469923`*^9}, {
   3.764313379153677*^9, 3.7643134168914275`*^9}, {3.764313465023483*^9, 
   3.764313475001771*^9}, {3.7773679490523643`*^9, 3.777367952212802*^9}, {
   3.7773685477325954`*^9, 3.7773686006624107`*^9}, {3.77736864346455*^9, 
   3.777368741352269*^9}, {3.7773690018017*^9, 3.777369055261819*^9}, {
   3.777369132532134*^9, 3.777369132612011*^9}, {3.777369182991953*^9, 
   3.7773691932226067`*^9}, {3.7773692367818427`*^9, 
   3.7773692484559155`*^9}, {3.777369300721883*^9, 3.777369622741661*^9}, 
   3.778233201606267*^9, {3.7784057769645863`*^9, 3.7784057770248795`*^9}, {
   3.7784058419049406`*^9, 3.7784058621251755`*^9}, {3.7788265215073843`*^9, 
   3.7788266062075615`*^9}, {3.7788266537579336`*^9, 3.778826662450323*^9}, {
   3.778827186807453*^9, 3.7788272143500233`*^9}, {3.778828054518855*^9, 
   3.7788280546788063`*^9}, {3.7789105916941195`*^9, 3.778910624753845*^9}, {
   3.778910700444107*^9, 3.778910730373754*^9}, {3.782734895282036*^9, 
   3.7827349031718845`*^9}, {3.7827349369422274`*^9, 3.782734969712227*^9}, {
   3.782735063791979*^9, 3.7827350822417793`*^9}, {3.7827965000511427`*^9, 
   3.7827965003111467`*^9}, 3.7827970149603157`*^9, {3.801925662702399*^9, 
   3.801925792845314*^9}, {3.8019258666691723`*^9, 3.801925923344615*^9}, {
   3.801926093056964*^9, 3.801926105327707*^9}, {3.8019261354890347`*^9, 
   3.8019261420417805`*^9}, {3.8019264675284986`*^9, 
   3.801926480408779*^9}},ExpressionUUID->"a407b71e-4f41-4535-89ae-\
5f2e7f7bb171"],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, 
     {GrayLevel[0.5], PointSize[0.012833333333333334`], AbsoluteThickness[
      1.6], PointBox[CompressedData["
1:eJxTTMoPSmViYGCQB2IQPWsmGNh/LNY5e/zDNHsTYxDYbB/0mclM22a7PQMY
HLBnfnDi6GLbg/bpaSBwzN7vzfm+fMFj9mfPgIH9quKdyzYxnrOHmHfRvvIB
b0H7j7P258DSV+y/ZM7XlYq/as8INu+GvcgaxwR1q1tQ+27b2/8+KMf++g7U
/Hv2S31+ffpfdRdq/gP7LrOrX1hePITKP7K3ue+zxtDsIdS8J/bql9sqtyY+
gtr/1P7H1P2neJY8hJr/3F54P6/fFNHHUPNe2Au+rP3DyfgYat4re7V5s1Jn
JD6BmvfGPv9G5KPShCdQ897aN9Y+8X17+hnUvPf2UqwKlV4Kz+3B2tM+2D+w
vXHsnPpze7C08Ud70XmVrrzHnkPD75P9C0kxB7WkZ1D7P9nn1UibLf72DGr+
Z/t732o4zZpg5n2x9wr7q90tBzPvq33cX6F1b/fDzPtmf93xGNMlQ5h53+z7
H3I0SVs/hZr33T77XXz1xdonUPN+2P9fZlylI/HUHgCwyutO
       "]], {{
        LineBox[{{0.025, 0.056381292841883396`}, {
         0.025, -0.011575533606872437`}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.025, 0.056381292841883396`}], 
          Offset[{-1.5, 0}, {0.025, 0.056381292841883396`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.025, -0.011575533606872437`}], 
          Offset[{-1.5, 0}, {0.025, -0.011575533606872437`}]}]}, {
        LineBox[{{0.07500000000000001, 0.12027304028265791`}, {
         0.07500000000000001, 0.06125066555536916}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.07500000000000001, 0.12027304028265791`}], 
          Offset[{-1.5, 0}, {0.07500000000000001, 0.12027304028265791`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.07500000000000001, 0.06125066555536916}], 
          Offset[{-1.5, 0}, {0.07500000000000001, 0.06125066555536916}]}]}, {
        LineBox[{{0.125, 0.15520139885492715`}, {0.125, 
         0.11418579210604277`}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.125, 0.15520139885492715`}], 
          Offset[{-1.5, 0}, {0.125, 0.15520139885492715`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.125, 0.11418579210604277`}], 
          Offset[{-1.5, 0}, {0.125, 0.11418579210604277`}]}]}, {
        LineBox[{{0.17500000000000002`, 0.1880755989226064}, {
         0.17500000000000002`, 0.15673859620014918`}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.17500000000000002`, 0.1880755989226064}], 
          Offset[{-1.5, 0}, {0.17500000000000002`, 0.1880755989226064}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.17500000000000002`, 0.15673859620014918`}], 
          Offset[{-1.5, 0}, {0.17500000000000002`, 
           0.15673859620014918`}]}]}, {
        LineBox[{{0.225, 0.26583772759649643`}, {0.225, 0.2030159013410508}}],
         LineBox[{
         Offset[{1.5, 0}, {0.225, 0.26583772759649643`}], 
          Offset[{-1.5, 0}, {0.225, 0.26583772759649643`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.225, 0.2030159013410508}], 
          Offset[{-1.5, 0}, {0.225, 0.2030159013410508}]}]}, {
        LineBox[{{0.275, 0.270907178304894}, {0.275, 0.19738683131189672`}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.275, 0.270907178304894}], 
          Offset[{-1.5, 0}, {0.275, 0.270907178304894}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.275, 0.19738683131189672`}], 
          Offset[{-1.5, 0}, {0.275, 0.19738683131189672`}]}]}, {
        LineBox[{{0.32500000000000007`, 0.36951619503544897`}, {
         0.32500000000000007`, 0.29834296739708466`}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.32500000000000007`, 0.36951619503544897`}], 
          Offset[{-1.5, 0}, {0.32500000000000007`, 0.36951619503544897`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.32500000000000007`, 0.29834296739708466`}], 
          Offset[{-1.5, 0}, {0.32500000000000007`, 
           0.29834296739708466`}]}]}, {
        LineBox[{{0.37500000000000006`, 0.43697362002052736`}, {
         0.37500000000000006`, 0.3826252340454049}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.37500000000000006`, 0.43697362002052736`}], 
          Offset[{-1.5, 0}, {0.37500000000000006`, 0.43697362002052736`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.37500000000000006`, 0.3826252340454049}], 
          Offset[{-1.5, 0}, {0.37500000000000006`, 0.3826252340454049}]}]}, {
        LineBox[{{0.42500000000000004`, 0.4699612571850725}, {
         0.42500000000000004`, 0.4337286614032901}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.42500000000000004`, 0.4699612571850725}], 
          Offset[{-1.5, 0}, {0.42500000000000004`, 0.4699612571850725}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.42500000000000004`, 0.4337286614032901}], 
          Offset[{-1.5, 0}, {0.42500000000000004`, 0.4337286614032901}]}]}, {
        LineBox[{{0.47500000000000003`, 0.49274770746595353`}, {
         0.47500000000000003`, 0.42851691671568215`}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.47500000000000003`, 0.49274770746595353`}], 
          Offset[{-1.5, 0}, {0.47500000000000003`, 0.49274770746595353`}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.47500000000000003`, 0.42851691671568215`}], 
          Offset[{-1.5, 0}, {0.47500000000000003`, 
           0.42851691671568215`}]}]}, {
        LineBox[{{0.525, 0.5895099907100962}, {0.525, 0.5296353610606603}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.525, 0.5895099907100962}], 
          Offset[{-1.5, 0}, {0.525, 0.5895099907100962}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.525, 0.5296353610606603}], 
          Offset[{-1.5, 0}, {0.525, 0.5296353610606603}]}]}, {
        LineBox[{{0.5750000000000001, 0.5668973433915876}, {
         0.5750000000000001, 0.5088336222684826}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.5750000000000001, 0.5668973433915876}], 
          Offset[{-1.5, 0}, {0.5750000000000001, 0.5668973433915876}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.5750000000000001, 0.5088336222684826}], 
          Offset[{-1.5, 0}, {0.5750000000000001, 0.5088336222684826}]}]}, {
        LineBox[{{0.6250000000000001, 0.6054405378697834}, {
         0.6250000000000001, 0.5434141705285715}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.6250000000000001, 0.6054405378697834}], 
          Offset[{-1.5, 0}, {0.6250000000000001, 0.6054405378697834}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.6250000000000001, 0.5434141705285715}], 
          Offset[{-1.5, 0}, {0.6250000000000001, 0.5434141705285715}]}]}, {
        LineBox[{{0.675, 0.5824671808499964}, {0.675, 0.5200840810383813}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.675, 0.5824671808499964}], 
          Offset[{-1.5, 0}, {0.675, 0.5824671808499964}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.675, 0.5200840810383813}], 
          Offset[{-1.5, 0}, {0.675, 0.5200840810383813}]}]}, {
        LineBox[{{0.7250000000000001, 0.6202025505793087}, {
         0.7250000000000001, 0.5725658371171989}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.7250000000000001, 0.6202025505793087}], 
          Offset[{-1.5, 0}, {0.7250000000000001, 0.6202025505793087}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.7250000000000001, 0.5725658371171989}], 
          Offset[{-1.5, 0}, {0.7250000000000001, 0.5725658371171989}]}]}, {
        LineBox[{{0.775, 0.614067410550565}, {0.775, 0.5736862537486755}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.775, 0.614067410550565}], 
          Offset[{-1.5, 0}, {0.775, 0.614067410550565}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.775, 0.5736862537486755}], 
          Offset[{-1.5, 0}, {0.775, 0.5736862537486755}]}]}, {
        LineBox[{{0.8250000000000001, 0.6727763790132901}, {
         0.8250000000000001, 0.6010505986121084}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.8250000000000001, 0.6727763790132901}], 
          Offset[{-1.5, 0}, {0.8250000000000001, 0.6727763790132901}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.8250000000000001, 0.6010505986121084}], 
          Offset[{-1.5, 0}, {0.8250000000000001, 0.6010505986121084}]}]}, {
        LineBox[{{0.8750000000000001, 0.6788388373291875}, {
         0.8750000000000001, 0.5947110857888628}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.8750000000000001, 0.6788388373291875}], 
          Offset[{-1.5, 0}, {0.8750000000000001, 0.6788388373291875}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.8750000000000001, 0.5947110857888628}], 
          Offset[{-1.5, 0}, {0.8750000000000001, 0.5947110857888628}]}]}, {
        LineBox[{{0.925, 0.7412640659887906}, {0.925, 0.6835227918715214}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.925, 0.7412640659887906}], 
          Offset[{-1.5, 0}, {0.925, 0.7412640659887906}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.925, 0.6835227918715214}], 
          Offset[{-1.5, 0}, {0.925, 0.6835227918715214}]}]}, {
        LineBox[{{0.9750000000000001, 0.7502044213548891}, {
         0.9750000000000001, 0.6951791017706024}}], 
        LineBox[{
         Offset[{1.5, 0}, {0.9750000000000001, 0.7502044213548891}], 
          Offset[{-1.5, 0}, {0.9750000000000001, 0.7502044213548891}]}], 
        LineBox[{
         Offset[{1.5, 0}, {0.9750000000000001, 0.6951791017706024}], 
          Offset[{-1.5, 0}, {0.9750000000000001, 0.6951791017706024}]}]}, {
        LineBox[{{1.025, 0.7462152122348166}, {1.025, 0.7010034698035731}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.025, 0.7462152122348166}], 
          Offset[{-1.5, 0}, {1.025, 0.7462152122348166}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.025, 0.7010034698035731}], 
          Offset[{-1.5, 0}, {1.025, 0.7010034698035731}]}]}, {
        LineBox[{{1.075, 0.7628902722955111}, {1.075, 0.7229622280354004}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.075, 0.7628902722955111}], 
          Offset[{-1.5, 0}, {1.075, 0.7628902722955111}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.075, 0.7229622280354004}], 
          Offset[{-1.5, 0}, {1.075, 0.7229622280354004}]}]}, {
        LineBox[{{1.125, 0.7265504741649271}, {1.125, 0.6724117854492901}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.125, 0.7265504741649271}], 
          Offset[{-1.5, 0}, {1.125, 0.7265504741649271}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.125, 0.6724117854492901}], 
          Offset[{-1.5, 0}, {1.125, 0.6724117854492901}]}]}, {
        LineBox[{{1.175, 0.7526198292621457}, {1.175, 0.6825944149670794}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.175, 0.7526198292621457}], 
          Offset[{-1.5, 0}, {1.175, 0.7526198292621457}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.175, 0.6825944149670794}], 
          Offset[{-1.5, 0}, {1.175, 0.6825944149670794}]}]}, {
        LineBox[{{1.225, 0.7589463434659394}, {1.225, 0.7103434715432295}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.225, 0.7589463434659394}], 
          Offset[{-1.5, 0}, {1.225, 0.7589463434659394}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.225, 0.7103434715432295}], 
          Offset[{-1.5, 0}, {1.225, 0.7103434715432295}]}]}, {
        LineBox[{{1.275, 0.7499556373830241}, {1.275, 0.6950013059709788}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.275, 0.7499556373830241}], 
          Offset[{-1.5, 0}, {1.275, 0.7499556373830241}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.275, 0.6950013059709788}], 
          Offset[{-1.5, 0}, {1.275, 0.6950013059709788}]}]}, {
        LineBox[{{1.325, 0.7706740163721432}, {1.325, 0.7136835122926938}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.325, 0.7706740163721432}], 
          Offset[{-1.5, 0}, {1.325, 0.7706740163721432}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.325, 0.7136835122926938}], 
          Offset[{-1.5, 0}, {1.325, 0.7136835122926938}]}]}, {
        LineBox[{{1.375, 0.7282506539491211}, {1.375, 0.6589125186179265}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.375, 0.7282506539491211}], 
          Offset[{-1.5, 0}, {1.375, 0.7282506539491211}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.375, 0.6589125186179265}], 
          Offset[{-1.5, 0}, {1.375, 0.6589125186179265}]}]}, {
        LineBox[{{1.425, 0.6875759954993453}, {1.425, 0.6393545349991733}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.425, 0.6875759954993453}], 
          Offset[{-1.5, 0}, {1.425, 0.6875759954993453}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.425, 0.6393545349991733}], 
          Offset[{-1.5, 0}, {1.425, 0.6393545349991733}]}]}, {
        LineBox[{{1.475, 0.6601790430504278}, {1.475, 0.6205383126133922}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.475, 0.6601790430504278}], 
          Offset[{-1.5, 0}, {1.475, 0.6601790430504278}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.475, 0.6205383126133922}], 
          Offset[{-1.5, 0}, {1.475, 0.6205383126133922}]}]}, {
        LineBox[{{1.525, 0.6749726883193142}, {1.525, 0.6434291035876644}}], 
        LineBox[{
         Offset[{1.5, 0}, {1.525, 0.6749726883193142}], 
          Offset[{-1.5, 0}, {1.525, 0.6749726883193142}]}], 
        LineBox[{
         Offset[{1.5, 0}, {1.525, 0.6434291035876644}], 
          Offset[{-1.5, 0}, {1.525, 
           0.6434291035876644}]}]}}}, {}}, {}, {}, {}, {}}, {
    GraphicsComplexBox[CompressedData["
1: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
kT5h1GIeGGBBh/8D91k3Fg==
     "], {{{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, 
       {GrayLevel[0.3], Opacity[0.2], EdgeForm[None], 
        GraphicsGroupBox[PolygonBox[CompressedData["
1:eJwt1mPUXEcAgOH0CxujsZPGNhujadjYtm3baNLGbpw2tm3btu2kz570x3Pe
2Tt39+zZmTtnE9dvU751ULBgwX4gQtD3HmEGXahKQbIQuC84IQhJKEIThh8J
SzjCBz6LiEQiMlGISjR+IjoxiEksYhOHuMQjPglISCISk4SjzKQr1ShEVpJy
jFl0ozqFycYlljKIxpTlZ44zm+7UoAjZucw/DKYJ5UjGCebQg5oUJQdX+Jch
NOV3knOSufSkFsW4zRpG04acXGUZQ2nGU7YxifLcZwN/0IEUnOJvelGbx2zh
L4pzh7WM4S37aMtzdjCFDxwkF9dYzmeG8Ya9BDZEc3nGdr4ymfccIMh8BX3A
Rr4wnnfsD7zdfEd9yS6+MY2PHCIlp5lHb16zhzo8YSsT+ZW7rGMs7XjBTqaS
m+usYDgtqMhDNjGBTqTiDPPpQ11KcI/1jKM9ebjBSkbQkkqk5iwL6Es9fiMv
N1nFSFpRmTScYyH9qE9JfiEt51lEfxpQinyk4wKLGUBDSpOf9GQgI5m4yBIG
0ogyFOAWqxlFa6rwiM38SWdesZvpfOIwwa1Z5sB39MBH98Bf1gi6RE8T0ri/
zuEQn6lPNyazk1eUpBptGcsGHpKXPOQmFzn5jaq0YQzreUAOSlCFwEE1mnXc
Jzu/UplWjGIt98hGPboyiR28pDiVaMlI1nCXrNSlCxPZzguK0ZsZ7OM9FWnB
CFZzhyz0YzYH+UQdFnA8cK76zTrrX2zjOUVZxEmCm++l09nLOyrwN0f4SnPO
EMq9w3UVt8nMJcK7vlij6CkNoX01mp7XH3WWRtID+pHa/OT1BQ2r8zWyHvv/
sO+kUfWshtY/NaJu1WcU4SLhXFuoJwgy7qnnCGM8TffwlvLM5TBfaMYwVnKL
TPRhJvv5QC3mcZRvdGQCW3hKYXowld284XeaMpQV3CQjNenAeDbzhEJ0Zwq7
eE05mjCE5dwgAzVozx9s4jEFKUtjBrOM66SnOu0Yx0YeUYAyNGIQ/3KNdOSn
NA0ZyD9cJS1pSE0qUpKC5CTjZ5KShMQkIiEJiE884hKH2MQiJjGIHtgDgX0S
WGuiBPZAYJ8E1jro+/+CfJSiAQNYyhXC8x8H/AOt
          "]]]}, {}, {}, {}, {}, {}, {}, {}}, {{}, {}, {}, 
       TagBox[
        {GrayLevel[0.3], AbsoluteThickness[1.6], Opacity[0.2], 
         LineBox[CompressedData["
1:eJwl1FOYGEYUgNGN7cbcuG0a2zY3TdI27CaNbdu2bbsNGqdxY9u2jbNfHs78
D3fmbb4bGNwqqGWogICAMI6QHmYmnfiNImQjdMgdwhKO8EQgIpGITBSiEo3o
xCAmsYhNHH4gLvGITwISkojEJCEpyUhOCgJJyRFm0ZnfKUp2UnGU2XThD4qR
g4ssZwANqURqjjGHrtSkODm5xAoG0ojKpOE4c+lGLUqQi8usZBCNqUJaTjCP
7tSmJLf4m5G0IjdXWMVgmvCE7UwmiHtsYiztSMdJ5tODOjxiKxMpxW3+YRRv
2EdrnrGTqbznIHm4ymo+MYTX7CXkQzSVp+zgC1N4xwFCm1fV+2zmM+N4y/6Q
5+bt9QW7+cp0PnCI9JxiAT15xR7q8phtTKI0d9jAaNrwnF1MIy/XWMNQmvEr
D/iX8XTgR06zkF7Uowx32cgY2pKP66xlGM2pxk+cYRG9+ZOy5OcG6xhOC6rz
M2dZTB+CKUcBMnCOJfSlPuUpyC+cZyn9aEAFCpGRTGQmCxdYRn/+oiKFucl6
RtCSGjxkCxPoyEv+YwYf+T/g+x7Iqt8AhHOBQg==
          "]]},
        Annotation[#, "Charting`Private`Tag$125740#1"]& ], 
       TagBox[
        {GrayLevel[0], AbsoluteThickness[1.6], Opacity[1.], 
         LineBox[CompressedData["
1:eJwl0WWUFkQAhtFvly2WFKRzRRRpkO6UUERCWrpr6e5WulFaUUJBOlU6lEa6
u7sbLocfd57zzpl/E9UwunLboEAgEOEI4SBz6EUdSpGHUMIID3r/NiaRxCI2
cYhLPOLzAQlIyIckIjFJSEoykpOClKQiNWlISxQfkY6POcSv9OY7SpOX9Bzm
N/pQly/Ix3mW8gMtqcwnHGEufalHGfJzgWUMpxVV+JSjzKMf9SlLAS6ynBG0
pioZOMZ8+tOActzkLybQiYJcYgUjacO33GUDU+jGZxxnAQNoyEO2MI3y3OJv
JtKZQlxmJaN498GP2cYMqnGPjfzIG/bSnWf8y2yCgwOBA5qRE/xOiLuB+pJd
RNiN9BFbCbOna0D3aaR+qbf5h1B7kr5mDzHtLvqUHYTbszRI92thrrCK0bxi
N9E8YTszqc59NvETPXjOf/xMJk7yB4NozFfcYT2T6UoRrrKaMbSjBpk5xUIG
04QKFOUaaxhLe2qShdMsYghN+ZpiXGct4+hALbJyhj8ZSjMqUpxsnGUxw2jO
N5QgOznIyefk4hxL+J4WVKIkN1jHeDpSmwdsZio9ecFOfiGGP/hfY2lufQvS
3YKN
          "]]},
        Annotation[#, "Charting`Private`Tag$125740#2"]& ], 
       TagBox[
        {GrayLevel[0.3], AbsoluteThickness[1.6], Opacity[0.2], 
         LineBox[CompressedData["
1:eJwV0lWAVVUYgNFLCYwzwhDSMXRKp7QgIJ2CgsDQAjNIl3RJSEt3twqIlITS
ISnd0o00CKz7sM63zz776ew/IjK6dlSMQCAQ4hEaMxA4zwoG0ZyqlCKMj0hA
QsJJRGKSkJSPSUZyUpCSVKQmDWlJR3oiyEBGMpGZLGQlG9nJQU5ycYGVDKYF
1ShNbi6yiiG0pDpluMNGxvEdX/EJl1jNUFpRg7LcZRPj6cTX5OEyPzOM1tTk
CX8yjV6U4x6bmUBnGpGXK/zCcNpQi6f8xXR68xn32cJEuvCOQyykMS/Zw2z6
kY+r/MoPtOV/DjCf2jxjJzOIFysQOKl9iGl9RJfwofUZLc8D/gjetb1JGlf/
Cd61dtWA/h2cAV2kIXo6OAP6jb5ib3BOvM/R+HoqOCfaX2PrMQ3XZRqqZzU/
/7KGEXxg/4R+y1sOsoA6PGcXM/meWM4e1aVU4CFb+YluxPD9sC6mCa/Zx1wG
UIBrrGUk7ajLC3Yzi758ziO2MZnuNKUg11nHKNpTj4o8ZjtT6EEzCnGD3xhN
B+pTicLcZD0/EsWXVKYIt/idMUTTgC8oSjGK8ykluM0GxtKRhlThP3YwlZ5E
8ob9zGMgcfyz47qcMOtzmlRL6ntZvYQO
          "]]},
        Annotation[#, "Charting`Private`Tag$125740#3"]& ]}}], {}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->False,
  AxesLabel->{None, None},
  AxesOrigin->{0, 0},
  BaseStyle->(FontSize -> 15),
  DisplayFunction->Identity,
  Frame->True,
  FrameLabel->{
    FormBox["\"x\"", TraditionalForm], 
    FormBox["\"f(x)\"", TraditionalForm]},
  FrameStyle->GrayLevel[0],
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{0, 1.5}, {0, 0.8}},
  PlotRangeClipping->True,
  PlotRangePadding->{{0, 0}, {0, 0}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{{3.8019256969979796`*^9, 3.801925714775713*^9}, {
   3.801925745723984*^9, 3.801925765366178*^9}, {3.801925880662243*^9, 
   3.80192592389287*^9}, {3.8019261071272836`*^9, 3.801926144230516*^9}, {
   3.8019264405167885`*^9, 3.8019264810992594`*^9}, 
   3.8019271517325907`*^9},ExpressionUUID->"7f667a7a-1b85-4381-ad2b-\
b5c7d884e203"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"Export", "[", 
  RowBox[{"\"\<plot.pdf\>\"", ",", "plot", ",", 
   RowBox[{"ImageSize", "\[Rule]", "500"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.778826610787349*^9, 3.7788266167223983`*^9}, {
  3.801927156851202*^9, 
  3.8019271613283978`*^9}},ExpressionUUID->"41deb4da-8fcc-4aa1-9efb-\
9951274b9662"],

Cell[BoxData[
 RowBox[{"(*", " ", "end", " ", "*)"}]], "Input",
 CellChangeTimes->{{3.7643129929411526`*^9, 
  3.7643129948112364`*^9}},ExpressionUUID->"d176ce6a-a1a3-4c61-ac6d-\
f48fe45c8d42"]
}, Closed]]
},
CellGrouping->Manual,
WindowSize->{1536, 781},
WindowMargins->{{-8, Automatic}, {Automatic, -8}},
FrontEndVersion->"11.2 for Microsoft Windows (64-bit) (September 10, 2017)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[558, 20, 158, 3, 43, "Input",ExpressionUUID->"4e668159-fe90-4dbf-b5bf-e72713c8c9d7"],
Cell[CellGroupData[{
Cell[741, 27, 406, 10, 82, "Input",ExpressionUUID->"6b7446b4-5a18-428e-aa1d-4b139fd538d4"],
Cell[1150, 39, 407, 10, 73, "Input",ExpressionUUID->"93d6513b-e288-4128-bc41-1d278683db32"],
Cell[1560, 51, 4388, 84, 218, "Input",ExpressionUUID->"9f54491e-43de-4bcd-b6b0-db38175c5597"],
Cell[5951, 137, 2563, 72, 250, "Input",ExpressionUUID->"da0edf04-636c-4f1a-a4ba-77af9763162e"],
Cell[CellGroupData[{
Cell[8539, 213, 6294, 143, 483, "Input",ExpressionUUID->"9788e989-6faf-4c9c-8f55-b0ab4f97291a"],
Cell[14836, 358, 661, 13, 70, "Print",ExpressionUUID->"656ce440-6f3d-4882-95af-e80055b03d0b"],
Cell[15500, 373, 558, 11, 70, "Print",ExpressionUUID->"c083f397-e297-43af-875f-016f19a60057"],
Cell[16061, 386, 25535, 477, 70, "Output",ExpressionUUID->"a69390dd-ad2e-4a8f-b0be-d8bfbf5a2976"]
}, Open  ]],
Cell[41611, 866, 238, 5, 35, "Input",ExpressionUUID->"fea49ac5-5dc6-4c9f-a284-24391c0e61dc"]
}, Closed]],
Cell[CellGroupData[{
Cell[41886, 876, 649, 13, 74, "Input",ExpressionUUID->"ab3b2b04-bfd4-4e53-9182-de88042207ec"],
Cell[42538, 891, 2163, 58, 392, "Input",ExpressionUUID->"69428177-178b-406e-a34d-ca07bdd34828"],
Cell[44704, 951, 3703, 110, 254, "Input",ExpressionUUID->"097f8843-a440-474d-9282-b33b3004a8a4"],
Cell[48410, 1063, 1093, 34, 73, "Input",ExpressionUUID->"7c06f1fd-fb96-42c8-a5d6-8ce12f14aef9"],
Cell[49506, 1099, 11384, 279, 905, "Input",ExpressionUUID->"ef3015d1-683f-4b25-b841-285a8ca0ee9a"],
Cell[60893, 1380, 193, 4, 43, "Input",ExpressionUUID->"ca8556c4-177d-4a5c-9bd5-55104b59f527"]
}, Closed]],
Cell[CellGroupData[{
Cell[61123, 1389, 417, 10, 74, "Input",ExpressionUUID->"9936d293-927b-4518-935d-55993e56cccb"],
Cell[61543, 1401, 210, 5, 43, "Input",ExpressionUUID->"feb50f14-2c9c-4552-aa5e-78e458875e83"],
Cell[CellGroupData[{
Cell[61778, 1410, 2030, 45, 189, "Input",ExpressionUUID->"7ed6f6d2-de9d-4e45-9311-2a4dac26d5ab"],
Cell[63811, 1457, 229, 4, 49, "Output",ExpressionUUID->"1213faa5-acb5-4919-aac6-1137c9ef0403"],
Cell[64043, 1463, 410, 8, 34, "Print",ExpressionUUID->"88c80677-4e7a-4c23-bc3c-120b7c4a09b1"],
Cell[64456, 1473, 474, 10, 36, "Print",ExpressionUUID->"05650985-73cd-4e6a-8ae1-836d70b1524d"],
Cell[64933, 1485, 205, 3, 34, "Print",ExpressionUUID->"9bf5227e-719a-427f-9a52-c817361cc9b5"],
Cell[65141, 1490, 548, 13, 40, "Print",ExpressionUUID->"da6f0610-17f4-4d27-9a7e-cbb1aa0a77f4"]
}, Open  ]],
Cell[CellGroupData[{
Cell[65726, 1508, 4756, 113, 274, "Input",ExpressionUUID->"7f447e9b-ca99-403a-bbef-7879ada59ac8"],
Cell[70485, 1623, 54700, 1016, 506, "Output",ExpressionUUID->"8dc0a7db-f249-4860-b60d-f8a1d10eb27c"]
}, Open  ]],
Cell[CellGroupData[{
Cell[125222, 2644, 2400, 61, 189, "Input",ExpressionUUID->"204ccaf3-cb10-41ec-9bdf-0416082e5301"],
Cell[127625, 2707, 37261, 732, 394, "Output",ExpressionUUID->"f125539a-69ed-4a1a-8ab2-8579b48b2e86"]
}, Open  ]],
Cell[CellGroupData[{
Cell[164923, 3444, 399, 12, 73, "Input",ExpressionUUID->"0a301b64-1a98-4f0f-adac-6d476fc0d55b"],
Cell[165325, 3458, 555, 14, 54, "Output",ExpressionUUID->"29615c3d-fc43-4716-b0af-9149c944ff80"]
}, Open  ]],
Cell[165895, 3475, 799, 19, 51, "Input",ExpressionUUID->"20c48c9f-b3fb-4340-b2e2-193dd2214bac"],
Cell[CellGroupData[{
Cell[166719, 3498, 1030, 24, 102, "Input",ExpressionUUID->"ece463dc-be15-49b7-867c-a479fc4aea00"],
Cell[167752, 3524, 891, 13, 49, "Output",ExpressionUUID->"bfbf9ace-ec1e-4394-bfd3-bb969fd2bc97"],
Cell[168646, 3539, 891, 13, 49, "Output",ExpressionUUID->"9f201508-6ee1-434e-bfdf-1531370051e8"]
}, Open  ]],
Cell[169552, 3555, 5193, 132, 565, "Input",ExpressionUUID->"20732f62-fd64-405d-b947-c5d41c0d1778"],
Cell[CellGroupData[{
Cell[174770, 3691, 1486, 32, 73, "Input",ExpressionUUID->"857dbb5f-f510-4d10-b50e-566aa29e9831"],
Cell[176259, 3725, 637, 14, 49, "Output",ExpressionUUID->"8cc0d716-288a-4d9a-88e0-e61faac97f88"],
Cell[176899, 3741, 702, 16, 49, "Output",ExpressionUUID->"f36b7395-21e7-4db2-afc1-22cc531f38ba"]
}, Open  ]],
Cell[CellGroupData[{
Cell[177638, 3762, 3699, 79, 218, "Input",ExpressionUUID->"ecfd77a8-7f68-4093-b5ba-e870b806ca26"],
Cell[181340, 3843, 30203, 555, 392, "Output",ExpressionUUID->"649d1176-68b2-4f61-bd28-e578c4867792"]
}, Open  ]],
Cell[211558, 4401, 336, 7, 43, "Input",ExpressionUUID->"234e8456-2795-4447-847a-5366da304e07"],
Cell[211897, 4410, 193, 4, 43, "Input",ExpressionUUID->"78d9f6b1-c42a-4626-b2d7-229d2b55a12f"]
}, Closed]],
Cell[CellGroupData[{
Cell[212127, 4419, 423, 10, 74, "Input",ExpressionUUID->"1a7987ad-714a-4087-aae9-f569c6371d2f"],
Cell[212553, 4431, 210, 5, 43, "Input",ExpressionUUID->"324fc1be-15ae-4112-ab31-2f4cf2cb7fd7"],
Cell[212766, 4438, 397, 10, 43, "Input",ExpressionUUID->"25612c41-5a0a-46d4-8fab-4eedbfcb34cc"],
Cell[CellGroupData[{
Cell[213188, 4452, 2932, 66, 334, "Input",ExpressionUUID->"b09b81a3-ea59-4344-a105-b9b9e504595b"],
Cell[216123, 4520, 299, 5, 49, "Output",ExpressionUUID->"6e2d298b-5448-4b5e-935b-4f7ffab4fde4"],
Cell[216425, 4527, 297, 5, 49, "Output",ExpressionUUID->"fafb88b8-e136-48c1-b168-443bcc9a130f"]
}, Open  ]],
Cell[216737, 4535, 642, 16, 43, "Input",ExpressionUUID->"db4627fd-ffc8-4704-9b2e-70d8577c140c"],
Cell[217382, 4553, 437, 8, 43, "Input",ExpressionUUID->"91e1b640-3610-4363-981f-770fa41977de"],
Cell[CellGroupData[{
Cell[217844, 4565, 2618, 61, 112, "Input",ExpressionUUID->"8c0d9483-cf3a-406a-9a18-d5d0131d65cd"],
Cell[220465, 4628, 38355, 744, 506, "Output",ExpressionUUID->"e0627811-c10d-4e9f-9efe-22e785967797"]
}, Open  ]],
Cell[258835, 5375, 673, 21, 73, "Input",ExpressionUUID->"d44a2e91-9961-42c4-8e1f-4a4a6fe358a7"],
Cell[CellGroupData[{
Cell[259533, 5400, 1914, 51, 160, "Input",ExpressionUUID->"5699ebcd-0362-43c9-b66e-e1d95c0b2470"],
Cell[261450, 5453, 44912, 799, 392, "Output",ExpressionUUID->"d666c897-a8e2-491e-8fca-a4097d457829"]
}, Open  ]],
Cell[CellGroupData[{
Cell[306399, 6257, 540, 17, 43, "Input",ExpressionUUID->"3a333a7d-2ee1-4c50-b60b-a4a88f7a8963"],
Cell[306942, 6276, 514, 14, 49, "Output",ExpressionUUID->"e8c0256d-19f6-485a-9949-dfbc85980267"]
}, Open  ]],
Cell[CellGroupData[{
Cell[307493, 6295, 294, 8, 43, "Input",ExpressionUUID->"888ecde5-8ab6-426e-943c-47ae0a9fe9c5"],
Cell[307790, 6305, 536, 14, 54, "Output",ExpressionUUID->"9bda335e-995b-48e1-9a95-26a18fa3a567"]
}, Open  ]],
Cell[308341, 6322, 750, 18, 51, "Input",ExpressionUUID->"2e4aef59-bc98-4e72-b893-b6ef33c05fee"],
Cell[CellGroupData[{
Cell[309116, 6344, 803, 18, 73, "Input",ExpressionUUID->"6bf2f27d-cc5f-4125-969d-9010ee69fef8"],
Cell[309922, 6364, 815, 12, 49, "Output",ExpressionUUID->"8efa9fdd-4c42-4201-89f0-6675451df817"],
Cell[310740, 6378, 815, 12, 49, "Output",ExpressionUUID->"e12e26a3-1b62-4cd7-925b-2ac776a21b92"]
}, Open  ]],
Cell[311570, 6393, 5193, 132, 565, "Input",ExpressionUUID->"c353bf3e-bf8f-4a90-9b3d-cd55a079f25e"],
Cell[CellGroupData[{
Cell[316788, 6529, 1486, 32, 73, "Input",ExpressionUUID->"3d7b6cdb-4784-4b6a-87fd-27c37360c232"],
Cell[318277, 6563, 659, 14, 49, "Output",ExpressionUUID->"3d533b8c-62d7-4f66-8c28-478dc629df75"],
Cell[318939, 6579, 723, 16, 49, "Output",ExpressionUUID->"8630bae1-367b-463a-8f8f-cf3c3e1712de"]
}, Open  ]],
Cell[CellGroupData[{
Cell[319699, 6600, 3699, 79, 218, "Input",ExpressionUUID->"a407b71e-4f41-4535-89ae-5f2e7f7bb171"],
Cell[323401, 6681, 30319, 556, 392, "Output",ExpressionUUID->"7f667a7a-1b85-4381-ad2b-b5c7d884e203"]
}, Open  ]],
Cell[353735, 7240, 329, 7, 43, "Input",ExpressionUUID->"41deb4da-8fcc-4aa1-9efb-9951274b9662"],
Cell[354067, 7249, 193, 4, 43, "Input",ExpressionUUID->"d176ce6a-a1a3-4c61-ac6d-f48fe45c8d42"]
}, Closed]]
}
]
*)

