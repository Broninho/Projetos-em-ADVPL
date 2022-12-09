#INCLUDE "protheus.ch"

#DEFINE FIM -1

User function lucro()
	local cNome as character
	local nCont as numeric
	local nVcompra as numeric
	local nVenda as numeric
	local nSomac as numeric
	local nSomav as numeric
	local nLucrot as numeric
	local nLucro as numeric
	local nLucro1 as numeric
	local nLucro2 as numeric
	local nLucro3 as numeric

	nCont := 0
	nVcompra := 0
	nVenda := 0
	nSomac := 0
	nSomav := 0
	nLucrot := 0
	nLucro := 0
	nLucro1 := 0
	nLucro2 := 0
	nLucro3 := 0

	while .t.
		cNome:= U_Input("Digite o nome da mercadoria:", "C")
		nVcompra:= VAL(U_Input("Digite o valor de compra da mercadoria:", "N"))
		nVenda:= VAL(U_Input("Digite o valor de venda da mercadoria:", "N"))

		IF VAL(cNome) == FIM
			EXIT
		ELSE
			nCont ++
			nSomac += nVcompra
			nSomav += nVenda
		ENDIF
		nLucro := (nVenda - nVcompra) / nVcompra * 100

		IF nLucro < 10
			nLucro1 ++

		ELSEIF nLucro <= 20
			nLucro2 ++

		ELSE
			nLucro3 ++
		ENDIF

	END

	nLucrot = (nSomav - nSomac) / nSomac * 100
	Alert("Valor total de compra " + CValToChar(nSomac))
	Alert("Valor total de venda " + CValToChar(nSomav))


	IF nLucrot < 0
		Alert("Não deu lucro")
	ELSE
		Alert("Valor total de lucro " + CValToChar(nLucrot) + "%")
	ENDIF

	Alert("O total de mercadorias com lucro menor que 10% são " + cValToChar(nLucro1))
	Alert("O total de mercadorias com até 20% de lucro são " + cValToChar(nLucro2))
	Alert("O total de mercadorias com mais de 20% de lucro são " + cValToChar(nLucro3))
RETURN NIL
