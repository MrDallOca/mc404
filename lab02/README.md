## Organização da memória

Os endereços até 150<sub>16</sub> (261<sub>10</sub>) serão destinados para o programa, com exceção do endereço 105<sub>16</sub> que será de entrada. O resto será ocupado pelos dados do programa.

## Algoritmo

### `geral`

```
load 105hex AC
mult por 10
raiz quadrada pela metade
```

### `raiz quadrada pela metade`

```
armazena AC em y
div DOIS
store MQ em a
load AC a
i > 10 # loop
se AC jmp para programa principal
div AC DOIS
```

## Locais de variáveis


## Comandos importantes

| Comando | Hexa |
|---------|----------|
| Transfere o valor armazenado no endereço X da memória para o registrador AC | `00 00 00 00 01` |
|  |  |

