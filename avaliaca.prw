#INCLUDE "Protheus.ch"

User function avalia()
	Local aAvalia as array
	Local nMatri as numeric
	Local nNota1 as numeric
	Local nNota2 as numeric
	Local nNota3 as numeric
	Local nNotaf as numeric
	Local nFreq as numeric
	Local nI as numeric
	Local nMedia as numeric
	Local nRep as numeric
	Local nPorcR as numeric
	Local nMai as numeric
	Local nMen as numeric
	Local nJ as numeric
	Local nRepi as numeric

	nI := 0
	nMatri := 0
	nNota1 := 0
	nNota2 := 0
	nNota3 := 0
	nNotaf := 0
	nFreq := 0
	nMedia := 0
	nPorcR := 0
	nMai := 0
	nMen := 0
	nRep := 0
	nJ := 0
	nRepi := 0
	aAvalia := {}

	For nI := 1 to 100
		nMatri := U_Input("Numero de matricula:", "I")
		nNota1 := Val(U_Input("Primeira nota:", "N"))
		nNota2 := Val(U_Input("Segunda nota:", "N"))
		nNota3 := Val(U_Input("Terceira nota:", "N"))
		nFreq := Val(U_Input("Numero de frequência:", "N"))

		nNotaf := (nNota1 + nNota2 + nNota3) / 3
		aadd (aAvalia, {nMatri, nNota1, nNota2, nNota3, nNotaf, nFreq})
		nMedia += nNotaf

		IF nFreq < 40
			aadd (aAvalia[nI], "R")
			nRepi ++
			nRep ++

		ELSEIF nNotaf < 60
			aadd (aAvalia[nI], "R")
			nRep ++

		ELSE
			aadd (aAvalia[nI], "A")
		ENDIF

		IF nI == 1
			nMai := nNotaf
			nMen := nNotaf
		ELSE
			IF nNotaf > nMai
				nMai := nNotaf
			ENDIF
			IF nNotaf < nMen
				nMen := nNotaf
			ENDIF

		EndIf

	NEXT For
	nPorcR := (nRepi / 100) * 100
	nMedia /= 100

	for nI := 1 to len(aAvalia)
		Alert("Matrícula: " + cValToChar(aAvalia[nI,1]) + " frequência: " + cValToChar(aAvalia[nI,6]) + " nota final: " + cValToChar(aAvalia[nI,5]) + " código: " + cValToChar(aAvalia[nI,7]))
	Next nI

	Alert("A maior nota da turma foi: " + cValToChar(nMai) + " A menor: " + CValToChar(nMen))
	Alert("A nota média da turma foi: " + cValToChar(nMedia))
	Alert("O total de alunos reprovados foi de: " + cValToChar(nRep) + " alunos.")
	Alert("A porcentagem de reprovados por ifrequência foi de: " + cValToChar(nPorcR) + " %.")

RETURN NIL
