ALGORITHM distincts
VAR
    T : ARRAY_OF INTEGER[3, 1, 7, 9];
    V : ARRAY_OF INTEGER[2, 4, 1, 9, 3];
    exist : BOOLEAN;
    sum,i,j : INTEGER;
BEGIN
    sum := 0;
    FOR i FROM 1 TO T.length STEP 1  DO
        exist := FALSE;
        FOR j FROM 1 TO V.length STEP 1  DO
            IF (T[i] = V[j]) THEN
                exist := TRUE;
            END_IF
        END_FOR

        IF (exist = FALSE) THEN
            sum := sum + T[i];
        END_IF
    END_FOR

    FOR i FROM 1 TO V.length STEP 1  DO
        exist := FALSE;
        FOR j FROM 1 TO T.length STEP 1  DO
            IF (V[i] = T[j]) THEN
                exist := TRUE;
            END_IF
        END_FOR

        IF (exist = FALSE) THEN
            sum := sum + V[i];
        END_IF
              
    END_FOR

    Write(sum);
    
END