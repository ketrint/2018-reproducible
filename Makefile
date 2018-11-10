HTML_FILES=foo.html bar.html

%.html : %.ipynb
    jupyter nbconvert --execute --to html task_0.ipynb

all : foo.html bar.html
    echo All files are now up to date

clean : 
    rm -f foo.html bar.html 
