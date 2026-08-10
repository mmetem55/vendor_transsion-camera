.class public Lcom/bytedance/labcv/effectsdk/YUVUtils;
.super Ljava/lang/Object;
.source "YUVUtils.java"


# static fields
.field public static final NV12:I = 0x6

.field public static final NV21:I = 0x7

.field public static final ORIENTATION_0:I = 0x0

.field public static final ORIENTATION_180:I = 0x2

.field public static final ORIENTATION_270:I = 0x3

.field public static final ORIENTATION_90:I = 0x1

.field public static final RGBA:I = 0x0

.field public static final YUV420P:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native RGBA2YUV([B[BIII)V
.end method

.method public static native YUV2RGBA([B[BIIIIIIZ)V
.end method

.method public static native YUVRESIZE([B[BIIIII)V
.end method
