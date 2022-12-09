#INCLUDE "Protheus.ch"

#DEFINE FIM "VAZIO"

User Function indice()
	Local cSexo as character
	Local nCnas as numeric
	Local nMeses as numeric
	Local nPorcm as numeric
	Local nPorcmm as numeric
	Local nPorcv as numeric
	Local nCount as numeric
	Local nMas as numeric
	Local nC as numeric

	nCnas := 0
	nMeses := 0
	nPorcm := 0
	nPorcmm := 0
	nPorcv := 0
	nCount := 0
	nMas := 0
	nC := 0

	nCnas := Val(U_Input("Qual o n�mero de crian�as nascidas no per�odo:", "I"))

	while .t.
		cSexo := Upper(U_Input("Qual o sexo da crian�a morta: (M,F)", "C"))
		nMeses := Val(U_Input("Qual o n�mero de meses de vida:", "I"))

		IF cSexo == FIM
			EXIT
		ELSE
			nCount ++
		ENDIF

		IF cSexo == "M"
			nMas ++
		ENDIF

		IF nMeses <= 24
			nC ++
		ENDIF

	END

	nPorcm := (nCount / nCnas) * 100
	nPorcmm := (nMas / nCount) * 100
	nPorcv := (nC / nCount) * 100

	Alert("A porcentagem de crian�as mortas no per�odo � de " + cValToChar(nPorcm) + " %")
	Alert("A porcentagem de crian�as do sexo masculino mortas no per�odo � de " + cValToChar(nPorcmm) + " %")
	Alert("A porcentagem de crian�as que viveram 24 meses ou menos � de " + cValToChar(nPorcv) + " %")

RETURN NIL
