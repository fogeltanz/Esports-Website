cd ~
export PATH=$HOME/bin:$PATH
wget http://peak.telecommunity.com/dist/virtual-python.py
# make the 64-bit python version work
perl -pi -e "s/'lib'/'lib64'/g" virtual-python.py
/usr/bin/python virtual-python.py
wget http://www.djangoproject.com/download/1.3/tarball/
mv index.html django.tar.gz
tar xzvf *.tar.gz
mv Django-1.3/django /usr/www/templates/installed/django/django-python/lib64/python2.6/site-packages
rm -rf Django-* *.tar.gz
cd /usr/www/templates/installed/django/django-python/bin
cp -s ../lib64/python2.6/site-packages/django/bin/django-admin.py .
mkdir /usr/www/templates/installed/django/django-projects
cd /usr/www/templates/installed/django/django-projects
django-admin.py startproject sample_project
cd sample_project
mkdir media templates
mkdir /usr/www/templates/installed/django/django-vhost
cd /usr/www/templates/installed/django/django-vhost
ln -s ../django-projects/sample_project/media media
ln -s ../django-projects/sample_project/media static
vi /usr/www/templates/installed/django/django-vhost/django.fcgi
vi /usr/www/templates/installed/django/django-vhost/.htaccess
chmod 700 /usr/www/templates/installed/django/django-vhost/django.fcgi
exit
