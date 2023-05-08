#include "matrix.h"

Matrix * xCreateMatrix(uint8_t rows, uint8_t cols, double * newData)
{
    Matrix * newMatrix = (Matrix*) malloc(sizeof(Matrix));
    newMatrix->rows = rows;
    newMatrix->cols = cols;
    newMatrix->matrixData = (double*) malloc(rows * cols * sizeof(double));
    memcpy(newMatrix->matrixData, newData, rows*cols*sizeof(double));

    return newMatrix;
}

Matrix * xDotProduct(Matrix * matrix1, Matrix * matrix2)
{
    if (matrix1->cols != matrix2->rows)
    {
        printf("matrix1 cols does not equal matrix2 rows");
        return NULL;
    }

    Matrix * dotMatrix = xCreateEmptyMatrix(matrix1->rows, matrix2->cols);

    for (uint8_t row = 0; row < dotMatrix->rows; row++)
    {
        double * tempRowVal = xGetRow(matrix1, row);
        for (uint8_t col = 0; col < dotMatrix->cols; col++)
        {
            double * tempColValue = xGetCol(matrix2, col);
            double sum = 0.0;
            for (uint8_t i = 0; i < matrix1->cols; i++)
            {
                sum += tempRowVal[i] * tempColValue[i];
            }
            dotMatrix->matrixData[row * dotMatrix->cols + col] = sum;
            free(tempColValue);
        }
        free(tempRowVal);
    }

    return dotMatrix;
}

Matrix * xMatrixAdd(Matrix * matrix1, Matrix * matrix2)
{
    if (matrix1->rows != matrix2->rows || matrix1->cols != matrix2->cols)
    {
        printf("Cannot add matricies of different sizes\n");
        return NULL;
    }

    Matrix * matrixSum = xCreateEmptyMatrix(matrix1->rows, matrix2->cols);

    for (uint8_t row = 0; row < matrixSum->rows; row++)
    {
        for (uint8_t col = 0; col < matrixSum->cols; col++)
        {
            matrixSum->matrixData[row * matrixSum->cols + col] = matrix1->matrixData[row * matrix1->cols + col] + matrix2->matrixData[row * matrix2->cols + col];
        }
    }
    return matrixSum;
}

static Matrix * xCreateEmptyMatrix(uint8_t rows, uint8_t cols)
{
    Matrix * matrix = (Matrix*) malloc(sizeof(Matrix));
    matrix->rows = rows;
    matrix->cols = cols;
    matrix->matrixData = (double*) calloc(rows * cols, sizeof(double));
    return matrix;   
}

static double * xGetRow(Matrix * m, uint8_t rowNum)
{
    if (rowNum >= m->rows)
    {
        printf("Matrix does not contain that row");
        return NULL;
    }

    double * rowRetVal = (double *) malloc(m->cols * sizeof(double));

    for (uint8_t col = 0; col < m->cols; col++)
    {
        rowRetVal[col] = m->matrixData[rowNum * m->rows + col];
    }

    return rowRetVal;
}

static double * xGetCol(Matrix * m, uint8_t colNum)
{
    if (colNum >= m->cols)
    {
        printf("Matrix does not contain that col");
        return NULL;
    }

    double * colRetVal = (double *) malloc(m->rows * sizeof(double));

    for (uint8_t row = 0; row < m->rows; row++)
    {
        colRetVal[row] = m->matrixData[row * m->cols + colNum];
    }

    return colRetVal;
}

void vPrintMatrix(Matrix * m)
{
    for (uint16_t row = 0; row < m->rows; row++)
    {
        for (uint16_t col = 0; col < m->cols; col++)
        {
            printf("%f ", m->matrixData[row * m->cols + col]);
        }
        printf("\n");
    }
}