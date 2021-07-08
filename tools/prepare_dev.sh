python3 -m prepare_client --distribution dev --build-dir ../build --src-dir .. \
                              --server-ver toontown-dev --build-mfs \
                              --resources-dir ../../resources \
                              --include NonRepeatableRandomSourceUD.py \
                              --include NonRepeatableRandomSourceAI.py \
                              --exclude ServiceStart.py \
                              --vfs phase_3.mf --vfs phase_3.5.mf --vfs phase_4.mf --vfs phase_5.mf \
                              --vfs phase_5.5.mf --vfs phase_6.mf --vfs phase_7.mf --vfs phase_8.mf \
                              --vfs phase_9.mf --vfs phase_10.mf --vfs phase_11.mf --vfs phase_12.mf \
                              --vfs phase_13.mf \
                              otp toontown
cp auxiliary/* ../build