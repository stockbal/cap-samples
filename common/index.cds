namespace devepos.common;

type StringBoolean : String(1) @assert.range enum {
    ![TRUE]  = 'X';
    ![FALSE] = '';
}
