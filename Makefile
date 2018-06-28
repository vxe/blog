.PHONY:

push:
	hugo && git add . && git commit -m 'pushing to prod' && git push origin master
