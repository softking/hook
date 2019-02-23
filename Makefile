# Main Makefile
KM_DIR=mod
SUBDIRS = $(KM_DIR)
SUBDIRS_CLEAN = $(addsuffix .clean, $(SUBDIRS))

.PHONY: clean $(SUBDIRS)

all: $(SUBDIRS)
clean: $(SUBDIRS_CLEAN)

$(SUBDIRS):
	$(MAKE) -C $@

$(SUBDIRS_CLEAN): %.clean:
	$(MAKE) -C $* clean

