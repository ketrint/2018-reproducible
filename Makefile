HTML_FILES=foo.html bar.html

%.html : %.ipynb
	jupyter nbconvert --execute --to html task_html.ipynb

kaggle:
        mkdir /home/circleci/.kaggle/
	touch /home/circleci/.kaggle/kaggle.json
	chmod 600 /home/circleci/.kaggle/kaggle.json
        echo "{"username":"ketrin"}" >> /home/circleci/.kaggle/kaggle.jso
	./download_data.sh
	jupyter nbconvert --execute --to html kernel.ipynb
	./submit_data.sh
