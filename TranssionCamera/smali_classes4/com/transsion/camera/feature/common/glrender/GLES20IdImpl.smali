.class public Lcom/transsion/camera/feature/common/glrender/GLES20IdImpl;
.super Ljava/lang/Object;
.source "GLES20IdImpl.java"

# interfaces
.implements Lcom/transsion/camera/feature/common/glrender/GLId;


# instance fields
.field private final mTempIntArray:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 10
    iput-object v0, p0, Lcom/transsion/camera/feature/common/glrender/GLES20IdImpl;->mTempIntArray:[I

    return-void
.end method


# virtual methods
.method public generateTexture()I
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/transsion/camera/feature/common/glrender/GLES20IdImpl;->mTempIntArray:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 15
    invoke-static {}, Lcom/transsion/camera/feature/common/glrender/GLES20Canvas;->checkError()V

    .line 16
    iget-object p0, p0, Lcom/transsion/camera/feature/common/glrender/GLES20IdImpl;->mTempIntArray:[I

    aget p0, p0, v2

    return p0
.end method

.method public glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V
    .locals 0

    .line 34
    invoke-static {p2, p3, p4}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 35
    invoke-static {}, Lcom/transsion/camera/feature/common/glrender/GLES20Canvas;->checkError()V

    return-void
.end method

.method public glDeleteFramebuffers(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;I[II)V
    .locals 0

    .line 40
    invoke-static {p2, p3, p4}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 41
    invoke-static {}, Lcom/transsion/camera/feature/common/glrender/GLES20Canvas;->checkError()V

    return-void
.end method

.method public glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V
    .locals 0

    .line 27
    invoke-static {p2, p3, p4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 28
    invoke-static {}, Lcom/transsion/camera/feature/common/glrender/GLES20Canvas;->checkError()V

    return-void
.end method

.method public glGenBuffers(I[II)V
    .locals 0

    .line 21
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 22
    invoke-static {}, Lcom/transsion/camera/feature/common/glrender/GLES20Canvas;->checkError()V

    return-void
.end method
