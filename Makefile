default: jekyll 

all: install build

h help: 
	@grep '^[a-z]' Makefile

install:
	cd ./docs
	bundle config set --local path vendor/bundle
	bundle install

upgrade:
	cd ./docs
	bundle update

s serve:
	make -f 
	cd ./docs
	bundle exec jekyll serve --trace --livereload

build:
	JEKYLL_ENV=production bundle exec jekyll build --trace