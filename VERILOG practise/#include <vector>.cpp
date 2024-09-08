#include <iostream>
#include <vector>
#include <string>

std::vector<int> my_func(const std::string& s = "aaaaaaaabb") {
    int n = s.size();
    std::vector<int> a(n);
    for (int i = 1; i < n; i++) {
        while (i + a[i] < n && s[a[i]] == s[i + a[i]]) {
            a[i]++;
        }
    }
    std::cout << a[1] << std::endl;
    return a;
}

int main() {
    std::vector<int> result = my_func();
    return 0;
}