ROOT_PATH = '/root/WebBuild-Saunposium/*'
NGINX_PATH = '/var/www/saunposium.logarithm.games/'

BUILD_REPO = https://github.com/MrVeit/WebBuild-Saunposium

help:
	@echo "Usage:"
	@echo " make clean - Deletes build files for Nginx in the startup directory"
	@echo " make update - Updates data from a recently cloned repository with a build in the root directory to the directory for nginx"