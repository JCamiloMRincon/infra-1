RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
for word in $(cat lista_nombres)
do
curl -s https://api.genderize.io/?name=$word | jq '.gender' | { read -r gen; echo -e "${NC}Gender of ${RED}$word ${NC}is: ${GREEN}$gen ${NC}"; }
curl -s https://api.nationalize.io/?name=$word | jq '.country[0].country_id' | { read -r cn; echo -e "${NC}Country of ${RED}$word ${NC}is: ${GREEN}$cn ${NC}"; }
done


