#!/bin/sh -e

V=`ocamlc -version`
case $V in
4.02*) SRC=402 ;;
4.03*) SRC=403 ;;
*) echo Unsupported OCaml version $V ;;
esac
echo "(* Do not edit this autogenerated file, edit ppx_cstruct.$SRC.ml instead *)" > ppx/ppx_cstruct.ml
cat ppx/ppx_cstruct.$SRC.ml >> ppx/ppx_cstruct.ml
echo Generating ppx/ppx_cstruct.ml from ppx/ppx_cstruct.$SRC.ml
