#simpleHilbertCurve

**simpleHilbertCurve** is a Python script that uses matplotlib to create [Hilbert curve](http://en.wikipedia.org/wiki/Hilbert_curve) plots. Hilbert curves are space filling fractals that can be used to map a one dimensional set into two dimensions. Hilbert curves mostly maintain locality meaning that clusters in the 2D representation are most likely close together in the 1D scale too. Hilbert curves can be a useful way of visualy summarizing and comparing large time series or large linear maps (like genomic data).

##Author
[Dent Earl](https://github.com/dentearl/)

##Dependencies
* Python 2.7
* [matplotlib](http://matplotlib.sourceforge.net/) 1.1.0

##Installation
1. Download the package.
2. <code>cd</code> into the directory.
3. Type <code>make</code>.
    
##Usage
    Usage: simpleHilbertCurve.py --level=LEVEL [options] inputFile

    simpleHilbertCurve.py takes a two column input, col1 is a position long a
    scale with values in [0, MAX] and col2 is a value in (-inf, inf).
    The LEVEL determines the length of the side of the square by
    2**LEVEL. By default levels greater than 10 are disallowed, though
    this restriction may be overrided.

    Options:
      -h, --help            show this help message and exit
      -n LEVEL, --level=LEVEL
                            determines the length of one side of the square by 2^LEVEL. There is a
                            restriction that LEVEL <= 8. Using large level values can take a long time
                            or create enormous / resource intensive plots. default=6
      --override            overrides the restrition for --level > 8. Using large level values can take
                            a long time or create enormous / resource intensive plots. default=False
      --normalize           subtracts off the mean and divides by the std dev. default=False
      --cmap=CMAP           The colormap to be used. default=binary Possible values: Spectral, summer,
                            coolwarm, Set1, Set2, Set3, Dark2, hot, RdPu, YlGnBu, RdYlBu, gist_stern,
                            cool, gray, GnBu, gist_ncar, gist_rainbow, bone, RdYlGn, spring, terrain,
                            PuBu, spectral, gist_yarg, BuGn, bwr, cubehelix, YlOrRd, Greens, PRGn,
                            gist_heat, Paired, hsv, Pastel2, Pastel1, BuPu, copper, OrRd, brg, gnuplot2,
                            jet, gist_earth, Oranges, PiYG, YlGn, Accent, gist_gray, flag, BrBG, Reds,
                            RdGy, PuRd, Blues, Greys, autumn, pink, binary, winter, gnuplot, RdBu,
                            prism, YlOrBr, rainbow, seismic, Purples, ocean, PuOr, PuBuGn, afmhot
      --demo                creates a demonstration image based on the --level parameter. default=False
      --matshow             switches the drawing call from pcolor() to matshow(). matshow() produces
                            rasters whereas pcolor() can produce vectors. For pdf or eps output pcolor()
                            looks much crisper but at very large --level values the image can take a
                            long time to draw on screen. default=False
      --dpi=DPI             dots per inch of raster outputs, i.e. if --outFormat is all or png.
                            default=300
      --outFormat=OUTFORMAT
                            output format [pdf|png|eps|all]. default=pdf
      --out=OUT             path/filename where figure will be created. No extension needed.
                            default=myPlot

##Examples
    bin/simpleHilbertCurve.py --level 1 --outFormat png --out example0.1
![Example image](https://github.com/dentearl/simpleHilbertCurve/raw/master/examples/example0.1.png)

    bin/simpleHilbertCurve.py --level 2 --outFormat png --out example0.2
![Example image](https://github.com/dentearl/simpleHilbertCurve/raw/master/examples/example0.2.png)

    bin/simpleHilbertCurve.py --level 3 --outFormat png --out example0.3
![Example image](https://github.com/dentearl/simpleHilbertCurve/raw/master/examples/example0.3.png)

    bin/simpleHilbertCurve.py --level 4 --outFormat png --out example0.4
![Example image](https://github.com/dentearl/simpleHilbertCurve/raw/master/examples/example0.4.png)

    bin/simpleHilbertCurve.py --level 5 --outFormat png --out example1
![Example image](https://github.com/dentearl/simpleHilbertCurve/raw/master/examples/example1.png)
    
    bin/simpleHilbertCurve.py --level 4 --outFormat png --out example2 examples/stocksFord.txt --normalize
![Example image](https://github.com/dentearl/simpleHilbertCurve/raw/master/examples/example2.png)

    bin/simpleHilbertCurve.py --level 4 --outFormat png --out example3 --demo
![Example image](https://github.com/dentearl/simpleHilbertCurve/raw/master/examples/example3.png)

    bin/simpleHilbertCurve.py --level 5 --outFormat png --out example4 --demo --cmap jet
![Example image](https://github.com/dentearl/simpleHilbertCurve/raw/master/examples/example4.png)
