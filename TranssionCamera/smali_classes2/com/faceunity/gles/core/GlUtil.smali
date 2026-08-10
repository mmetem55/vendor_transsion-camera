.class public abstract Lcom/faceunity/gles/core/GlUtil;
.super Ljava/lang/Object;
.source "GlUtil.java"


# static fields
.field public static final IDENTITY_MATRIX:[F

.field public static final TAG:Ljava/lang/String; = "GlUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 45
    sput-object v0, Lcom/faceunity/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    const/4 v1, 0x0

    .line 46
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 2

    .line 116
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": glError 0x"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 119
    sget-object v0, Lcom/faceunity/gles/core/GlUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static getGlMajorVersion()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x821b

    const/4 v2, 0x0

    .line 249
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES30;->glGetIntegerv(I[II)V

    aget v0, v0, v2

    return v0
.end method
