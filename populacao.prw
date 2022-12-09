#INCLUDE "protheus.ch"


User Function populacao()
	local nA as numeric
	local nB as numeric
	local nCresA as numeric
	local nCresB as numeric
	local nCount as numeric

	nA := 90000000
	nB := 20000000
	nCount := 1
	nCresA := nA * 0.015 + nA
	nCresB := nB * 0.03 + nB

	while nCresA <> nCresB

		if nCresA <= nCresB
			Alert("Foram necessarios " + cValToChar(nCount) + " anos!")
			EXIT
		else
			nCount ++
			nCresA := nCresA * 0.015 + nCresA
			nCresB := nCresB * 0.03 + nCresB
		ENDIF

	END

RETURN NIL
