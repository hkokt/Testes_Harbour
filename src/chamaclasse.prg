#Include "Minigui.ch"
#Include "hbclass.ch"
#Include "classejanela.prg"

Function main()

Local qualwin := 0
Local win2 := janelas():New()

win2:criaMain()

if qualWin == 1
win2:addbotao(10,10, 'nome0','nome0')
else 
win2:addbotao(100,10, 'nome1','nome1')
endif 

win2:ativaWin('nome')

return 