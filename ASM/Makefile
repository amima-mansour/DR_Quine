COLLEEN = Colleen
GRACE = Grace
SULLY = Sully
NASM = nasm -f macho64

OBJ_DIR = objs

SRC_DIR = src
SRC = $(addprefix $(SRC_DIR)/, \
		Colleen.s \
		Grace.s \
		Sully.s)
OBJ = $(SRC:$(SRC_DIR)/%.s=$(OBJ_DIR)/%.o)

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN): $(OBJ_DIR)/$(COLLEEN).o
	@ld $^ -macosx_version_min 10.8 -lSystem -o $@

$(GRACE): $(OBJ_DIR)/$(GRACE).o
	@ld $^ -macosx_version_min 10.8 -lSystem -o $@

$(SULLY): $(OBJ_DIR)/$(SULLY).o
	@ld $^ -macosx_version_min 10.8 -lSystem -o $@

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.s
	@mkdir -p $(OBJ_DIR)
	@$(NASM) $< -o $@

clean :
	@rm -rf $(OBJ_DIR)

fclean : clean
	@rm -f $(COLLEEN) $(GRACE) $(SULLY) Sully_* Grace_kid.s

re : fclean all