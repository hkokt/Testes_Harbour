#Include "Minigui.ch"
#Include "hbclass.Ch"

*==========================================*
Class botao
*==========================================*
**{<posição x>, <posição y>, <nome>, <titulo>, <largura>, <altura>, <tamanho fonte>}
DATA dados INIT {397, 011, '&Generic_Novo', 'novo', 70, 30, 09}

Method pegaParaBt()
method montabt()

return self

*------------------------------------------*
Method pegaParaBt(params) Class botao 
*------------------------------------------*
Local i

for i := 1 to Len(params)

	::dados[i] :=  params[i]

next

Return ::dados

method montabt(dados) Class botao

		@::dados[1], ::dados[2] BUTTON &::(dados[3]);
		CAPTION ::dados[4];
		WIDTH ::dados[5] HEIGHT ::dados[6];
		FONT "MS Sans Serif" SIZE ::dados[7] FLAT
         
return self