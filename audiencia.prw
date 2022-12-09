#INCLUDE "Protheus.ch"

#DEFINE FIM 0
User Function audie()
	Local nPessoas as numeric
	Local nCanal as numeric
	Local nCanal4 as numeric
	Local nCanal5 as numeric
	Local nCanal7 as numeric
	Local nCanal12 as numeric
	Local nCount as numeric
	Local nPorc4 as numeric
	Local nPorc5 as numeric
	Local nPorc7 as numeric
	Local nPorc12 as numeric

	nPessoas := 0
	nCanal4 := 0
	nCanal5 := 0
	nCanal7 := 0
	nCanal12 := 0
	nCount := 0
	nPorc4 := 0
	nPorc5 := 0
	nPorc7 := 0
	nPorc12 := 0
	nCanal := 1

	while .T.
		nCanal := Val(U_Input("Qual canal esta sendo assistido? (4,5,7,12)", "I"))
		nPessoas := Val(U_Input("Quantas pessoas estão assistindo? ", "I"))

		IF nCanal == FIM
			EXIT
		ELSEIF nCanal == 4
			nCanal4 ++
			nCount ++
		ELSEIF nCanal == 5
			nCanal5 ++
			nCount ++
		ELSEIF nCanal == 7
			nCanal7 ++
			nCount ++
		ELSE
			nCanal12 ++
			nCount ++
		ENDIF

	END
	nPorc4 := (nCanal4 / nCount) * 100
	nPorc5 := (nCanal5 / nCount) * 100
	nPorc7 := (nCanal7 / nCount) * 100
	nPorc12 := (nCanal12 / nCount) * 100

	Alert("O canal 4 obteve uma porcentagem de " + cValToChar(nPorc4) + " %")
	Alert("O canal 5 obteve uma porcentagem de " + cValToChar(nPorc5) + " %")
	Alert("O canal 7 obteve uma porcentagem de " + cValToChar(nPorc7) + " %")
	Alert("O canal 12 obteve uma porcentagem de " + cValToChar(nPorc12) + " %")
RETURN NIL
