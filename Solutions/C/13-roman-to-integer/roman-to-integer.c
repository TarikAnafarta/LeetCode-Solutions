int romanToInt(char* s) {
    int i = 0, size = 0, result = 0;

    while (s[size] != '\0')
        size++;

    while (i < size) {
        switch (s[i]) {
        case 'X':
            if (s[i + 1] == 'L') {
                result += 40;
                i += 2;
            } else if (s[i + 1] == 'C') {
                result += 90;
                i += 2;
            } else {
                result += 10;
                i++;
            }
            break;
        case 'I':
            if (s[i + 1] == 'V') {
                result += 4;
                i += 2;
            } else if (s[i + 1] == 'X') {
                result += 9;
                i += 2;
            } else {
                result += 1;
                i++;
            }
            break;
        case 'C':
            if (s[i + 1] == 'D') {
                result += 400;
                i += 2;
            } else if (s[i + 1] == 'M') {
                result += 900;
                i += 2;
            } else {
                result += 100;
                i++;
            }
            break;
        case 'V':
            result += 5;
            i++;
            break;
        case 'L':
            result += 50;
            i++;
            break;
        case 'D':
            result += 500;
            i++;
            break;
        case 'M':
            result += 1000;
            i++;
        }
    }
    return (result);
}