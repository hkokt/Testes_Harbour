#Include "Minigui.ch"
#Include "hbclass.Ch"

Class janelas

DATA prm INIT {'nome',0,0,300,300,'Main'} 

Method pegaPara()
Method cria()
Method ativa()

End Class 

Method pegaPara(params) Class janelas
Local i

for i := 1 to Len(params)

	::prm[i] :=  params[i]

next 


Return ::prm

Method cria() Class janelas

	Define Window &(::prm[1]) ;
	At ::prm[2],::prm[3];
	Width ::prm[4] Height ::prm[5];
	Title ::prm[6] ;
	Main ;
	Nomaximize ;
	Nosize

	End window

Return Self

Method ativa()Class janelas
	Activate Window &(::prm[1])
Return self