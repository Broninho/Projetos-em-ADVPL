#INCLUDE "Protheus.ch"

#DEFINE FIM "Z"
User Function ausencia()
	Local aAlunos as array
	Local aTurmas as array
	Local cIden as character
	Local cPres as character
	Local cTurma as character
	Local nNum as numeric
	Local nNumM as numeric
	Local nCount as numeric
	Local nQtdA as numeric
	Local nI as numeric
	Local nJ as numeric
	Local nY as numeric
	Local nTotalA as numeric
	Local nTotalB as numeric
	Local nTotalC as numeric
	Local nTotalD as numeric
	Local nTotalE as numeric
	Local nTotalF as numeric
	Local nTotalG as numeric
	Local nTotalH as numeric
	Local nTotalI as numeric
	Local nTotalJ as numeric
	Local nTotalK as numeric
	Local nTotalL as numeric
	Local nTotalM as numeric
	Local nTotalN as numeric
	Local nTotalAuA as numeric
	Local nTotalAuB as numeric
	Local nTotalAuC as numeric
	Local nTotalAuD as numeric
	Local nTotalAuE as numeric
	Local nTotalAuF as numeric
	Local nTotalAuG as numeric
	Local nTotalAuH as numeric
	Local nTotalAuI as numeric
	Local nTotalAuJ as numeric
	Local nTotalAuK as numeric
	Local nTotalAuL as numeric
	Local nTotalAuM as numeric
	Local nTotalAuN as numeric
	Local nTotalS as numeric
	Local nGeral as numeric



	aAlunos := {}
	aTurmas := {}
	nNum := 0
	nNumM := 0
	nCount := 0
	nQtdA := 0
	nI := 0
	nJ := 0
	nY := 0
	nTotalA := 0
	nTotalB := 0
	nTotalC := 0
	nTotalD := 0
	nTotalE := 0
	nTotalF := 0
	nTotalG := 0
	nTotalH := 0
	nTotalI := 0
	nTotalJ := 0
	nTotalK := 0
	nTotalL := 0
	nTotalM := 0
	nTotalN := 0
	nTotalAuA := 0
	nTotalAuB := 0
	nTotalAuC := 0
	nTotalAuD := 0
	nTotalAuE := 0
	nTotalAuF := 0
	nTotalAuG := 0
	nTotalAuH := 0
	nTotalAuI := 0
	nTotalAuJ := 0
	nTotalAuK := 0
	nTotalAuL := 0
	nTotalAuM := 0
	nTotalAuN := 0
	nTotalS := 0
	nGeral := 0


	while .t.
		cIden := SubStr(Upper(U_Input("Identificação da turma (A,B,C,D,E,F,G,H,I,J,K,L,M,N):", "C")), 1, 1)
		nNumM := Val(U_input("Matrícula:", "I"))
		cPres := SubStr(Upper(U_Input("Ausente (A) Presente (P):", "C")), 1, 1)

		IF cIden == FIM
			EXIT

		ELSE
			aadd (aAlunos, {cIden,nNumM,cPres})
			If cIden == "A"
				nTotalA ++
			Elseif cIden == "B"
				nTotalB ++
			Elseif cIden == "C"
				nTotalC ++
			Elseif cIden == "D"
				nTotalD ++
			Elseif cIden == "E"
				nTotalE ++
			Elseif cIden == "F"
				nTotalF ++
			Elseif cIden == "G"
				nTotalG ++
			Elseif cIden == "H"
				nTotalH ++
			Elseif cIden == "I"
				nTotalI ++
			Elseif cIden == "J"
				nTotalJ ++
			Elseif cIden == "K"
				nTotalK ++
			Elseif cIden == "L"
				nTotalL ++
			Elseif cIden == "M"
				nTotalM ++
			Elseif cIden == "N"
				nTotalN ++
			ENDIF
		ENDIF

		If cIden == "A" .AND. cPres == "A"
			nTotalAuA ++
		Elseif cIden == "B" .AND. cPres == "A"
			nTotalAuB ++
		Elseif cIden == "C" .AND. cPres == "A"
			nTotalAuC ++
		Elseif cIden == "D" .AND. cPres == "A"
			nTotalAuD ++
		Elseif cIden == "E" .AND. cPres == "A"
			nTotalAuE ++
		Elseif cIden == "F" .AND. cPres == "A"
			nTotalAuF ++
		Elseif cIden == "G" .AND. cPres == "A"
			nTotalAuG ++
		Elseif cIden == "H" .AND. cPres == "A"
			nTotalAuH ++
		Elseif cIden == "I" .AND. cPres == "A"
			nTotalAuI ++
		Elseif cIden == "J" .AND. cPres == "A"
			nTotalAuJ ++
		Elseif cIden == "K" .AND. cPres == "A"
			nTotalAuK ++
		Elseif cIden == "L" .AND. cPres == "A"
			nTotalAuL ++
		Elseif cIden == "M" .AND. cPres == "A"
			nTotalAuM ++
		Elseif cIden == "N" .AND. cPres == "A"
			nTotalAuN ++
		ENDIF
	END

	for nI := 1 to 14
		cIden := SubStr(Upper(U_Input("Identificação da turma (A,B,C,D,E,F,G,H,I,J,K,L,M,N):", "C")), 1, 1)

		IF cIden == FIM
			EXIT

		Elseif cIden == "A"
			aadd (aTurmas,{cIden, nTotalA,nTotalAuA})
		Elseif cIden == "B"
			aadd (aTurmas,{cIden, nTotalB,nTotalAuB})
		Elseif cIden == "C"
			aadd (aTurmas,{cIden, nTotalC,nTotalAuC})
		Elseif cIden == "D"
			aadd (aTurmas,{cIden, nTotalD,nTotalAuD})
		Elseif cIden == "E"
			aadd (aTurmas,{cIden, nTotalE,nTotalAuE})
		Elseif cIden == "F"
			aadd (aTurmas,{cIden, nTotalF,nTotalAuF})
		Elseif cIden == "G"
			aadd (aTurmas,{cIden, nTotalG,nTotalAuG})
		Elseif cIden == "H"
			aadd (aTurmas,{cIden, nTotalH,nTotalAuH})
		Elseif cIden == "I"
			aadd (aTurmas,{cIden, nTotalI,nTotalAuI})
		Elseif cIden == "J"
			aadd (aTurmas,{cIden, nTotalJ,nTotalAuJ})
		Elseif cIden == "K"
			aadd (aTurmas,{cIden, nTotalK,nTotalAuK})
		Elseif cIden == "L"
			aadd (aTurmas,{cIden, nTotalL,nTotalAuL})
		Elseif cIden == "M"
			aadd (aTurmas,{cIden, nTotalM,nTotalAuM})
		Elseif cIden == "N"
			aadd (aTurmas,{cIden, nTotalN,nTotalAuN})
		ENDIF

	Next nI
	for nY := 1 to len(aTurmas)
		nGeral := (aTurmas[nY,3] / aTurmas[nY,2]) * 100

		IF nGeral > 5
			nTotalS ++
		ENDIF

		cTurma := aTurmas[nY,1]
		Alert("A Turma " + cTurma + " obteve uma porcentagem de " + CValToChar(nGeral) + " % de ausência." )
	Next nY
	Alert("O total de turmas que tiveram a porcentagem de ausências superiores a 5% foi de: " + CValToChar(nTotalS))
RETURN NIL
