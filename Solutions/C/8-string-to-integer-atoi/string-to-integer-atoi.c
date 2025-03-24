int myAtoi(char* s) {
    if (s[0]=='\0')
        return 0;

    int i = 0;
    int flag = 1;
    long int result = 0;

    while (s[i] == ' ') {
        i++;
    }

    if (s[i] == '-' || s[i] == '+') {
        if (s[i] == '-')
            flag = -1;
        i++;
    }

    while (s[i] >= '0' && s[i] <= '9') {
        int digit = s[i] - '0';

        if (result > (LONG_MAX - digit) / 10)
            return (flag == 1) ? INT_MAX : INT_MIN;

        result = result * 10 + digit;
        i++;
    }

    result *= flag;

    if (result < INT_MIN) 
        return INT_MIN;
    
    if (result > INT_MAX) 
        return INT_MAX;

    return (int)result;
}