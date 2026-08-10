.class public Lcom/faceunity/pta_client_lite/fuPTAClientLite;
.super Ljava/lang/Object;
.source "fuPTAClientLite.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "pta_client_lite"

    .line 36
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native deformMesh(I[B)[B
.end method

.method public static native facepup(I[F)Z
.end method

.method public static native getHeadBundle(IZZ)[B
.end method

.method public static native releaseData()V
.end method

.method public static native releaseHandle(I)V
.end method

.method public static native setAuth([B)Z
.end method

.method public static native setBundle([B)I
.end method

.method public static native setData([B)Z
.end method
