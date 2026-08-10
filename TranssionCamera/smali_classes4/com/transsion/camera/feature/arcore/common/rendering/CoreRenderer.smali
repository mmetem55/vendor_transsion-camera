.class public Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;
.super Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;
.source "CoreRenderer.java"


# static fields
.field protected static final DEFAULT_MATRIX:[F

.field private static final IS_SAVE_FOR_TEST:Z

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFBOIds:[I

.field private mRboIds:[I

.field protected mScreenOrientation:I

.field private mTexIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CoreRenderer"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 36
    fill-array-data v0, :array_0

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->DEFAULT_MATRIX:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/faceunity/pta_art/core/base/BaseCore;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;-><init>(Landroid/content/Context;Lcom/faceunity/pta_art/core/base/BaseCore;)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 33
    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mFBOIds:[I

    new-array p2, p1, [I

    .line 34
    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mTexIds:[I

    new-array p1, p1, [I

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mRboIds:[I

    return-void
.end method


# virtual methods
.method protected createBitmapFromFBO(IIII)[I
    .locals 9

    mul-int p0, p3, p4

    .line 129
    new-array v0, p0, [I

    .line 130
    new-array p0, p0, [I

    .line 131
    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v7

    const/4 v8, 0x0

    .line 132
    invoke-virtual {v7, v8}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    if-gez p1, :cond_0

    move v1, v8

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    if-gez p2, :cond_1

    move v2, v8

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v3, p3

    move v4, p4

    .line 140
    :try_start_0
    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    move p1, v8

    :goto_2
    if-ge p1, p4, :cond_3

    mul-int p2, p1, p3

    sub-int v1, p4, p1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p3

    move v2, v8

    :goto_3
    if-ge v2, p3, :cond_2

    add-int v3, p2, v2

    .line 146
    aget v3, v0, v3

    shr-int/lit8 v4, v3, 0x10

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v5, v3, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    const v6, -0xff0100

    and-int/2addr v3, v6

    or-int/2addr v3, v5

    or-int/2addr v3, v4

    add-int v4, v1, v2

    .line 150
    aput v3, p0, v4
    :try_end_0
    .catch Landroid/opengl/GLException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return-object p0

    :catch_0
    move-exception p0

    .line 154
    sget-object p1, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createBitmapFromGLSurface: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/opengl/GLException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected createFBO(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v10, p1

    move/from16 v11, p2

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->isRenderByRotation()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    new-array v1, v2, [I

    goto :goto_0

    :cond_0
    new-array v1, v3, [I

    :goto_0
    iput-object v1, v0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mTexIds:[I

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->isRenderByRotation()Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v2, [I

    goto :goto_1

    :cond_1
    new-array v1, v3, [I

    :goto_1
    iput-object v1, v0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mRboIds:[I

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->isRenderByRotation()Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v1, v2, [I

    goto :goto_2

    :cond_2
    new-array v1, v3, [I

    :goto_2
    iput-object v1, v0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mFBOIds:[I

    .line 53
    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mTexIds:[I

    array-length v2, v1

    const/4 v12, 0x0

    invoke-static {v2, v1, v12}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 54
    iget-object v13, v0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mTexIds:[I

    array-length v14, v13

    move v15, v12

    :goto_3
    const/16 v9, 0xde1

    if-ge v15, v14, :cond_3

    aget v1, v13, v15

    .line 55
    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2802

    const v2, 0x812f

    .line 57
    invoke-static {v9, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 58
    invoke-static {v9, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    const/16 v2, 0x2601

    .line 59
    invoke-static {v9, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2801

    .line 60
    invoke-static {v9, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/16 v16, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v17, v13

    move v13, v9

    move-object/from16 v9, v16

    .line 61
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 62
    invoke-static {v13, v12}, Landroid/opengl/GLES20;->glBindTexture(II)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v13, v17

    goto :goto_3

    :cond_3
    move v13, v9

    .line 66
    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mRboIds:[I

    array-length v2, v1

    invoke-static {v2, v1, v12}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 67
    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mRboIds:[I

    array-length v2, v1

    move v3, v12

    :goto_4
    const v4, 0x8d41

    if-ge v3, v2, :cond_4

    aget v5, v1, v3

    .line 68
    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    const v5, 0x88f0

    .line 69
    invoke-static {v4, v5, v10, v11}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    .line 70
    invoke-static {v4, v12}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 74
    :cond_4
    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mFBOIds:[I

    array-length v2, v1

    invoke-static {v2, v1, v12}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    move v1, v12

    .line 75
    :goto_5
    iget-object v2, v0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mFBOIds:[I

    array-length v3, v2

    if-ge v1, v3, :cond_6

    .line 76
    aget v2, v2, v1

    const v3, 0x8d40

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v2, 0x8ce0

    .line 78
    iget-object v5, v0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mTexIds:[I

    aget v5, v5, v1

    invoke-static {v3, v2, v13, v5, v12}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const v2, 0x8d00

    .line 80
    iget-object v5, v0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mRboIds:[I

    aget v5, v5, v1

    invoke-static {v3, v2, v4, v5}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 82
    invoke-static {v3}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v2

    const v5, 0x8cd5

    if-ne v5, v2, :cond_5

    .line 86
    sget-object v2, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createFBO fbo id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mFBOIds:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",texture id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mTexIds:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",rbo id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mRboIds:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    invoke-static {v3, v12}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 84
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error CreateTmpFBO()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-void
.end method

.method protected destroyFB()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 92
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mFBOIds:[I

    array-length v3, v2

    const-string v4, ",rbo id = "

    const-string v5, ",texture id = "

    const-string v6, "destoryFBO fbo id = "

    if-ge v1, v3, :cond_1

    .line 93
    aget v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const v3, 0x8d40

    .line 94
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v2, 0x8ce0

    const/16 v7, 0xde1

    .line 95
    invoke-static {v3, v2, v7, v0, v0}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const v2, 0x8d00

    const v7, 0x8d41

    .line 96
    invoke-static {v3, v2, v7, v0}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 97
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 98
    sget-object v2, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mFBOIds:[I

    aget v6, v6, v1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mTexIds:[I

    aget v5, v5, v1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mRboIds:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 100
    :goto_2
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mFBOIds:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 101
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mTexIds:[I

    aget v3, v2, v1

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    const/4 v3, 0x1

    .line 102
    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 103
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mRboIds:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 104
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mFBOIds:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 105
    sget-object v2, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mFBOIds:[I

    aget v7, v7, v1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mTexIds:[I

    aget v7, v7, v1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mRboIds:[I

    aget v7, v7, v1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mTexIds:[I

    aput v0, v2, v1

    .line 107
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mFBOIds:[I

    aput v0, v2, v1

    .line 108
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mRboIds:[I

    aput v0, v2, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public drawFrame()V
    .locals 0

    return-void
.end method

.method protected getBundleFBOId()I
    .locals 2

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mFBOIds:[I

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    aget p0, p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method protected getBundleTexId()I
    .locals 2

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mTexIds:[I

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    aget p0, p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getCameraSurfaceSize()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method protected getFBOId()I
    .locals 1

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mFBOIds:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method protected getTexId()I
    .locals 1

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mTexIds:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public init()V
    .locals 1

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore;->mIGLRequester:Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;->setRenderMode(I)V

    return-void
.end method

.method public orientationChanged(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mScreenOrientation:I

    return-void
.end method

.method public sizeChanged(II)V
    .locals 0

    return-void
.end method

.method public snapSurface(II)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public startRecording(Lcom/transsion/camera/app/common/mode/VideoFileSpec;)V
    .locals 0

    return-void
.end method

.method public stopRecording(Ljava/lang/Runnable;)V
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {p0, p1}, Lcom/faceunity/pta_art/core/base/BaseCore;->stopVideoRecorder(Ljava/lang/Runnable;)V

    return-void
.end method

.method public takePicture(Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;Landroid/os/Handler;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public unInit()V
    .locals 0

    .line 231
    invoke-super {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->unInit()V

    return-void
.end method
