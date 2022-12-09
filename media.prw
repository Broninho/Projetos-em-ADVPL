#INCLUDE "protheus.ch"

#DEFINE FIM -1

User function media()
	Local nCont as numeric
	Local nSoma as numeric
	local nMedia as numeric
	local cIdade as character
	local nIdade as numeric

	nCont := 0
	nSoma := 0
	nMedia := 0

	while .t.
		cIdade := U_Input("Digite sua idade:", "I")
		nIdade := Val(cIdade)

		IF nIdade == FIM
			EXIT
		ELSE
			nCont ++
			nSoma += nIdade
		ENDIF
	END

	IF nCont == 0
		Alert("SEM DADOS PARA O CÁLCULO!")
	else
		nMedia := nSoma / nCont
		Alert("A média de idade é " + CValToChar(INT(nMedia)))
	ENDIF

RETURN NIL
