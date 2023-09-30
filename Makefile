NAME = libft.a
GCC = gcc
CFLAGS = -Wall -Wextra -Werror

SRCS                    = ft_atoi.c \
                      ft_bzero.c \
                      ft_calloc.c \
                      ft_isalnum.c \
                      ft_itoa.c \
                      ft_isalpha.c \
                      ft_isascii.c \
                      ft_isdigit.c \
                      ft_isprint.c \
                      ft_memchr.c \
                      ft_memcmp.c \
                      ft_memcpy.c \
                      ft_memmove.c \
                      ft_memset.c \
                      ft_split.c \
                      ft_strchr.c \
                      ft_strdup.c \
                      ft_striteri.c \
                      ft_strlcat.c \
                      ft_strlcpy.c \
                      ft_strlen.c \
                      ft_strncmp.c \
                      ft_strnstr.c \
                      ft_strrchr.c \
                      ft_strjoin.c \
                      ft_strtrim.c \
                      ft_strmapi.c \
                      ft_substr.c \
                      ft_tolower.c \
                      ft_toupper.c \
                      ft_putchar_fd.c \
                      ft_putstr_fd.c \
                      ft_putendl_fd.c \
                      ft_putnbr_fd.c
BNS_SRCS                = ft_lstsize.c \
                    ft_lstadd_front.c \
                    ft_lstclear.c \
                    ft_lstdelone.c \
                    ft_lstiter.c \
                    ft_lstlast.c \
                    ft_lstmap.c \
                    ft_lstadd_back.c \
                    ft_lstnew.c
OBJS = $(SRCS:.c=.o)

OBJS_BONUS = $(BNS_SRCS:.c=.o)

RM				= rm -f

all:			$(NAME)

$(NAME):		$(OBJS)
				ar rcs $(NAME) $(OBJS)

clean:
				$(RM) $(OBJS) $(OBJS_BONUS)

fclean:			clean
				$(RM) $(NAME)

re:				fclean $(NAME)

bonus:			$(OBJS_BONUS)
				ar rcs $(NAME) $(OBJS_BONUS)

.PHONY:			all clean fclean re bonus