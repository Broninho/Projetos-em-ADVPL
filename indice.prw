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

	nCnas := Val(U_Input("Qual o número de crianças nascidas no período:", "I"))

	while .t.
		cSexo := Upper(U_Input("Qual o sexo da criança morta: (M,F)", "C"))
		nMeses := Val(U_Input("Qual o número de meses de vida:", "I"))

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

	Alert("A porcentagem de crianças mortas no período é de " + cValToChar(nPorcm) + " %")
	Alert("A porcentagem de crianças do sexo masculino mortas no período é de " + cValToChar(nPorcmm) + " %")
	Alert("A porcentagem de crianças que viveram 24 meses ou menos é de " + cValToChar(nPorcv) + " %")

RETURN NIL
