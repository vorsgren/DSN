#!/bin/bash

tar -xvf umu-launcher-1.4.4-zipapp.tar \
&& cd umu \
&& mv umu-run $HOME/bin \
&& cd .. \
&& rm -r umu
