# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: andmart2 <andmart2@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/12 13:21:34 by andmart2          #+#    #+#              #
#    Updated: 2023/12/12 14:38:51 by andmart2         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME_SERVER = server
NAME_CLIENT = client

SRCS_CLIENT = client.c
SRCS_SERVER = server.c
OBJS_CLIENT = ${SRCS_CLIENT:.c=.o}
OBJS_SERVER = ${SRCS_SERVER:.c=.o}
CC = gcc
RM = rm -f
CFLAGS = -Wall -Wextra -Werror

all: ${OBJS_SERVER} ${OBJS_CLIENT}
			${CC} ${CFLAGS} ${SRCS_SERVER} -o ${NAME_SERVER}
			${CC} ${CFLAGS} ${SRCS_CLIENT} -o ${NAME_CLIENT}

client: ${OBJS_CLIENT}
			${CC} ${CFLAGS} ${SRCS_CLIENT} -o ${NAME_CLIENT}

server: ${OBJS_SERVER}
			${CC} ${CFLAGS} ${SRCS_SERVER} -o ${NAME_SERVER}

clean:
		${RM} ${OBJS_CLIENT} ${OBJS_SERVER}

fclean: clean
		${RM} ${NAME_CLIENT} ${NAME_SERVER}

re: fclean all

.PHONY: all client server clean fclean re
