#makefile (avec makefile si possible)
#cat ssh, compilation, printing des process
tonpass="XXXXXXX"
cat teste.sh | sshpass -p$tonpass ssh -o StrictHostKeyChecking=no cf491141@malt.labunix.uqam.ca "cat > teste; chmod a+x teste; ./teste"

