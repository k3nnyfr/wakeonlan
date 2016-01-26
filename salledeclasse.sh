#!/bin/bash
#
# Script d'allumage automatique des postes
# Modifier /etc/crontab pour le lancement automatique
#
# Ex : Lancement de ce script tous les LMMJV a 07h38 du script
# 38 7    * * 1,2,3,4,5 root cd /opt/wakeonlan/ && bash salledeclasse.sh
# 38 7    * * 1,2,3,4,5 root cd /opt/wakeonlan/ && bash salledesprofs.sh
#
# Format du fichier salledeclasse.txt
# 20:CF:30:E1:AD:70
# d4:3d:7e:1f:bb:ce
# 00:22:68:07:27:b0
# 74:27:ea:3f:8e:69
# 8c:89:a5:71:2b:40
# d4:3d:7e:1f:b4:3b
# 8c:89:a5:21:96:ae
# ...
#
#
wakeonlan -f salledeclasse.txt
echo "$(date) $line- allumage postes salle de classe OK" >> sdc.log
