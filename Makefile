ROOT_PATH = /root/WebBuild-Saunposium/*
NGINX_PATH = /var/www/saunposium.logarithm.games

clean_nginx:
	sudo rm -rf $(NGINX_PATH)/*

clean_local:
	cd
	rm -rf ${ROOT_PATH}

update: clean_nginx
	sudo mkdir -p $(NGINX_PATH)
	sudo mv $(ROOT_PATH) $(NGINX_PATH)

help:
	@echo "Usage:"
	@echo " make clean_nginx - Deletes build files for Nginx in the startup directory"
	@echo " make clean_local - Deletes build files in the root directoty"
	@echo " make update - Updates data from a recently cloned repository with a build in the root directory to the directory for nginx"