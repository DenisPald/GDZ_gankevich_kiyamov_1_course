#include <unistd.h>
#include <sys/syscall.h>
#include <iostream>

int main() {
    pid_t pid1 = getpid();

    pid_t pid2 = syscall(SYS_getpid);

    if (pid1 == pid2) {
        std::cout << "Одинаковые: " << pid1;
    } else {
        std::cout << "Разные";
    }

    return 0;
}
