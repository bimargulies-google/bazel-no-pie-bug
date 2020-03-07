bazel build  --linkopt="-no-pie" --linkopt="-static" --features="-pic" hello_world
exit 0
