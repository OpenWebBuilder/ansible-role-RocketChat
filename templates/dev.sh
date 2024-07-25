# https://docs.rocket.chat/docs/deploy-with-docker-docker-compose

curl -L https://raw.githubusercontent.com/RocketChat/Docker.Official.Image/master/compose.yml -O

curl -L https://raw.githubusercontent.com/RocketChat/Docker.Official.Image/master/env.example -O

mv compose.yml compose.yml.j2
mv env.example .env.j2

# Vars
sed -i 's/#RELEASE=/RELEASE={{ release }}/' .env.j2
sed -i 's/#ROOT_URL=/ROOT_URL={{ root_url }}/' .env.j2