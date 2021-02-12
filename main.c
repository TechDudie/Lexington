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
   if (argv[2] == "--ide"){
       strcpy(command, "python3 main.py");
       system(command);
   } else {
       strcpy(command, "lua main.py");
       system(command);
   }
   return(0);
} 
