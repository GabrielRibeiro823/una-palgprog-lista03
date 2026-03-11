programa
{
  funcao inicio()
  {
    inteiro opcao
    cadeia nome_produto
    real preco_unitario, quantidade_comprada, valor_total
    real fahrenheit, celsius
    real nota_a, nota_b, media_ponderada
    real distancia_percorrida, combustivel_gasto, consumo_medio
    real valor_original, percentual_desconto, valor_desconto, preco_final

    faca
    {
      limpa()
      escreva("-----------------------------------------\n")
      escreva("MENU DE EXERCICIOS - PORTUGOL STUDIO\n")
      escreva("-----------------------------------------\n")
      escreva("1. Fechamento do Caixa\n")
      escreva("2. Conversor de Temperatura\n")
      escreva("3. media Ponderada\n")
      escreva("4. Consumo do Automovel\n")
      escreva("5. Calculo de Desconto\n")
      escreva("6. fechamento de caixa")
      escreva("0. Sair\n")
      escreva("-----------------------------------------\n")
      escreva("Escolha uma opçao: ")
      leia(opcao)

      escolha (opcao)
      {
        caso 1:
           limpa()
            escreva("digite o nome do produto: ")
                leia(nome_produto)

                escreva("digite o valor do produto: ")
                leia(preco_unitario)
                
                escreva("informe a quantidade: ")
                leia(quantidade_comprada)

                valor_total = quantidade_comprada * preco_unitario

                escreva("O valor total do "+nome_produto+" ficou em "+valor_total)
          pare

        caso 2:
            limpa()
              escreva("digite quantos fahrenheit: ")
              leia(fahrenheit)

              celsius = (fahrenheit - 32) /1.8

              escreva("esta fazendo ", celsius, " graus hoje")
              escreva("\nPressione ENTER para voltar ao menu...")
              leia(nome_produto)
          pare

        caso 3:
            limpa()
              escreva("digite a nota A")
              leia(nota_a)
              escreva("digite a nota B")
              leia(nota_b)

              media_ponderada = (nota_a * 4) + (nota_b * 6) / 10

              escreva("Media da media ponderada Ã©: ", media_ponderada)
              escreva("\nPressione ENTER para voltar ao menu...")
              leia(nome_produto)
          pare

        caso 4:
            limpa()
              escreva("digite a distancia pecorrida: ")
              leia(distancia_percorrida)

              escreva("digite o gasto de combustivel: ")
              leia(combustivel_gasto)

              se(combustivel_gasto > 0){
              consumo_medio = distancia_percorrida / combustivel_gasto
              escreva("Voce gastou ",consumo_medio)
              }senao{
                escreva("O combustivel gasto nao pode ser 0. \n")
              }
              escreva("\nPressione ENTER para voltar ao menu...")
              leia(nome_produto)
          pare

        caso 5:
            limpa()
              escreva("digite o valor do produto: ")
              leia(valor_original)

              escreva("digite a porcentagem de desconto: ")
              leia(percentual_desconto)

              valor_desconto = valor_original * (percentual_desconto) / 100
              preco_final = valor_original - valor_desconto
              escreva("O valor do desconto é ", valor_desconto)
              escreva("O preço final é ", preco_final)
              escreva("\nPressione ENTER para voltar ao menu...")
              leia(nome_produto)

          pare
          
        caso 0:
          escreva("Saindo...\n")
          pare

        caso contrario:
          escreva("OpÃ§Ã£o invÃ¡lida!\n")
          util.aguarde(2000)
          pare
      }
    } enquanto (opcao != 0)
  }
}
