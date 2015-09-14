#makefile (avec makefile si possible)
#cat ssh, compilation, printing des process
tonpass="XXXXXXX"
tonfichier="myfile.out"
cat $tonfichier | sshpass -p$tonpass ssh -o StrictHostKeyChecking=no cf491141@malt.labunix.uqam.ca "cat > $tonfichier; chmod a+x $tonfichier; ./$tonfichier"

