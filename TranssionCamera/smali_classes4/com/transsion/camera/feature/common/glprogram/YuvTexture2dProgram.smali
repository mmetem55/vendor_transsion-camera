.class public Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;
.super Ljava/lang/Object;
.source "YuvTexture2dProgram.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TRIANGLE_VERTICES:[F

.field public static final VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 aPosition; \nattribute vec4 aTextureCoord; \nvarying vec2 vTextureCoord; \nvoid main(){ \n gl_Position = aPosition; \n vTextureCoord = aTextureCoord.xy; \n} \n"

.field public static final YUV420SP_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float; \nuniform sampler2D uTextureY; \nuniform sampler2D uTextureUV; \nuniform int uNV21; \nvarying vec2 vTextureCoord; \nvoid main(){ \n bool flag = false; \n if (flag) \n { \n \tvec4 Y = vec4((texture2D(uTextureY, vTextureCoord).r - 16./255.) * 1.164);\n  vec4 U;\n  vec4 V;\n  if(uNV21 == 1)\n  {\n    U = vec4(texture2D(uTextureUV, vTextureCoord).a - 128./255.);\n    V = vec4(texture2D(uTextureUV, vTextureCoord).r - 128./255.);\n  }else{\n    U = vec4(texture2D(uTextureUV, vTextureCoord).r - 128./255.);\n    V = vec4(texture2D(uTextureUV, vTextureCoord).a - 128./255.);\n  }\n  Y += V * vec4(1.596, -0.813, 0, 0);\n  Y += U * vec4(0, -0.392, 2.017, 0);\n  Y.a = 1.0;\n  gl_FragColor = Y;\n }else{ \n  mediump vec3 yuv;\n yuv.x = texture2D(uTextureY, vTextureCoord).r;\n if(uNV21 == 1)\n {\n  yuv.y = texture2D(uTextureUV, vTextureCoord).a - 0.5;\n  yuv.z = texture2D(uTextureUV, vTextureCoord).r - 0.5;\n }else{\n  yuv.y = texture2D(uTextureUV, vTextureCoord).r - 0.5;\n  yuv.z = texture2D(uTextureUV, vTextureCoord).a - 0.5;\n }\n lowp vec3 rgb;\n rgb = mat3(1, 1, 1, 0, -0.39465, 2.03211, 1.13983, -0.58060, 0) * yuv;\n gl_FragColor = vec4(rgb, 1);\n }\n} \n"


# instance fields
.field private final FLOAT_SIZE_BYTES:I

.field private final TRIANGLE_VERTICES_DATA_POS_OFFSET:I

.field private final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I

.field private final TRIANGLE_VERTICES_DATA_UV_OFFSET:I

.field private final YUV_TEXTURE_NUM:I

.field private mMvpMatrix:I

.field private mNV21Handle:I

.field private mPositionHandle:I

.field private mProgramHandle:I

.field private mTextureCoordBuffer:Ljava/nio/FloatBuffer;

.field private mTextureHandle:I

.field private mTextureHandleUV:I

.field private mTextureHandleY:I

.field private mTextureIds:[I

.field private mTextureTarget:I

.field private mTransformMatrix:[F

.field private mTriangleVertices:Ljava/nio/FloatBuffer;

.field private mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x14

    new-array v0, v0, [F

    .line 79
    fill-array-data v0, :array_0

    sput-object v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->TRIANGLE_VERTICES:[F

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
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 74
    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->YUV_TEXTURE_NUM:I

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->TRIANGLE_VERTICES_DATA_POS_OFFSET:I

    const/4 v0, 0x3

    .line 76
    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->TRIANGLE_VERTICES_DATA_UV_OFFSET:I

    const/4 v0, 0x4

    .line 77
    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->FLOAT_SIZE_BYTES:I

    const/16 v0, 0x14

    .line 78
    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I

    .line 249
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->initVertexData()V

    .line 250
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->createTextures()V

    const-string v0, "attribute vec4 aPosition; \nattribute vec4 aTextureCoord; \nvarying vec2 vTextureCoord; \nvoid main(){ \n gl_Position = aPosition; \n vTextureCoord = aTextureCoord.xy; \n} \n"

    const-string v1, "precision mediump float; \nuniform sampler2D uTextureY; \nuniform sampler2D uTextureUV; \nuniform int uNV21; \nvarying vec2 vTextureCoord; \nvoid main(){ \n bool flag = false; \n if (flag) \n { \n \tvec4 Y = vec4((texture2D(uTextureY, vTextureCoord).r - 16./255.) * 1.164);\n  vec4 U;\n  vec4 V;\n  if(uNV21 == 1)\n  {\n    U = vec4(texture2D(uTextureUV, vTextureCoord).a - 128./255.);\n    V = vec4(texture2D(uTextureUV, vTextureCoord).r - 128./255.);\n  }else{\n    U = vec4(texture2D(uTextureUV, vTextureCoord).r - 128./255.);\n    V = vec4(texture2D(uTextureUV, vTextureCoord).a - 128./255.);\n  }\n  Y += V * vec4(1.596, -0.813, 0, 0);\n  Y += U * vec4(0, -0.392, 2.017, 0);\n  Y.a = 1.0;\n  gl_FragColor = Y;\n }else{ \n  mediump vec3 yuv;\n yuv.x = texture2D(uTextureY, vTextureCoord).r;\n if(uNV21 == 1)\n {\n  yuv.y = texture2D(uTextureUV, vTextureCoord).a - 0.5;\n  yuv.z = texture2D(uTextureUV, vTextureCoord).r - 0.5;\n }else{\n  yuv.y = texture2D(uTextureUV, vTextureCoord).r - 0.5;\n  yuv.z = texture2D(uTextureUV, vTextureCoord).a - 0.5;\n }\n lowp vec3 rgb;\n rgb = mat3(1, 1, 1, 0, -0.39465, 2.03211, 1.13983, -0.58060, 0) * yuv;\n gl_FragColor = vec4(rgb, 1);\n }\n} \n"

    .line 251
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mProgramHandle:I

    const-string v1, "aPosition"

    .line 252
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mPositionHandle:I

    .line 253
    iget v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mProgramHandle:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTextureHandle:I

    .line 254
    iget v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mProgramHandle:I

    const-string v1, "uTextureY"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTextureHandleY:I

    .line 255
    iget v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mProgramHandle:I

    const-string v1, "uTextureUV"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTextureHandleUV:I

    .line 256
    iget v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mProgramHandle:I

    const-string v1, "uNV21"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mNV21Handle:I

    const-string p0, "initShader"

    .line 257
    invoke-static {p0}, Lcom/transsion/camera/feature/common/utils/GlUtil;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method private checkGlError(Ljava/lang/String;)V
    .locals 3

    .line 153
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 154
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 155
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

    .line 195
    sget-object v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createProgram"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const v1, 0x8b31

    .line 197
    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->loadShader(ILjava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    const v2, 0x8b30

    .line 203
    invoke-direct {p0, v2, p2}, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->loadShader(ILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    return v1

    .line 209
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v3, "glAttachShader"

    .line 212
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->checkGlError(Ljava/lang/String;)V

    .line 213
    invoke-static {v2, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 214
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->checkGlError(Ljava/lang/String;)V

    .line 216
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x8b82

    .line 220
    invoke-static {v2, v5, v4, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v4, v4, v1

    if-eq v4, v3, :cond_2

    .line 223
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

    .line 224
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 229
    :goto_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 230
    invoke-static {p2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const-string p1, "glDeleteShader"

    .line 231
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->checkGlError(Ljava/lang/String;)V

    .line 233
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
    .locals 6

    .line 138
    sget-object v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createTextures"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 139
    iput-object v2, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTextureIds:[I

    const/4 v3, 0x0

    .line 140
    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    :goto_0
    if-ge v3, v0, :cond_0

    .line 142
    iget-object v2, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTextureIds:[I

    aget v2, v2, v3

    const/16 v4, 0xde1

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2801

    const v5, 0x46180400    # 9729.0f

    .line 143
    invoke-static {v4, v2, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2800

    .line 144
    invoke-static {v4, v2, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2802

    const v5, 0x812f

    .line 145
    invoke-static {v4, v2, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    .line 146
    invoke-static {v4, v2, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    :cond_0
    invoke-static {v1}, Lcom/transsion/camera/feature/common/utils/GlUtil;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method private initVertexData()V
    .locals 4

    .line 160
    sget-object v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initVertexData"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 161
    sget-object v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->TRIANGLE_VERTICES:[F

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 162
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 163
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 164
    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 166
    invoke-static {v1}, Lcom/transsion/camera/feature/common/utils/GlUtil;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method private loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 7

    .line 102
    sget-object p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFromAssetsFile   fname = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 111
    :try_start_0
    invoke-virtual {p2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 112
    :try_start_1
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 113
    :try_start_2
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 114
    :try_start_3
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {v1, p2, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 115
    :try_start_4
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 116
    :try_start_5
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 118
    :goto_0
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 119
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 122
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "\\r\\n"

    const-string v5, "\n"

    .line 123
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 127
    invoke-static {v2}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 128
    invoke-static {v3}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 129
    invoke-static {v0}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 130
    invoke-static {v1}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 131
    invoke-static {p1}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 132
    invoke-static {p2}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_6

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :catch_0
    move-exception v4

    move-object v6, v2

    move-object v2, p0

    move-object p0, v6

    goto/16 :goto_5

    :catchall_1
    move-exception v3

    move-object v6, v3

    move-object v3, p0

    goto/16 :goto_7

    :catch_1
    move-exception v4

    move-object v3, p0

    move-object p0, v2

    move-object v2, v3

    goto/16 :goto_5

    :catchall_2
    move-exception v2

    move-object v3, p0

    move-object p0, v2

    move-object v2, v3

    goto/16 :goto_8

    :catch_2
    move-exception v4

    move-object v2, p0

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v2, p0

    move-object v3, v2

    move-object p0, v1

    move-object v1, v3

    goto/16 :goto_8

    :catch_3
    move-exception v4

    move-object v1, p0

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v1, p0

    move-object v2, v1

    move-object v3, v2

    move-object p0, v0

    move-object v0, v3

    goto :goto_8

    :catch_4
    move-exception v4

    move-object v0, p0

    goto :goto_2

    :catchall_5
    move-exception p2

    move-object v0, p0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object p0, p2

    move-object p2, v3

    goto :goto_8

    :catch_5
    move-exception v4

    move-object p2, p0

    goto :goto_1

    :catchall_6
    move-exception p1

    move-object p2, p0

    move-object v0, p2

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object p0, p1

    move-object p1, v3

    goto :goto_8

    :catch_6
    move-exception v4

    move-object p1, p0

    move-object p2, p1

    :goto_1
    move-object v0, p2

    :goto_2
    move-object v1, v0

    :goto_3
    move-object v2, v1

    :goto_4
    move-object v3, v2

    .line 125
    :goto_5
    :try_start_7
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 127
    invoke-static {p0}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 128
    invoke-static {v3}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 129
    invoke-static {v0}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 130
    invoke-static {v1}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 131
    invoke-static {p1}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 132
    invoke-static {p2}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    move-object p0, v2

    :goto_6
    return-object p0

    :catchall_7
    move-exception v2

    move-object v6, v2

    move-object v2, p0

    :goto_7
    move-object p0, v6

    .line 127
    :goto_8
    invoke-static {v2}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 128
    invoke-static {v3}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 129
    invoke-static {v0}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 130
    invoke-static {v1}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 131
    invoke-static {p1}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 132
    invoke-static {p2}, Lcom/transsion/camera/feature/common/utils/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 133
    throw p0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 3

    .line 170
    sget-object p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 172
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 176
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const v2, 0x8b81

    .line 180
    invoke-static {v0, v2, p2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p2, p2, v1

    if-nez p2, :cond_0

    .line 183
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

    .line 184
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

    .line 185
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v1

    .line 190
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
.method public draw(IIIILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v10, p3

    move/from16 v11, p4

    if-eqz p5, :cond_1

    if-nez p6, :cond_0

    goto/16 :goto_0

    :cond_0
    move/from16 v1, p1

    move/from16 v2, p2

    .line 264
    invoke-static {v1, v2, v11, v10}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 266
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mProgramHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 267
    iget-object v1, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 268
    iget v2, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mPositionHandle:I

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x14

    iget-object v7, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 269
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mPositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 270
    iget-object v1, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 271
    iget v3, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTextureHandle:I

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x14

    iget-object v8, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 272
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTextureHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v13, 0xcf5

    const/4 v14, 0x1

    .line 273
    invoke-static {v13, v14}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    const v1, 0x84c0

    .line 277
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 278
    iget-object v1, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTextureIds:[I

    aget v1, v1, v12

    const/16 v15, 0xde1

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1909

    const/16 v7, 0x1909

    const/16 v8, 0x1401

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v9, p5

    .line 279
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 280
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTextureHandleY:I

    invoke-static {v1, v12}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v1, 0x84c1

    .line 283
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 284
    iget-object v1, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTextureIds:[I

    aget v1, v1, v14

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0xde1

    const/16 v3, 0x190a

    .line 285
    div-int/lit8 v4, v10, 0x2

    div-int/lit8 v5, v11, 0x2

    const/16 v7, 0x190a

    move-object/from16 v9, p6

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 286
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTextureHandleUV:I

    invoke-static {v1, v14}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 287
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mNV21Handle:I

    invoke-static {v1, v14}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    .line 289
    invoke-static {v1, v12, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 290
    iget v1, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mPositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 291
    iget v0, v0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 292
    invoke-static {v13, v2}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 293
    invoke-static {v15, v12}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 243
    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, -0x1

    .line 244
    iput v0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mProgramHandle:I

    const/4 v0, 0x2

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/feature/common/glprogram/YuvTexture2dProgram;->mTextureIds:[I

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method
