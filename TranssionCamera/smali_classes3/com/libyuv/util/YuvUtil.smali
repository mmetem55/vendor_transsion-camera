.class public Lcom/libyuv/util/YuvUtil;
.super Ljava/lang/Object;
.source "YuvUtil.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "yuvutil"

    .line 6
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native test()V
.end method

.method public static native yuvCropI420([BII[BIIII)V
.end method

.method public static native yuvI420Copy([BIII[B)V
.end method

.method public static native yuvI420RotateAndToNV21([BII[BI)V
.end method

.method public static native yuvI420ToARGB([BIII[B)V
.end method

.method public static native yuvI420ToNV21([BII[B)V
.end method

.method public static native yuvI420ToNv12([BII[B)V
.end method

.method public static native yuvI420ToUYVY([BIII[B)V
.end method

.method public static native yuvI420ToYUY2([BIII[B)V
.end method

.method public static native yuvI420ToYV12([BIII[B)V
.end method

.method public static native yuvMirrorI420LeftRight([BII[B)V
.end method

.method public static native yuvMirrorI420LeftRightAndRotate([BII[BI)V
.end method

.method public static native yuvMirrorI420UpDown([BII[B)V
.end method

.method public static native yuvNV12ToI420([BII[B)V
.end method

.method public static native yuvNV12ToI420AndRotate([BII[BI)V
.end method

.method public static native yuvNV21ToI420([BII[B)V
.end method

.method public static native yuvNV21ToI420AndRotate([BII[BI)V
.end method

.method public static native yuvRotateI420([BII[BI)V
.end method

.method public static native yuvScaleI420([BII[BIII)V
.end method

.method public static native yuvUYVYToI420([BII[B)V
.end method

.method public static native yuvYUY2ToI420([BII[B)V
.end method

.method public static native yuvYV12ToI420([BII[B)V
.end method
