# *CRIADOR DE TXT*
criado por Wesley, 07/07/2022

---

# FUNÇÕES
---

#textos()
- retorna uma lista vazia para ser preenchida posteriormente

---
**_código_**:
```

    function textos()
        return {}
    end
```

---

#digitar_textos(textodigitado,papel)
 - `textodigitado`= strings inseridas na tabela.
 - `papel`= tabela a ser inserida o `textodgitado`
---
**_código_:**
```

    function digitar_textos(textodigitado,papel)
    	table.insert(papel,textodigitado)
    end

```
---

#criando_txt(nomedoarquivo,texto)

- `normedoarquivo`= é o nome do arquivo que você deseja criar

- `texto`= é a tabela ou string que você vai inserir no seu arquivo

---
**_código_**:

```

    function criando_txt(nomedoarquivo,texto)
    	arquivo=io.open(nomedoarquivo,"w")
    	for cadafrase in pairs(texto) do
    		arquivo:write(texto[cadafrase])
    	end
    	arquivo:close()
    end

```
----
## *CÓDIGO PARA RODAR O PROGRAMA*
---

```
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

```



