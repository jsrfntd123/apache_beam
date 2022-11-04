
* RUN CONTAINER LIKE DAEMON
  - docker build -t apache-beam -f Dockerfile .
  - docker run --name apache-beam -d apache-beam /bin/sh -c "while true; do ping 8.8.8.8; done"
  - docker exec -it f452b753db1a sh

* RUN DOCKER COMPOSE
  - Start container: docker compose up
  - Stop container: docker compose down
  - Build container: docker compose build --no-cache

* RUN APACHE BEM EXAMPLES
  - python -m examples/word_count.py --input /opt/app/apache_beam/data/inputs/word_count_input.txt --output /opt/app/apache_beam/data/outputs/count
