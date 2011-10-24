NAME = ruby_course
TGZ = /tmp/$(NAME).tar.gz
HTML = $(NAME).html
DEST_SERVER = jimm@jimm.textdriven.com
DEST_DIR = domains/jimmenard.com/public_html

.PHONY:	default
default:	install

.PHONY: install
install:	$(TGZ) $(HTML)
	scp $(NAME).html $(TGZ) $(DEST_SERVER):$(DEST_DIR)


$(TGZ):		$(NAME).org src/*.rb
	cd .. && tar czf $(TGZ) $(NAME)

.PHONY: html
html:		$(HTML)

# This does not treat included Ruby files properly.
$(HTML):	$(NAME).org src/*.rb
	@echo creating .html from .org does not work properly using emacs batch mode
	@echo create the .html from within emacs
	@exit 1
# emacs --batch \
#     --load=$(HOME)/.emacs \
#     --visit=$(NAME).org \
#     --funcall org-export-as-html-batch

.PHONY: clean
clean:
	rm -f $(HTML) $(TGZ)

.PHONY: distclean
distclean:	clean
	ssh $(DEST_SERVER) rm $(DEST_DIR)/$(HTML) $(DEST_DIR)/$(NAME).tar.gz
