#INCLUDE "protheus.ch"

User Function conversao()
	local nI as numeric
	local nConvert as numeric

	nI := 0
	nConvert := 0

	For nI := 50 to 55
		nConvert := (nI - 32) / 1.8
		Alert(cValToChar(nI) + " F° = " + cValToChar(nConvert) + " °C")
	NEXT nI

RETURN NIL
