float[] MultiplyVectOnMatr(float[] Vect, float[][] Matr) {
        float[] resultVect = new float[4];

        for (int j = 0; j < 4; ++j) {
            resultVect[j] = 0;
            for (int k = 0; k < 4; ++k) {
                resultVect[j] += Vect[k] * Matr[k][j];
            }
        }
        return resultVect;
    }

    Point MultiplyVectOnVect(float[] vect, Point[] points) {
        Point pointRs = new Point(0, 0, 0);


        for (int k = 0; k < 4; ++k) {
            pointRs.x += vect[k] * points[k].x;
        }
        for (int k = 0; k < 4; ++k) {
            pointRs.y += vect[k] * points[k].y;
        }
        for (int k = 0; k < 4; ++k) {
            pointRs.z += vect[k] * points[k].z;
        }
        return MultiplyP(pointRs);
    }

    Point MultiplyP(Point p) {
        return new Point(p.x * 0.5, p.y * 0.5, p.z * 0.5);
    }

    float[][] MultiplyMatrOnMatr(float[][] m1, float[][] m2) {
        float[][] newMatr = new float[3][3];
      
        int i1 = 0, j1 = 0;
        for (int i = 0; i < 9; ++i) {
            i1 = i / 3;
            j1 = i % 3;
            newMatr[i1][j1] = 0;
        }
        for (int i = 0; i < 3; ++i) {
            for (int j = 0; j < 3; ++j) {
                for (int k = 0; k < 3; ++k) {
                    newMatr[i][j] += m1[i][k] * m2[k][j];
                }
            }
        }
        return newMatr;
    }

    float[] MultiplyVectOnMatrAtt2(float[] Vect, float[][] Matr) {
        float[] resultVect = new float[3];

        for (int j = 0; j < 3; ++j) {
            resultVect[j] = 0;
            for (int k = 0; k < 3; ++k) {
                resultVect[j] += Vect[k] * Matr[k][j];
            }
        }
        return resultVect;
    }
