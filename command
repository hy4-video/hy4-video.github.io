 
python3 -m venv /home/zekid/Downloads/YeniDizin/

source /home/zekid/Downloads/YeniDizin/bin/activate
pip install --upgrade pip
pip3 install pillow optimize-images

optimize-images /home/zekid/Belgeler/hy-video.github.io/images
for i in {1..118}; do ffmpeg -i $i.mp4 -r 0.0033 -vf scale=-1:220 -frames:v 1 -vcodec png capture-$i.png; done
