#Include "Minigui.ch"
#Include "hbclass.Ch"
*==========================================*
Class janelas
*==========================================*
/*{<nomejanela>,<posiçãox>,<posiçãoy>,<tamanhox>,<tamanhoy>,<títulojanela>}*/
DATA prmWin INIT {'nome',0,0,300,300,'Main'} 
DATA prmBot INIT {}

Method pegaPara()
**Method pegaParaBot(prmBot)
Method criaMain()
Method ativa() 

End Class 


*------------------------------------------*
Method pegaPara(params) Class janelas
*------------------------------------------*
Local i

for i := 1 to Len(params)

	::prmWin[i] :=  params[i]

next

Return ::prmWin


*------------------------------------------*
Method criaMain() Class janelas
*------------------------------------------*

	Define Window &(::prmWin[1]) ;
	At ::prmWin[2],::prmWin[3] ;
	Width ::prmWin[4] Height ::prmWin[5] ;
	Title ::prmWin[6] ;
	Main;
	Nomaximize ;
	Nosize
	
Return Self

*------------------------------------------*
Method criabot(prmBot)Class janelas
*------------------------------------------*

local botao:= botao:new()
botao:montabt(prmBot)


return self

*------------------------------------------*
Method ativa() Class janelas 
*------------------------------------------*
	end window 
	activate window &(::prmWin[1])
	
return self
