#include <iostream>

extern char** environ;

int main() {
    for (int i = 0; environ[i] != NULL; i++) {
        char* cur = environ[i];
        while (*cur){
            if (*cur == 'L'){
                std::cout << environ[i] << std::endl;
                break;
            }
            cur++;
        }
    }

    return 0;
}
