if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/joker153/joppenevamariya.git /joppenevamariya
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /joppenevamariya
fi
cd /joppenevamariya
pip3 install -U -r requirements.txt
echo "Starting M5 media Bot...."
python3 bot.py
