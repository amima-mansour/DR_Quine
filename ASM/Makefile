COLLEEN = Colleen
GRACE = Grace
SULLY = Sully
NASM = nasm -f macho64 -g
LD = ld -macosx_version_min 10.8 -lSystem

PATH_OBJS = objs

SRCS = Colleen.s Grace.s Sully.s
OBJS = $(SRCS:%.s=$(PATH_OBJS)/%.o)

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN): $(OBJS)
	@$(LD) -o $@ $(PATH_OBJS)/$@.o

$(GRACE): $(OBJS)
	@$(LD) -o $@ $(PATH_OBJS)/$@.o

$(SULLY): $(OBJS)
	@$(LD) -o $@ $(PATH_OBJS)/$@.o

$(PATH_OBJS)/%.o: ./%.s
	@mkdir -p $(PATH_OBJS)
	@$(NASM) $< -o $@

clean:
	@rm -rf $(PATH_OBJS) Grace_kid.s Sully_*

fclean: clean
	@rm -rf $(COLLEEN) $(GRACE) $(SULLY)

re: fclean all