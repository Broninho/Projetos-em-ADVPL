#include "protheus.ch"

/*/{Protheus.doc} Input
Cria um campo para entrada de dados de acordo com os parâmetros do usuário.

@type function
@author Everton Alves <everton@laticiniosaviacao.com.br>
@since 29/11/2022
@param cTitulo, character, Título do Campo
@param cTipo, character, Tipo do Campo
@return variant, Valor informado.
/*/
User Function Input(cTitulo As Character, cTipo As Character) As Character
	Local cValor As Variant
	Local cPict As Character
	Local oGet As Object
	Local oBtnOk As Object
	Local oPnlGet As Object
	Local oPnlBtn As Object
	Local oDlg As Object

	Default cTipo := "C"

	If (Upper(cTipo) == "N")
		cValor := 0
		cPict := "@R 999,999,999.99"
		
	ELSEIF (Upper(cTipo) == "I")
		cValor := 0
		cPict := "@R 999,999,999"

	Else
		cValor := Space(100)
		cPict := ""
	EndIf

	DEFINE MSDIALOG oDlg TITLE "Input" FROM 0, 0 TO 125, 300 PIXEL

	//TPanel():New(/*[nRow]*/, /*[nCol]*/, /*[cText]*/, /*[oWnd]*/, /*[oFont]*/, /*[lCentered]*/, /*[uParam7]*/, /*[nClrText]*/, /*[nClrBack]*/, /*[nWidth]*/, /*[nHeight]*/, /*[lLowered]*/, /*[lRaised]*/)
	//TButton():New(/*[nRow]*/, /*[nCol]*/, /*[cCaption]*/, /*[oWnd]*/, /*[bAction]*/, /*[nWidth]*/, /*[nHeight]*/, /*[uParam8]*/, /*[oFont]*/, /*[uParam10]*/, /*[lPixel]*/, /*[uParam12]*/, /*[uParam13]*/, /*[uParam14]*/, /*[bWhen]*/, /*[uParam16]*/, /*[uParam17]*/)
	//TGet():New(/*[nRow]*/, /*[nCol]*/, /*[bSetGet]*/, /*[oWnd]*/, /*[nWidth]*/, /*[nHeight]*/, /*[cPict]*/, /*[bValid]*/, /*[nClrFore]*/, /*[nClrBack]*/, /*[oFont]*/, /*[uParam12]*/, /*[uParam13]*/, /*[lPixel]*/, /*[uParam15]*/, /*[uParam16]*/, /*[bWhen]*/, /*[uParam18]*/, /*[uParam19]*/, /*[bChange]*/, /*[lReadOnly]*/, /*[lPassword]*/, /*[uParam23]*/, /*[cReadVar]*/, /*[uParam25]*/, /*[uParam26]*/, /*[uParam27]*/, /*[lHasButton]*/, /*[lNoButton]*/, /*[uParam30]*/, /*[cLabelText]*/, /*[nLabelPos]*/, /*[oLabelFont]*/, /*[nLabelColor]*/, /*[cPlaceHold]*/, /*[lPicturePriority]*/, /*[lFocSel]*/)

	oPnlGet := TPanel():New(0, 0, "", oDlg, /*[oFont]*/, .T., NIL, /*[nClrText]*/, /*[nClrBack]*/, 100, 100, /*[lLowered]*/, /*[lRaised]*/)
	oPnlBtn := TPanel():New(0, 0, "", oDlg, /*[oFont]*/, .T., NIL, /*[nClrText]*/, /*[nClrBack]*/, 100, 030, /*[lLowered]*/, /*[lRaised]*/)

	oPnlBtn:Align := CONTROL_ALIGN_BOTTOM
	oPnlGet:Align := CONTROL_ALIGN_ALLCLIENT

	oGet := TGet():New(5, 10, bSetGet(cValor), oPnlGet, 135, 15, cPict, /*[bValid]*/, /*[nClrFore]*/, /*[nClrBack]*/, /*[oFont]*/, NIL, NIL, .T., NIL, NIL, /*[bWhen]*/, NIL, NIL, /*[bChange]*/, /*[lReadOnly]*/, /*[lPassword]*/, NIL, "cValor", NIL, NIL, NIL, /*[lHasButton]*/, /*[lNoButton]*/, NIL, cTitulo, 1, /*[oLabelFont]*/, /*[nLabelColor]*/, /*[cPlaceHold]*/, /*[lPicturePriority]*/, /*[lFocSel]*/)
	oGet:SetFocus()
	oBtnOk := TButton():New(5, 55, "&Ok", oPnlBtn, {|| oDlg:End()}, 40, 20, NIL, /*[oFont]*/, NIL, .T., NIL, NIL, NIL, /*[bWhen]*/, NIL, NIL)

	ACTIVATE MSDIALOG oDlg CENTERED

	cValor := AllTrim(CValToChar(cValor))

Return (cValor)
