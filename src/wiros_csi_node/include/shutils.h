#ifndef SHUTILS_H
#define SHUTILS_H


#include <string>
#include <iostream>
#include <stdlib.h>
#include <fcntl.h>

//run shell command
void sh_exec(std::string cmd){
  char buf[256];
  //open process
  if(!popen(cmd.c_str(), "r"))
	printf("Error opening process %s", cmd.c_str());
  return;
}

//run shell command(blocking)
std::string sh_exec_block(std::string cmd){
  char buf[256];
  //open process
  FILE* pipe = popen(cmd.c_str(), "r");
  int desc = fileno(pipe);
  if (!pipe) {
    std::cout << "popen failed." << std::endl;
    exit(1);
  }

  std::string out;
  while (ros::ok() && !feof(pipe)) {
    ssize_t r = read(desc, buf, 255);
    if (r == -1 && errno == EAGAIN)
      sleep(0.05);
    else if (r > 0){
	  buf[r+1] = '\0';
      out += std::string(buf);
	  memset(buf,0,256);
    }
    else
      break;
  }
  pclose(pipe);
  return out;
}


#endif
