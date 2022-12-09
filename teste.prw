#INCLUDE "Protheus.ch"

User Function teste()
	Local cNome as character
	Local nI as numeric
	Local nIdade as numeric
	Local aM[]
	Local aFunc as array

	nI := 0
	nIdade := 0
	aFunc := {{"Pedro", 32, .T.},{"Maria", 22, .T.},{"Antonio", 42, .F.}}
	//aValores := {nNum1, nNum2, nNum3, nNum4, nNum5}
	//aadd (aValores,cNome)

	//for nI := 1 to len(aValores)
	//	Alert(CValToChar(nI) + "°  " + cValToChar(aValores[nI]))
	//NEXT nI

	for nI := 1 to 10
		cNome := U_Input("Nome da pessoa:", "C")
		nIdade := cValToChar(U_Input("Idade da pessoa?", "N"))
		aadd (aM, cNome)
		aadd (aM, nIdade)
	NEXT nI

	for nI := 1 to len(aM)
		Alert(cValToChar(aM[nI]))
	NEXT nI

RETURN NIL
