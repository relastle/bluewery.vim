.PHONEY: lint
lint:
	:

.PHONEY: readme
readme: ./misc/src/make_md_color_pallete.py ./colors/bluewery.vim ./colors/bluewery-light.vim
	python3 ./misc/src/make_md_color_pallete.py ./colors/bluewery.vim ./README.md dark
	python3 ./misc/src/make_md_color_pallete.py ./colors/bluewery-light.vim ./README.md light

