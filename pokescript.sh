pokeName=$1

url="https://pokeapi.co/api/v2/pokemon/$pokeName"

id=$(curl "$url" | jq .id)
name=$(curl "$url" | jq .name)
weight=$(curl "$url" | jq .weight)
height=$(curl "$url" | jq .height)
order=$(curl "$url" | jq .order)

clear

if [ -z "$id" ]
then 
	echo "Pokemon Not Found"
else
	echo "id=$id, name=$name, weight=$weight, height=$height, order=$order"
fi
