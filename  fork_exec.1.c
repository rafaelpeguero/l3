#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
/*
 * Se crea un proceso que ejecutara - con execvp - "ls -l /"
 */
int spawn (char* program, char** arg_list)
{
 pid_t child_pid;
 child_pid = fork ();
 if (child_pid != 0)
 return child_pid;
 else {
 execvp (program, arg_list);
 fprintf (stderr, "un error ocurrio con execvp\n");
 abort ();
 }
}
int main ()
{
 char* arg_list[] = { "ls", "-l", "/", NULL };
 spawn ("ls", arg_list);
 printf ("Finalizando con main \n");
 return 0;
}