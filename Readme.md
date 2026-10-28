# Guia de Solução: Problemas com o PJe e DesktopID (Certisign) no Mac

Este guia acompanha o script `clean_desktopID.sh`. Ele foi criado especificamente para advogados que utilizam o certificado digital A3 em nuvem no **macOS** e estão enfrentando problemas para acessar ou assinar documentos no PJe.

Muitas vezes, apenas excluir e reinstalar o aplicativo da Certisign não resolve o problema. Isso acontece porque o Mac guarda "arquivos fantasmas" (configurações ocultas e antigas) que continuam atraphando o sistema.

**O que este script faz?**
Ele realiza uma "faxina profunda". Ele encerra o aplicativo, apaga o programa e varre o seu Mac em busca de todos os arquivos temporários e configurações residuais. Assim, ao reinstalar o DesktopID, o sistema o reconhecerá como se fosse a primeira vez, resolvendo a maioria dos erros de comunicação.

## Passo a Passo para Executar a Limpeza (Não exige conhecimento técnico)

Siga os passos abaixo exatamente na ordem. Você não precisa saber programação para fazer isso!

### 1. Baixe o arquivo do GitHub

Para baixar o script de forma segura e direta, siga estes passos:

1. Clique neste link para acessar a página do arquivo: 👉 [**Clean_desktopID - Github**](https://github.com/Juliocoi/clean_desktopID)
2. Na página que abrir, procure pelo botão **Download raw file** (é um pequeno ícone com uma setinha apontando para baixo ⬇️, localizado no lado direito da tela, logo acima do código).
3. Ao clicar nesse botão, o arquivo `clean_desktopID.sh` será salvo automaticamente na sua pasta de **Downloads** (Transferências). 
4. **Importante:** Mantenha o arquivo na pasta de Downloads e não tente dar dois cliques para abri-lo.

### 2. Abra o Terminal do Mac

O Terminal é uma ferramenta do próprio sistema do Mac. Para abri-lo:

1. Pressione as teclas `Command (⌘) + Espaço` no seu teclado para abrir a busca.
2. Digite a palavra **Terminal** e aperte `Enter`. Vai abrir uma janela com fundo preto ou branco.

### 3. Execute o comando de limpeza

Com a janela do Terminal aberta, copie a linha de texto abaixo, cole dentro do Terminal e aperte `Enter`:

```
zsh ~/Downloads/clean_desktopID.sh
```

### 4. Digite a sua senha do Mac

O sistema vai pedir a mesma senha que você usa para ligar o Mac.

> ⚠️ **ATENÇÃO MUITO IMPORTANTE:** Ao digitar a sua senha, **nada vai aparecer na tela**, nem mesmo asteriscos (*). Parece que o teclado parou de funcionar, mas é normal! É uma medida de segurança da Apple. Apenas digite a sua senha normalmente, "às cegas", e aperte `Enter`.

### 5. Fim da Limpeza!

O Terminal vai mostrar uma lista do que está apagando. Quando aparecer a mensagem de "Limpeza concluída", você pode fechar a janela do Terminal.

## Reinstalando o DesktopID

Agora que o seu Mac está completamente limpo, você pode reinstalar o DesktopID do zero.

Acesse o site oficial da Certisign para baixar a versão mais recente e siga as instruções de instalação padrão:
👉 [**Página Oficial de Suporte da Certisign**](https://certisign.com.br/suporte/instalacao-e-emissao)