#!/bin/bash
set -eux

SLIDES=(
    "intro"
    "modelling"
    "fundeps"
    "normalization"
    "relalgebra"
    "relcalculus"
    "modification"
    "indexing"
    "procedures"
    "transactions"
    "optimization"
    "distributed"
    "null"
    "orm"
    "trees"
    "temporal"
)

LINK="https://www.kgeorgiy.info//courses/dbms/slides"

for slides in "${SLIDES[@]}"; do
    link="$LINK/$slides.xhtml"
    mkdir "$slides" || true
    wget -nd -r -P "$slides" -A svg "$link"
    wget -nd -r -P "$slides" -A png "$link"
    find "$slides" -name 'robots.txt.*' -delete
done
