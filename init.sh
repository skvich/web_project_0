sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx stop
sudo /etc/init.d/nginx start
cd /home/skvich/web/
sudo gunicorn -b 0.0.0.0:8080 hello:app
