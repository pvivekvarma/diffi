docker build -t pvivekvarma/diffi:hot-reload . 
docker run --rm -it -v $(pwd):/app -e TERM=xterm -p 8080:8080 pvivekvarma/diffi:hot-reload
