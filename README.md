# docker-fddb-evaluator

Docker image for [FDDB (Face Detection Data Set and Benchmark)](http://vis-www.cs.umass.edu/fddb/results.html) evaluation.

## Usage

Make sure you have the following directory structure in `FDDB_HOME`:

```
originalPics/
   2002/
   (...)
FDDB-folds/
   FDDB-fold-01-ellipseList.txt
   FDDB-fold-01.txt
   (...)
detections/
   FDDB-fold-01.txt
   FDDB-fold-02.txt
   (...)
```

Run the command below mapping `FDDB_HOME` to `/FDDB`:

```bash
docker run --rm -it \
   -v ${FDDB_HOME}:/FDDB \
   housebw/fddb-evaluator
```

If everything goes fine you should see:

```bash
Processing 2845 images
0 images done
(...)
2844 images done
```

And 4 new files in `FDDB_HOME`:

* detectionsContROC.png
* detectionsContROC.txt
* detectionsDiscROC.png
* detectionsDiscROC.txt
