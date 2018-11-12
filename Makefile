HTML_FILES=foo.html bar.html

%.html : %.ipynb
	jupyter nbconvert --execute --to html task_html.ipynb
