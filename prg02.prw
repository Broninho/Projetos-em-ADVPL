#INCLUDE "protheus.ch"

user function prg02()

	local cNome1 as character
	local cNome2 as character
	local cNome3 as character
	local cNome4 as character
	local nIdade1 as numeric
	local nIdade2 as numeric
	local nIdade3 as numeric
	local nIdade4 as numeric
	local aValores as array
	local nI as numeric
	local nJ as numeric
	local cMensagem as character

	cNome1 := PADR("Bruno", 15)
	cNome2 := PADR("Matheus", 15)
	cNome3 := PADR("Everton", 15)
	cNome4 := PADR("Juliano", 15)
	nIdade1 := 22
	nIdade2 := 35
	nIdade3 := 37
	nidade4 := 36
	aValores := {{cNome1,nIdade1},{cNome2,nIdade2},{cNome3,nIdade3},{cNome4,nIdade4}}

	Alert(CValToChar(len(aValores)))


	for nI := 1 to len(aValores)
		cMensagem := ""
		for nJ := 1 to len(aValores[nI])
			cMensagem += iif (VALTYPE(aValores[nI,nJ]) == "C", aValores[nI,nJ], cValToChar(aValores[nI,nJ])) + " "
		NEXT nJ
		conout (STRZERO(nI,2) + " " + cMensagem)
	NEXT nI

return nil
