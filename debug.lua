--[[#CRIADOR DE TXT
criado por Wesley, 07/07/2022






]]



function textos()
	return {}
end

function digitar_textos(textodigitado,papel)
	table.insert(papel,textodigitado)
end

function criando_txt(nomedoarquivo,texto)
	arquivo=io.open(nomedoarquivo,"w")
	for cadafrase in pairs(texto) do
		arquivo:write(texto[cadafrase])
	end
	arquivo:close()
end



a=textos()

io.write("Digite o seu texto\ncomandos: @parar(finaliza o texto)\n----------------------\n")

while true do
	digitado=io.read().."\n"
	digitar_textos(digitado,a)
	if digitado=="@parar\n" then table.remove(a) os.execute("clear") break end
end

print("Digite o nome do seu arquivo de texto")
criando_txt(io.read(),a)



print("-------------------------------")
for i in pairs(a) do print(a[i]) end



