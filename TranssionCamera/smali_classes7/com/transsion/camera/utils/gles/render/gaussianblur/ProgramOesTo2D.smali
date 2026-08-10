.class Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;
.super Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;
.source "ProgramOesTo2D.java"


# static fields
.field private static final VERTEX_DEFAULT_MATRIX:[F


# instance fields
.field private mMvpMatrix:I

.field private mTextureMatrix:I

.field private mTransformMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 40
    fill-array-data v0, :array_0

    sput-object v0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;->VERTEX_DEFAULT_MATRIX:[F

    return-void

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

.method protected constructor <init>()V
    .locals 2

    const-string v0, "attribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nuniform mat4 uTexMatrix;\nuniform mat4 uMVPMatrix;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position =  uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES uSampler;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_FragColor = texture2D(uSampler, vTextureCoord);\n}\n"

    .line 53
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onActiveTexture(I)V
    .locals 1

    const v0, 0x84c0

    .line 77
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v0, 0x8d65

    .line 78
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 79
    iget p0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mSamplerLoc:I

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 62
    invoke-super {p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->onCreate()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 64
    iput-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;->mTransformMatrix:[F

    const/4 p0, 0x0

    .line 65
    invoke-static {v0, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method protected onInitLocation()V
    .locals 2

    .line 70
    invoke-super {p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->onInitLocation()V

    .line 71
    iget v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mProgram:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;->mMvpMatrix:I

    .line 72
    iget v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mProgram:I

    const-string v1, "uTexMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;->mTextureMatrix:I

    return-void
.end method

.method protected onSetOtherData()V
    .locals 4

    .line 84
    invoke-super {p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->onSetOtherData()V

    .line 85
    iget v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;->mTextureMatrix:I

    iget-object v1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;->mTransformMatrix:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 86
    iget p0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;->mMvpMatrix:I

    sget-object v0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;->VERTEX_DEFAULT_MATRIX:[F

    invoke-static {p0, v2, v3, v0, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method protected onUnBind()V
    .locals 1

    const p0, 0x8d40

    const/4 v0, 0x0

    .line 91
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const p0, 0x8d65

    .line 92
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public updateTransformMatrix(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/ProgramOesTo2D;->mTransformMatrix:[F

    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    return-void
.end method
