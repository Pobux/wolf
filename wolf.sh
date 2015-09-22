#! /bin/bash
echo "Entre tes infos pour te connecter en ssh "
read -e -p "User : " user
read -s -p "Password : " pass 
echo ""
read -e -p "File : " infile

host=malt.labunix.uqam.ca
tmp=/home/$user/tmp/
outsuffix=.out

echo "Connection sur $host avec le user $user pour le fichier $infile"
echo ""
echo "Resultat:"
echo ""

cat $infile | sshpass -p $pass ssh $user@$host "mkdir -p $tmp;cat > $tmp$infile;gcc $tmp$infile -Wall -o $tmp$infile$outsuffix; $tmp$infile$outsuffix; rm $tmp$infile $tmp$infile$outsuffix;"

echo ""
echo ""
echo "Fin de la transaction"
