# !/bin/bash

export KAGGLE_USERNAME
export KAGGLE_KEY

echo $KAGGLE_KEY
echo $KAGGLE_USERNAME

kaggle competitions download titanic
