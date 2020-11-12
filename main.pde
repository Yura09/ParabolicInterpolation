 float x, y, z;
    ArrayList<Point> points = new ArrayList<Point>();
    boolean click = false;
    int counter = 0;
    int global = 0;

    void Add(Point p) {
        counter++;
        points.add(p);
        if (counter > 4) {
            global++;
        }
    }

    void setup() {
        float h = 800;
        float w = 500;
        x = h / 2 - 150;
        y = w / 2;
        z = 0;
        //Add(new Point(-100,0,100));
        //Add(new Point(0,50,200));
        //Add(new Point(100,-50,250));
        //Add(new Point(200,0,40));
        //Add(new Point(250,210,30));
        //Add(new Point(50,40,100));
        Add(new Point(-100, 0, 0));
        Add(new Point(0, 100, 0));
        Add(new Point(100, -50, 0));
        Add(new Point(200, 50, 0));
        Add(new Point(250, -150, 0));
        Add(new Point(300, 40, 0));
        Add(new Point(350, -40, 0));
        size(800, 500, P3D);
        background(250);
    }

    void draw() {
        background(255);
        camera(mouseX, mouseY, (height / 2.0) / tan(PI * 30.0 / 180.0), width / 2.0, height / 2.0, 0, 0, 1, 0);
        translate(x, y, z);
        for (int i = 0; i < points.size(); ++i) {
            points.get(i).drawMyPoint();
        }
        if (click) {

            click = true;

            for (int i = 0; i <= global; ++i) {
                ShowFirstSegment(points.get(i), points.get(i + 1), points.get(i + 2));
                DrawInterp(points.get(i + 0), points.get(i + 1), points.get(i + 2), points.get(i + 3));
                ShowLastSegment(points.get(i + 1), points.get(i + 2), points.get(i + 3));
            }
        }
    }

    void keyPressed() {
        if (key == ENTER) {
            click = true;
        } else if (key == DELETE) {
            click = false;
            clear();
            background(250);
        }
    }
