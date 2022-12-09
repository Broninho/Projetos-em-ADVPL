#INCLUDE "protheus.ch"

User function dados1()

	local nAltura as numeric
	local nMedia as numeric
	local nMaiora as numeric
	local nMenora as numeric
	local nHomens as numeric
	local nMulheres as numeric
	local nSoma as numeric
	local cSexo as character
	local nI as numeric

	nMedia := 0
	nMaiora := 0
	nMenora := 0
	nHomens := 0
	nMulheres := 0
	nSoma := 0
	nI := 0

	for nI := 1 to 50
		nAltura := Val(U_Input("Digite sua altura:", "N"))
		cSexo := U_Input("Digite seu sexo (masculino), (feminino):", "C")

		If nI == 1
			nMaiora := nAltura
			nMenora := nAltura
		Else
			If nAltura > nMaiora
				nMaiora := nAltura
			EndIf

			If nAltura < nMenora
				nMenora := nAltura
			EndIf
		EndIf

		if SubStr(Upper(cSexo), 1, 1) == "M"
			nHomens ++
		else
			nMulheres ++
			nSoma += nAltura
		ENDIF
	NEXT nI

	If (nMulheres > 0)
		nMedia := nSoma / nMulheres
	EndIf

	Alert("A maior altura é  " + cValToChar(nMaiora))
	Alert("A menor altura é " + cValToChar(nMenora))
	Alert("O número de homens é de " + cValToChar(nHomens))
	Alert("A media de altura das mulheres é de " + cValToChar(nMedia))

RETURN NIL
