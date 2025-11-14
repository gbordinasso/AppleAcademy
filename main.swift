import Foundation

enum ErroEntrada: Error {
    case valorInvalido
}

func lerNumero() throws -> Int {
    if let texto = readLine(), let numero = Int(texto) {
        return numero
    } else {
        throw ErroEntrada.valorInvalido
    }
}


let nomesItens = ["Espada Simples", "Arco e Flecha", "Bomba", "Poção de Vida", "Canhão", "Poção de Força", "Cajado Mágico", "Armadura de Couro", "Escudo de Madeira", "Adaga Sombria"]
let custosItens = [40, 70, 30, 20, 45, 35 ,150, 90, 60, 110]
let niveisMinimos = [1, 3, 1, 1, 4, 2, 3, 4, 2, 5]


var mochilaNomes: [String] = []
var mochilaCustos: [Int] = []


print("Digite o nome do seu personagem:")
let nomeJogador = readLine() ?? "Jogador"

var dinheiro = Int.random(in: 300...600)
var nivel = Int.random(in: 1...8)


func menu() {
    print("""
    
    ====== Loja de Itens ======
    
    1 - Ver status do jogador
    2 - Ver itens da loja
    3 - Comprar item
    4 - Vender item
    5 - Ver mochila
    6 - Sair
    
    ===========================
    """)
}


func mostrarJogador() {
    print("\nNome: \(nomeJogador)")
    print("Dinheiro: \(dinheiro)")
    print("Nível: \(nivel)\n")
}


func mostrarLoja() {
    print("\nItens disponíveis:")
    for i in 0..<nomesItens.count {
        print("\(i + 1) - \(nomesItens[i]) (Preço: \(custosItens[i]), Nível mínimo: \(niveisMinimos[i]))")
    }
    print("")
}


func mostrarMochila() {
    if mochilaNomes.isEmpty {
        print("\nSua mochila está vazia.\n")
        return
    }
    
    print("\nMochila:")
    for i in 0..<mochilaNomes.count {
        print("\(i + 1) - \(mochilaNomes[i]) (Vende por: \(mochilaCustos[i] / 2))")
    }
    print("")
}


func comprarItem() {
    mostrarLoja()
    print("Qual item deseja comprar?")
    
    do {
        let escolha = try lerNumero()
        
        if escolha < 1 || escolha > nomesItens.count {
            throw ErroEntrada.valorInvalido
        }
        
        let index = escolha - 1
        
        if nivel < niveisMinimos[index] {
            print("Seu nível é muito baixo para comprar este item.\n")
            return
        }
        
        if dinheiro < custosItens[index] {
            print("Você não tem dinheiro suficiente.\n")
            return
        }
        
        dinheiro -= custosItens[index]
        mochilaNomes.append(nomesItens[index])
        mochilaCustos.append(custosItens[index])
        
        print("Você comprou \(nomesItens[index])!\n")
        
    } catch {
        print("Entrada inválida.\n")
    }
}


func venderItem() {
    mostrarMochila()
    if mochilaNomes.isEmpty { return }
    
    print("Qual item deseja vender?")
    
    do {
        let escolha = try lerNumero()
        
        if escolha < 1 || escolha > mochilaNomes.count {
            throw ErroEntrada.valorInvalido
        }
        
        let index = escolha - 1
        let ganho = mochilaCustos[index] / 2
        
        dinheiro += ganho
        print("Você vendeu \(mochilaNomes[index]) por \(ganho)!\n")
        
        mochilaNomes.remove(at: index)
        mochilaCustos.remove(at: index)
        
    } catch {
        print("Entrada inválida.\n")
    }
}


var jogando = true

while jogando {
    menu()
    
    if let opcao = readLine() {
        switch opcao {
        case "1":
            mostrarJogador()
        case "2":
            mostrarLoja()
        case "3":
            comprarItem()
        case "4":
            venderItem()
        case "5":
            mostrarMochila()
        case "6":
            print("Saindo da loja...")
            jogando = false
        default:
            print("Opção inválida.\n")
        }
    }
}