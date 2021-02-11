#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main (int argc, char *argv[]) {
   char command[127];
   FILE *fp;
   fp = fopen("data.communication", "w");
   fprintf(fp, argv[1]);
   fclose(fp);
   strcpy(command, "python3");
   system(command);
   strcpy(command, "lua");
   system(command);
   return(0);
} 
