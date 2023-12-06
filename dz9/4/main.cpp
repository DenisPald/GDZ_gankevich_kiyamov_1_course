#include <sched.h>
#include <string.h>
#include <sys/wait.h>
#include <unistd.h>

#include <iostream>
#include <memory>

int child_main(void* ptr) {
   std::string s = *(std::string*)ptr;

   sethostname(s.data(), s.size());
   char name[128] = "";
   gethostname(name, 128);
   std::cout << name << " ------ дочерний процесс" << std::endl;
   return 0;
}

int main(int argc, char* argv[]) {
   size_t stack_size = 1024 * 10;
   std::string a = argv[1];
   std::unique_ptr<char[]> child_stack(new char[stack_size]);
   pid_t pid = clone(child_main, child_stack.get() + stack_size,
                     CLONE_NEWUTS | CLONE_NEWUSER | SIGCHLD, &a);
   int status = 0;
   wait(&status);

   char name[128] = "";
   gethostname(name, 128);
   std::cout << name << " ------ родительский процесс" << std::endl;

   return 0;
}
