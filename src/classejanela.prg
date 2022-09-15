#Include "Minigui.ch"
#Include "hbclass.Ch"

Class janelas

DATA sNome INIT 'NAME'
DATA nAt1 INIT 0
DATA nAt2 INIT 0
DATA nWidth INIT 400
DATA nHeight INIT 400
DATA sTitle INIT 'TITULO WIN GENERIC'

Method paraWin(sNome, nAt1, nAt2, nWidth, nHeight,sTitle)
Method criaMain()
Method addbotao()
Method ativaWin() 

End Class 


Method paraWin(nome,at1,at2,width,height,title) Class janelas

::sNome := nome
::nAt1 := at1
::nAt2 := at2
::nWidth := width
::nHeight := height
::sTitle := title

Return Self 

Method criaMain() Class janelas

	Define Window &(::sNome) ;
	At ::nAt1,::nAt2 ;
	Width ::nWidth Height ::nHeight ;
	Title ::sTitle ;
	Main ;
	Nomaximize ;
	Nosize
	
Return Self

Method addbotao(at1,at2,nome,caption) Class janelas 

@at1,at2 button &(nome);
caption caption;

Return Self

Method ativaWin() Class janelas 

	end window 
	activate window &(::sNome)
	
return self
