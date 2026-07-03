char* longestCommonPrefix(char** strs, int strsSize) {
    int i, j;
    int max = -1;
    for (i = 0; i < strsSize; i++) {
        j = 0;
        while (strs[i][j] != '\0')
            j++;
        if (j>max)
            max=j;
    }
    i=0;
    char* result = (char*)malloc(sizeof(char)*(++max));

    while (strs[0][i] != '\0') {
        for (j = 1; j < strsSize; j++)
            if (strs[j][i] != strs[0][i]) {
                result[i] = '\0';
                return result;
            }
        result[i] = strs[0][i];
        i++;
    }
    result[i] = '\0';
    return result;
}