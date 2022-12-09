#INCLUDE "Protheus.ch"

#DEFINE FIM 0

User Function concurso()
	Local nCount as numeric
	Local nCod as numeric
	Local nVagas as numeric
	Local nCmas as numeric
	Local nCFem as numeric
	Local nI as numeric
	Local nCand as numeric
	Local nPorF as numeric
	Local nMaior as numeric
	Local nCanV as numeric
	Local nTotalC as numeric
	Local nCodM as numeric
	Local aArray as array


	nCod := 0
	nVagas := 0
	nCmas := 0
	nCfem := 0
	nI := 0
	nCand := 0
	nPorF := 0
	nMaior := 0
	nCanV := 0
	nTotalC := 0
	nCount := 0
	nCodM := 0
	aArray := {}

	while .t.
		nCod := Val(U_Input("Digite o codigo do curso:", "N"))
		nVagas := Val(U_Input("Digite o numero de vagas:", "N"))
		nCmas := Val(U_Input("Digite o numero de candidatos masculinos:", "N"))
		nCFem := Val(U_Input("Digite o numero de candidatos femininos:", "N"))

		IF nCod == FIM
			EXIT

		ELSE
			aadd (aArray, {nCod, nVagas, nCmas, nCFem})
			nCount ++
			nCand = nCmas + nCFem
			nCanV := nCand / nVagas
			nPorF := (nCFem / nCand) * 100
			aadd (aArray[nCount], nCanV)
			aadd (aArray[nCount], nPorF)

		ENDIF

		If nCount == 1
			nMaior := nCanV
			IF nMaior == aArray[nCount,5]
				nCodM := nCod
			EndIf
		Else
			If nCanV > nMaior
				nMaior := nCanV
			EndIf
			IF nMaior == aArray[nCount,5]
				nCodM := nCod
			EndIf
		EndIf

		nTotalC += nCand

	END

	for nI := 1 to len(aArray)
		Alert(" Código do curso: " + CValToChar(aArray[nI,1])  + "|  Porcentagem de candidatos do sexo feminino: " + cValToChar(aArray[nI,6]) + " %" + "|  Número de candidatos por vaga: " + cValToChar(aArray[nI,5]))
	Next nI

	Alert("O Total de candidatos foi de: " + cValToChar(nTotalC))
	Alert("O maior numero de candidatos por vaga foi de:" + cValToChar(nMaior) + " Código do curso: " + cValToChar(nCodM))

RETURN NIL
