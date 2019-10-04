COLLEEN = Colleen
GRACE = Grace
SULLY = Sully
FLAGS = -Wall -Wextra -Werror
CC = gcc

PATH_OBJS = objs

SRCS = Colleen.c Grace.c Sully.c
OBJS = $(SRCS:%.c=$(PATH_OBJS)/%.o)

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN): $(OBJS)
	@$(CC) $(FLAGS) -o $@ $(PATH_OBJS)/$@.o

$(GRACE): $(OBJS)
	@$(CC) $(FLAGS) -o $@ $(PATH_OBJS)/$@.o

$(SULLY): $(OBJS)
	@$(CC) $(FLAGS) -o $@ $(PATH_OBJS)/$@.o

$(PATH_OBJS)/%.o: %.c
	@mkdir -p $(PATH_OBJS)
	@$(CC) $(FLAGS) -c $< -o $@

test: $(COLLEEN) $(GRACE) $(SULLY)
	@sh run_test.sh

clean:
	@rm -rf $(PATH_OBJS) Grace_kid.c Sully_*

fclean: clean
	@rm -rf $(COLLEEN) $(GRACE) $(SULLY)

re: fclean all
