#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main () {
   char command[127];
   strcpy(command, "lua");
   system(command);
   strcpy(command, "python3");
   system(command);
   return(0);
} 
