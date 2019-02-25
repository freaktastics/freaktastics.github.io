
build:
	docker build -t beautiful-jekyll .

start:
	docker run -i -t --rm -p 4000:4000 --name beautiful-jekyll -v `pwd`:/srv/jekyll beautiful-jekyll

stop:
	docker stop beautiful-jekyll

clean:
	docker run -it --rm -p 4000:4000 --name beautiful-jekyll -v `pwd`:/srv/jekyll beautiful-jekyll bundle exec jekyll clean
