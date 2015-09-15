tranfert tes shits sur malt rapido.
Petit script pour transférer et tester sur malt ton script C.

1. Mets le script wolf.sh dans ton répertoire C
2. Tappe <code>./wolf.sh [le fichier test] [ton user] [ton pass]</code>

Bonus, configure ton ssh_config:

<code>
cd ~/.ssh/
touch config
</code>

Dans config

<code>
    
    Host zeta
    
        HostName zeta2.labunix.uqam.ca
        User [ton user]

    Host malt
    
        HostName malt.labunix.uqam.ca
        User [ton user]</code>

Maintenant tu n'as qu'à tapper <code>ssh malt</code> ou <code> ssh zeta</code> pour rentrer en ssh sur le réseau.
