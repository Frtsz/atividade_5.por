programa {
  inclua biblioteca Matematica --> mat
  funcao inicio() {
    inteiro menu
    cadeia sair="n"

    enquanto(sair=="n")
    {
      limpa()
      escreva(".=======> Atividade A <=====.\n")
      escreva("|___________________________|\n")
      escreva("| 1_Crescente               |\n")
      escreva("| 2_Media Idades            |\n")
      escreva("| 3_Senha Fixa              |\n")
      escreva("| 4_Quadrante               |\n")
      escreva("| 5_Verificação de nota     |\n")
      escreva("| 6_Combustivel             |\n")
      escreva("| 7_Pares Consecutivos      |\n")
      escreva("|...........................|\n")
      escreva("|==> ")
      
      faca
      {
        leia(menu)
      } enquanto(menu<1 ou menu>7)

      limpa()

      escolha(menu)
      {
        caso 1:
        escreva("CRESCENTE\n\n")

        real n1, n2

        escreva("Digite dois numeros:\n")
        leia(n1,n2)

        enquanto(n1!=0 e n2!=0)
        {
          se(n1>n2)
          {
            escreva("DECRESCENTE!")
          }
          senao
          {
            escreva("CRESCENTE!")
          }
          escreva("\nDigite dois números:\n")
          leia(n1,n2)
        }

        pare
        
        caso 2:
        escreva("MEDIA IDADES\n\n")

        inteiro idades=1, quantidade=0, soma=0
      
        escreva("Digite as idades:\n")
        leia(idades)
        soma=soma+idades
        quantidade++

        se(idades<0)
        {
          escreva("IMPOSSIVEL CALCULAR")
        }

        senao se(idades>=0)
        {
          enquanto(idades>=0)
          { 
            soma=soma+idades
            quantidade++
      
            leia(idades)
          }
          escreva("MEDIA = "+(soma/quantidade)+"")
        }

        pare
        
        caso 3:
        escreva("SENHA FIXA\n\n")

        real senha

        escreva("Digite sua senha: ")
        leia(senha)

        enquanto(senha!=2002)
        {
          escreva("Digite novamente: ")
          leia(senha)
        }

        escreva("Acesso permitido")

        pare

        caso 4:
        escreva("QUADRANTE\n\n")

        real x, y

        escreva("Digite o valor de x: ")
        leia(x)
        escreva("Digite o valor de y: ")
        leia(y)

        enquanto(x!=0 e y!=0)
        {
          se(x>0 e y>0)
          {
            escreva("Quadrante 1")
          }
          senao se(x<0 e y>0)
          {
            escreva("Quadrante 2")
          }
          senao se(x<0 e y<0)
          {
            escreva("Quadrante 3")
          }
          senao se(x>0 e y<0)
          {
            escreva("Quadrante 4")
          }

          escreva("\nDigite o valor de x: ")
          leia(x)
          escreva("Digite o valor de y: ")
          leia(y)
        }

        pare

        caso 5:
        escreva("VERIFICAÇÃO DE NOTA\n\n")

        real nota1, nota2, media

        escreva("Digite a primeira nota: ")
        leia(nota1)
        enquanto(nota1<0 ou nota1>10)
        {
          escreva("Valor inválido, digite novamente: ")
          leia(nota1)
        }

        escreva("Digite a segunda nota: ")
        leia(nota2)
        enquanto(nota2<0 ou nota2>10)
        {
          escreva("Valor inválido, digite novamente: ")
          leia(nota2)
        }

        media=(nota1+nota2)/2

        escreva("A média é: ", media)

        pare

        caso 6:
        escreva("COMBUSTÍVEL\n\n")

        inteiro gas=0, alc=0, die=0, opcao=0

        escreva("Informe um codigo (1, 2, 3) ou 4 para parar: ")
        leia(opcao)

        enquanto(opcao!=4)
        {
          
          se(opcao==1)
          {
            alc++
          }
          senao se(opcao==2)
          {
            gas++
          }
          senao se(opcao==3)
          {
            die++
          }

          escreva("Informe um codigo (1, 2, 3) ou 4 para parar: ")
          leia(opcao)
        }

        escreva("MUITO OBRIGADO")
        escreva("\nAlcool: ", alc)
        escreva("\nGasolina: ", gas)
        escreva("\nDiesel: ", die)

        pare

        caso 7:
        escreva("PARES CONSECUTIVOS\n\n")

        inteiro numero=0, soma

        escreva("Digite um numero inteiro: ")
        leia(numero)

        enquanto(numero!=0)
        {
          se(numero%2==0)
          {
            soma=numero+(numero+2)+(numero+4)+(numero+6)+(numero+8)
            escreva(soma)
          }
          senao
          {
            soma=(numero+1)+(numero+3)+(numero+5)+(numero+7)+(numero+9)
            escreva(soma)
          }

          escreva("\nDigite um numero inteiro: ")
          leia(numero)
        }

        pare
      }

      escreva("\nSair? (s/n)\n")
      leia(sair)
    }
  }
}
