ROOT_PATH = /root/WebBuild-Saunposium/*
NGINX_PATH = /var/www/saunposium.logarithm.games

BUILD_REPO = https://github.com/MrVeit/WebBuild-Saunposium

clone:
	sudo git clone $(BUILD_REPO) /root/

clean:
	sudo rm -rf $(NGINX_PATH)/*

update: clean
	sudo mkdir -p $(NGINX_PATH)
	sudo mv $(ROOT_PATH) $(NGINX_PATH)

help:
	@echo "Usage:"
	@echo " make clone - Clones the build repository to the root directory"
	@echo " make clean - Deletes build files for Nginx in the startup directory"
	@echo " make update - Updates data from a recently cloned repository with a build in the root directory to the directory for nginx"