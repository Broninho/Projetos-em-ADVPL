#INCLUDE "protheus.ch"

User function pesquisa()

	local cSexo as character
	local cResposta as character
	local nSim as numeric
	local nNao as numeric
	local nMulh as numeric
	local nHom as numeric
	local nPorSim as numeric
	local nPorNao as numeric
	local nI as numeric
	local nRespo as numeric

	nSim := 0
	nNao := 0
	nPorSim := 0
	nPorNao := 0
	nI := 0
	nRespo := 0
	nHom := 0
	nMulh := 0

	for nI := 1 to 4
		cResposta := U_Input("Gostou do produto? (S / N)", "C")
		cSexo := U_Input("Digite seu sexo (M), (F):", "C")

		if Upper(cResposta) == "S"
			nSim ++

		Else
			nNao ++
		Endif

		if Upper(cResposta) == "S" .AND. Upper(cSexo) == "F"
			nMulh ++
			nRespo ++

		elseif Upper(cResposta) == "N" .AND. Upper(cSexo) =="M"
			nHom ++
			nRespo ++

		Endif
	Next nI

	if nMulh > 0
		nPorSim := (nMulh /nRespo) * 100
	Endif

	if nHom > 0
		nPorNao := (nHom /nRespo) * 100
	Endif

	alert("O numero de pessoas que responderam sim foram de " + cValToChar(nSim) + " pessoas")
	alert("O numero de pessoas que responderam não foram de " + cValToChar(nNao) + " pessoas")
	alert("A porcentagem de pessoas do sexo feminino que responderam sim foram de " + cValToChar(nPorSim) + "%")
	alert("A porcentagem de pessoas do sexo masculino que responderam não foram de " + cValToChar(nPorNao) + "%")

RETURN NIL
