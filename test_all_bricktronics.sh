#!/bin/bash
# A script to iterate over all our Bricktronics libraries and
# verify all the example sketches.

for i in Bricktronics*; do
    echo $i
    cd $i

    if [ -f VerifySketchConfig.py ]; then
        if ! python VerifySketchConfig.py; then
            # Error
            exit 1
        fi
    fi

    cd ..
done

echo "Finished!"

