.class public Lcom/transsion/camera/supernight/ImageProcess;
.super Ljava/lang/Object;
.source "ImageProcess.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "lightdegrees"

    .line 7
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native LightDegreesPro([BIIII)I
.end method
