all:
	@echo "Installing"
	cp ./core/doccheck /usr/bin/doccheck
	cp ./core/ensuredoc.py /usr/bin/ensuredoc.py
push:
	git rm ./core/__pycache__ -r
	git add core
	git commit -m "More files (auto)"
	git push
uninstall:
	rm /usr/bin/doccheck

