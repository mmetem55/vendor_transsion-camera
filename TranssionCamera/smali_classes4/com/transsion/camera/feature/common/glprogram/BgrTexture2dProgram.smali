.class public final Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;
.super Ljava/lang/Object;
.source "BgrTexture2dProgram.java"


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float; \nuniform sampler2D uTexture; \nvarying vec2 vTextureCoord; \nvoid main() { \n    mediump vec3 rgb; \n    rgb.r = texture2D(uTexture, vTextureCoord).b; \n    rgb.g = texture2D(uTexture, vTextureCoord).g; \n    rgb.b = texture2D(uTexture, vTextureCoord).r; \n    gl_FragColor = vec4(rgb, 1); \n} \n"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TRIANGLE_VERTICES:[F

.field private static final TRIANGLE_VERTICES_DATA_OFFSET:I = 0x3

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x1c

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uTexMatrix;\nattribute vec4 aPosition; \nattribute vec4 aTextureCoord; \nvarying vec2 vTextureCoord; \nvoid main(){ \n    gl_Position = aPosition; \n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n} \n"


# instance fields
.field private final mPositionHandle:I

.field private mProgramHandle:I

.field private final mTextureHandle:I

.field private mTextureIds:[I

.field private final mTextureMatrix:I

.field private final mTextureSamplerHandle:I

.field private final mTransformMatrix:[F

.field private mTriangleVertices:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x1c

    new-array v0, v0, [F

    .line 53
    fill-array-data v0, :array_0

    sput-object v0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->TRIANGLE_VERTICES:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->initVertexData()V

    .line 75
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->createTextures()V

    const-string v0, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition; \nattribute vec4 aTextureCoord; \nvarying vec2 vTextureCoord; \nvoid main(){ \n    gl_Position = aPosition; \n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n} \n"

    const-string v1, "precision mediump float; \nuniform sampler2D uTexture; \nvarying vec2 vTextureCoord; \nvoid main() { \n    mediump vec3 rgb; \n    rgb.r = texture2D(uTexture, vTextureCoord).b; \n    rgb.g = texture2D(uTexture, vTextureCoord).g; \n    rgb.b = texture2D(uTexture, vTextureCoord).r; \n    gl_FragColor = vec4(rgb, 1); \n} \n"

    .line 76
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mProgramHandle:I

    const-string v1, "aPosition"

    .line 77
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mPositionHandle:I

    .line 78
    iget v0, p0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mProgramHandle:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mTextureHandle:I

    .line 79
    iget v0, p0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mProgramHandle:I

    const-string v1, "uTexMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mTextureMatrix:I

    .line 80
    iget v0, p0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mProgramHandle:I

    const-string v1, "uTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mTextureSamplerHandle:I

    const-string v0, "initShader"

    .line 81
    invoke-static {v0}, Lcom/transsion/camera/feature/common/utils/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 83
    iput-object v0, p0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mTransformMatrix:[F

    const/4 p0, 0x0

    .line 84
    invoke-static {v0, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method private checkGlError(Ljava/lang/String;)V
    .locals 3

    .line 179
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 180
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ES20_ERROR : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": glError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 181
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 111
    sget-object v0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createProgram"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const v1, 0x8b31

    .line 113
    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->loadShader(ILjava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    const v2, 0x8b30

    .line 119
    invoke-direct {p0, v2, p2}, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->loadShader(ILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    return v1

    .line 124
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v3, "glAttachShader"

    .line 127
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->checkGlError(Ljava/lang/String;)V

    .line 128
    invoke-static {v2, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 129
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->checkGlError(Ljava/lang/String;)V

    .line 131
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x8b82

    .line 135
    invoke-static {v2, v5, v4, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v4, v4, v1

    if-eq v4, v3, :cond_2

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ES20_ERROR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 144
    :goto_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 145
    invoke-static {p2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const-string p1, "glDeleteShader"

    .line 146
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->checkGlError(Ljava/lang/String;)V

    .line 148
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "createProgram   program = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private createTextures()V
    .locals 4

    .line 99
    sget-object v0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createTextures"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v2, v0, [I

    .line 100
    iput-object v2, p0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mTextureIds:[I

    const/4 v3, 0x0

    .line 101
    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mTextureIds:[I

    aget p0, p0, v3

    const/16 v0, 0xde1

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p0, 0x2801

    const v2, 0x46180400    # 9729.0f

    .line 103
    invoke-static {v0, p0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p0, 0x2800

    .line 104
    invoke-static {v0, p0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p0, 0x2802

    const v2, 0x812f

    .line 105
    invoke-static {v0, p0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p0, 0x2803

    .line 106
    invoke-static {v0, p0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 107
    invoke-static {v1}, Lcom/transsion/camera/feature/common/utils/GlUtil;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method private initVertexData()V
    .locals 4

    .line 88
    sget-object v0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initVertexData"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->TRIANGLE_VERTICES:[F

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 91
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 93
    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 95
    invoke-static {v1}, Lcom/transsion/camera/feature/common/utils/GlUtil;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 3

    .line 153
    sget-object p0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadShader   shaderType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", source = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 155
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 157
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 159
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const v2, 0x8b81

    .line 163
    invoke-static {v0, v2, p2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p2, p2, v1

    if-nez p2, :cond_0

    .line 166
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ES20_ERROR: Could not compile shader "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ES20_ERROR : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 168
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v1

    .line 173
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "loadShader   shader = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public draw(IIIILjava/nio/ByteBuffer;)V
    .locals 17

    move-object/from16 v0, p0

    if-nez p5, :cond_0

    return-void

    :cond_0
    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 196
    invoke-static {v1, v2, v5, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 199
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mProgramHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 200
    iget-object v1, v0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 201
    iget v11, v0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mPositionHandle:I

    const/4 v12, 0x3

    const/16 v13, 0x1406

    const/4 v14, 0x0

    const/16 v15, 0x1c

    iget-object v1, v0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v1

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 202
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mPositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 203
    iget-object v1, v0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 204
    iget v11, v0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mTextureHandle:I

    const/4 v12, 0x4

    iget-object v1, v0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v1

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 205
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mTextureHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 206
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mTextureMatrix:I

    iget-object v2, v0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mTransformMatrix:[F

    const/4 v3, 0x1

    invoke-static {v1, v3, v10, v2, v10}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v1, 0x84c0

    .line 210
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 211
    iget-object v1, v0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mTextureIds:[I

    aget v1, v1, v10

    const/16 v11, 0xde1

    invoke-static {v11, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v12, 0xcf5

    .line 212
    invoke-static {v12, v3}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1907

    const/4 v6, 0x0

    const/16 v7, 0x1907

    const/16 v8, 0x1401

    move-object/from16 v9, p5

    .line 213
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/4 v1, 0x4

    .line 214
    invoke-static {v12, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 215
    iget v2, v0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mTextureSamplerHandle:I

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 v2, 0x5

    .line 217
    invoke-static {v2, v10, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 218
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mPositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 219
    iget v0, v0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 220
    invoke-static {v11, v10}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public flip(ZZ)V
    .locals 5

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mTransformMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mTransformMatrix:[F

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mTransformMatrix:[F

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v4

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-static {v0, v1, p1, v2, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mTransformMatrix:[F

    const/high16 p1, -0x41000000    # -0.5f

    invoke-static {p0, v1, p1, p1, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 229
    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, -0x1

    .line 230
    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mProgramHandle:I

    const/4 v0, 0x1

    .line 231
    iget-object p0, p0, Lcom/transsion/camera/feature/common/glprogram/BgrTexture2dProgram;->mTextureIds:[I

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method
