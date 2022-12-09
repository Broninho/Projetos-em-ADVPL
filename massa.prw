#INCLUDE "protheus.ch"

User Function massa()
	local nMinici as numeric
	local nMfinal as numeric
	local nTempH as numeric
	local nTempM as numeric
	local nTempS as numeric
	local nCount as numeric

	nMinici := 0
	nMfinal := 0
	nTempH := 0
	nTempM := 0
	nTempS := 0
	nCount := 0

	while nMfinal <> 0.5
		CValToChar(nMinici) := U_Input("Digite a massa inicial:", "N")
		if nMfinal < 0.5
			nTempM := nCount / 60
			nTempS := nCount
			nTempH := nCount / 3600
			Alert("Massa inicial " + CValToChar(nMinici))
			Alert("Massa final " + CValToChar(nMfinal))
			Alert("Foram gastos " + CValToChar(nTempS) + " segundos.")
			Alert("Foram gastos " + CValToChar(nTempM) + " minutos.")
			Alert("Foram gastas " + CValToChar(nTempH) + "horas.")

			EXIT
		else
			nCount + 50
			nMfinal := nMinici / 2
		ENDIF
	END

RETURN NIL
