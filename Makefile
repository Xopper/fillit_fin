# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahaloua <ahaloua@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/21 16:37:06 by ahaloua           #+#    #+#              #
#    Updated: 2019/07/21 21:19:27 by ahaloua          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fillit
CFLAGS = -Wall -Wextra -Werror
LIBFT =  libft/libft.a
FILES = ./srcs/fillit.c \
		./srcs/solve.c \
		./srcs/map.c \
		./srcs/check.c \
		./srcs/main.c \

all: $(NAME)
	
$(NAME):
	$(MAKE) -C libft
	gcc $(CFLAGS) $(FILES) $(LIBFT) -o fillit

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)
	$(MAKE) -C libft/ fclean

re:	fclean all
