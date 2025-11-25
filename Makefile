SHELL = bash

run_local:
	google-chrome http://localhost:4000 > /dev/null 2>&1
	bundle exec jekyll serve --host 0.0.0.0 --incremental

builddeps:
	sudo apt install jekyll jekyll-theme-minima ruby-jekyll-{paginate,sitemap,archives}

clean:
	$(RM) -rf Gemfile.lock _site .jekyll-cache .jekyll-metadata
