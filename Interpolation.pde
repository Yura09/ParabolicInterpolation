 Point C(float t, Point p1, Point p2, Point p3, Point p4) {
        float[] vect = new float[4];
        vect[0] = t * t * t;
        vect[1] = t * t;
        vect[2] = t;
        vect[3] = 1;

        float[][] Matrix = {
            {-1, 3, -3, 1},
            {2, -5, 4, -1},
            {-1, 0, 1, 0},
            {0, 2, 0, 0}
        };
        float[] Res = MultiplyVectOnMatr(vect, Matrix);

        Point[] points = {p1, p2, p3, p4};

        Point res1 = MultiplyVectOnVect(Res, points);

        //res1 = MultiplyP(res1);

        return res1;
    }

    void DrawInterp(Point p1, Point p2, Point p3, Point p4) {

        Point temp = C(0, p1, p2, p3, p4);
        Point next = temp;
        for (float t = 0; t <= 1; t += 0.01) {
            strokeWeight(2);
            //stroke(204, 102, 0); -- 2
            stroke(0, 0, 255);
            temp = next;
            next = C(t, p1, p2, p3, p4);
            line(temp.x, temp.y, temp.z, next.x, next.y, next.z);
            next.drawMyPoint();
            //strokeWeight(1);
            //stroke(0);
        }
    }

    Point p(float r, Point p1, Point p2, Point p3) {
        Point[] ps = {p1, p2, p3};
        float[][] array1 = {{p1.x, p1.y, p1.z},
            {p2.x, p2.y, p2.z},
            {p3.x, p3.y, p3.z}};
        float[] R = {pow(r, 2), r, 1};
        float[][] M = {{2, -4, 2},
            {-3, 4, -1},
            {1, 0, 0}};

        float[][] B = MultiplyMatrOnMatr(M, array1);
        float[] result = MultiplyVectOnMatrAtt2(R, B);

        return new Point(result[0], result[1], result[2]);
    }

    void ShowFirstSegment(Point p11, Point p12, Point p13) {
        Point p44;
        for (float t = 0; t <= 1; t += 0.001) {
            //stroke(0, 0, 255);
            p44 = p(t, p11, p12, p13);
            p44.drawMyPoint();
        }
    }

    void ShowLastSegment(Point p11, Point p22, Point p33) {
        Point p44;
        for (float t = 0; t <= 1; t += 0.001) {
            p44 = p(t, p11, p22, p33);
            p44.drawMyPoint();
        }
    }
