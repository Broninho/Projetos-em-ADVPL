#INCLUDE "protheus.ch"

User function prg01() //Função principal
	local cNome as character
	local nIdade as numeric
	local dData1 as date
	local dData2 as date
	local nNum1 as numeric
	local nNum2 as numeric
	local nNum3 as numeric
	local nNum4 as numeric
	local nNum5 as numeric
	local aValores as array
	local nI as numeric
	local aFunc as array
//local nJ as numeric
	local bSoma as codeblock
	local cValor1 as character
	local cValor2 as character
	private dData3 as date

	cValor1 := U_Input("Digite um texto:", "C")
	cValor2 := U_Input("Digite um numero:", "N")
	nNum1 := 10
	nNum2 := 2
	nNum3 := 15
	nNum4 := 20
	dData1 := ctod ("")
	dData2 := ctod ("25/11/22")
	dData3 := date ()
	nIdade := 10
	cNome := "Bruno"
	conout (cNome)
	conout (nIdade)


	nNum3 := soma (2,10)
	nNum4 := soma (nNum1, nNum2)
	nNum5 := soma (nNum3, nNum4)
	aValores := {nNum1, nNum5, nNum3, nNum4, nNum2} //Array
	aadd (aValores, cNome)
	aadd (aValores, nIdade)
	aFunc := {{"Pedro", 32, .T.},{"Maria", 22, .T.},{"Antonio", 42, .F.}}
	bSoma := {|nVal1, nVal2| nVal1 + nVal2, 50} // Bloco de código
	alert(cValToChar(Eval (bSoma,5,5)))

	for nI := 1 to len(aValores)
		conout (CValToChar(nI) + " " + cValToChar(aValores[nI]))
	NEXT nI
//alert(aValores[6])

// for nI := 1 to len(aFunc)
//     if aFunc[nI,3]
//         for nJ := 1 to len(aFunc[nI])
//             alert(cValToChar(aFunc[nI,nJ]))
//         Next nJ
//     else
//         alert("Nome: " + aFunc[nI,1] + " Idade: " + cValToChar(aFunc[nI,2]))
//     endif
// NEXT nI

	multiplica() //chamando funcao dentro da principal
return nil

static function soma (nNum1 as numeric, nNum2 as numeric) as numeric // criação de função

	local nSoma as numeric


	nSoma := nNum1 + nNum2
	conout (dData3)

return nSoma

static function multiplica()

	local nI as numeric
	local aX[10]
	local aY as array
	local aZ as array

	aY := array(10)
	aZ := {0,0,0,0,0,0,0,0,0,0}

	for nI := 1 to 10
		aX[nI] := nI * nI
	NEXT nI

return nil
