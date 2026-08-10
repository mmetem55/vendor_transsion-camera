.class Lcom/transsion/camera/feature/mode/movie/algorithm/RenderUtil;
.super Ljava/lang/Object;
.source "RenderUtil.java"


# static fields
.field private static final CAMERA_INPUT_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nvarying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

.field static final POSITION_COORDINATE:Ljava/lang/String; = "position"

.field private static final SURFACETEXTURE_INPUT_FRAGMENT_SHADER_OES:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\n\nprecision mediump float;\nvarying vec2 textureCoordinate;\nuniform samplerExternalOES inputImageTexture;\n\nvoid main()\n{\n\tgl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

.field private static final SURFACETEXTURE_INPUT_VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n\nvarying vec2 textureCoordinate;\n\nvoid main()\n{\n\ttextureCoordinate = inputTextureCoordinate.xy;\n\tgl_Position = position;\n}"

.field static final TEXTURE_COORDINATE:Ljava/lang/String; = "inputTextureCoordinate"

.field static final TEXTURE_UNIFORM:Ljava/lang/String; = "inputImageTexture"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createTexture()I
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 57
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v0, "glGenTextures"

    .line 58
    invoke-static {v0}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    aget v0, v1, v2

    return v0
.end method

.method static destroyTexture(I)V
    .locals 3

    if-gtz p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 68
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method static loadProgramForSurfaceTexture()I
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n\nvarying vec2 textureCoordinate;\n\nvoid main()\n{\n\ttextureCoordinate = inputTextureCoordinate.xy;\n\tgl_Position = position;\n}"

    const-string v1, "#extension GL_OES_EGL_image_external : require\n\nprecision mediump float;\nvarying vec2 textureCoordinate;\nuniform samplerExternalOES inputImageTexture;\n\nvoid main()\n{\n\tgl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    .line 48
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static loadProgramForTexture()I
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n\nvarying vec2 textureCoordinate;\n\nvoid main()\n{\n\ttextureCoordinate = inputTextureCoordinate.xy;\n\tgl_Position = position;\n}"

    const-string v1, "precision mediump float;\nvarying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    .line 52
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
