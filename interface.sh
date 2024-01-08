#!/bin/bash

# dialog --msgbox "Lorem ipsum sit dolor amet consectur..." 10 30
# 'msgbox'  exibe uma janela com uma mensagem e um botão de ação

# dialog --infobox "Lorem ipsum sit dolor amet consectur..." 10 30
# 'infobox' exibe uma janela com uma mensagem

# dialog --textbox ./README.md 10 30
# 'textbox' exibe uma janela com uma mensagem com base em um arquivo

dialog --yesno "Deseja ver o contrato de licença?" 10 30
# 'yesno' exibe uma janela com opções de 'sim' e 'não'

# Way to capture the user response
res=$?
echo $res
if [ $res -eq 0 ];
then
    dialog --textbox ./README.md 10 30
else
    clear
    echo "Bye!"
fi

# dialog --gauge "Lorem ipsum sit dolor amet consectur..." 10 30
# 'gauge' exibe uma janela com barra de progresso

# dialog --checklist "Lorem ipsum sit dolor amet consectur..." 10 30
# 'checklist' exibe uma janela com menu de múltipla escolha

# dialog --menu "Lorem ipsum sit dolor amet consectur..." 10 30
# 'menu' exibe uma janela com menu de escolha única

# dialog --calendar "Lorem ipsum sit dolor amet consectur..." 10 30
# 'calendar' exibe uma janela com um calendário

# dialog --fselect "Lorem ipsum sit dolor amet consectur..." 10 30
# 'fselect' exibe uma janela para seleção de arquivos

# dialog --passwordbox "Lorem ipsum sit dolor amet consectur..." 10 30
# 'passwordbox' exibe uma janela com caixa de entrada para senha
