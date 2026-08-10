.class public Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;
.super Ljava/lang/Object;
.source "Texture2dProgram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TEXTURE_COORDINATE:[F

.field private static final VERTEX_COORDINATE:[F

.field private static final VERTEX_DEFAULT_MATRIX:[F


# instance fields
.field private mCoordsVertexSize:I

.field private mMvpMatrix:I

.field private mProgramHandle:I

.field private mProgramType:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

.field private mTextureCoordBuffer:Ljava/nio/FloatBuffer;

.field private mTextureMatrix:I

.field private mTextureSampler:I

.field private mTextureTarget:I

.field private mTransformMatrix:[F

.field private mUseMatrixFromTexture:Z

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private maPositionLoc:I

.field private maTextureCoordLoc:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 115
    fill-array-data v1, :array_0

    sput-object v1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->VERTEX_COORDINATE:[F

    new-array v0, v0, [F

    .line 122
    fill-array-data v0, :array_1

    sput-object v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->TEXTURE_COORDINATE:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 129
    fill-array-data v0, :array_2

    sput-object v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->VERTEX_DEFAULT_MATRIX:[F

    .line 150
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Texture2dProg"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
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

.method public constructor <init>(Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V
    .locals 6

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramType:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mUseMatrixFromTexture:Z

    .line 159
    sget-object v1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$1;->$SwitchMap$com$transsion$camera$app$ui$opengl$Texture2dProgram$ProgramType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0xde1

    const/4 v3, 0x2

    const-string v4, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position =  uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    if-eq v1, v0, :cond_3

    const v0, 0x8d65

    if-eq v1, v3, :cond_2

    const/4 v5, 0x3

    if-eq v1, v5, :cond_1

    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    .line 173
    iput v2, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureTarget:I

    const-string p1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\n// linear sRGB to linear Display-P3\nmat3 ls2lp3 = mat3(\n    0.82259269, 0.17753369, -0.00000019,\n    0.03319958, 0.96678351, 0.00000029,\n    0.01708551, 0.07239614, 0.91030199);\nvoid convertSrgb2p3() {\n    // 1. degamma with 2.2, expanding sRGB to linear-sRGB;\n    // 2. linear-sRGB to linear-P3;\n    // 3. gamma encoding with 1/2.2;\n    float gamma = 2.2;\n    gl_FragColor.rgb = pow(gl_FragColor.rgb, vec3(gamma));\n    gl_FragColor.rgb = gl_FragColor.rgb * ls2lp3; // \u53f3\u4e58\n    // gamma\n    gl_FragColor.rgb = pow(gl_FragColor.rgb, vec3(1./gamma));\n}\nvoid main() {\n    gl_FragColor = clamp(texture2D(sTexture, vTextureCoord), 0.0, 1.0);\n    convertSrgb2p3();\n}\n"

    .line 174
    invoke-static {v4, p1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    goto :goto_0

    .line 177
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 169
    :cond_1
    iput v0, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureTarget:I

    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\n// linear sRGB to linear Display-P3\nmat3 ls2lp3 = mat3(\n    0.82259269, 0.17753369, -0.00000019,\n    0.03319958, 0.96678351, 0.00000029,\n    0.01708551, 0.07239614, 0.91030199);\nvoid convertSrgb2p3() {\n    // 1. degamma with 2.2, expanding sRGB to linear-sRGB;\n    // 2. linear-sRGB to linear-P3;\n    // 3. gamma encoding with 1/2.2;\n    float gamma = 2.2;\n    gl_FragColor.rgb = pow(gl_FragColor.rgb, vec3(gamma));\n    gl_FragColor.rgb = gl_FragColor.rgb * ls2lp3; // \u53f3\u4e58\n    // gamma\n    gl_FragColor.rgb = pow(gl_FragColor.rgb, vec3(1./gamma));\n}\nvoid main() {\n    gl_FragColor = clamp(texture2D(sTexture, vTextureCoord), 0.0, 1.0);\n    convertSrgb2p3();\n}\n"

    .line 170
    invoke-static {v4, p1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    goto :goto_0

    .line 165
    :cond_2
    iput v0, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureTarget:I

    const-string p1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 166
    invoke-static {v4, p1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    goto :goto_0

    .line 161
    :cond_3
    iput v2, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureTarget:I

    const-string p1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 162
    invoke-static {v4, p1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    .line 179
    :goto_0
    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    if-eqz p1, :cond_4

    const-string v0, "aPosition"

    .line 184
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maPositionLoc:I

    .line 185
    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    const-string v0, "aTextureCoord"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maTextureCoordLoc:I

    .line 186
    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    const-string v0, "sTexture"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureSampler:I

    .line 187
    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    const-string v0, "uTexMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureMatrix:I

    .line 188
    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    const-string v0, "uMVPMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mMvpMatrix:I

    .line 190
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->VERTEX_COORDINATE:[F

    invoke-static {p1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 191
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->TEXTURE_COORDINATE:[F

    invoke-static {p1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureCoordBuffer:Ljava/nio/FloatBuffer;

    .line 192
    iput v3, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mCoordsVertexSize:I

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 194
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTransformMatrix:[F

    const/4 p0, 0x0

    .line 195
    invoke-static {p1, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const-string p0, "create Progrom"

    .line 197
    invoke-static {p0}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->checkGlError(Ljava/lang/String;)V

    return-void

    .line 180
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unable to create program"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createBitmapFromFBO(IIII)Landroid/graphics/Bitmap;
    .locals 9

    mul-int p0, p3, p4

    .line 235
    new-array v0, p0, [I

    .line 236
    new-array p0, p0, [I

    .line 237
    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v7

    const/4 v8, 0x0

    .line 238
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

    .line 246
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

    .line 252
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

    .line 256
    aput v3, p0, v4
    :try_end_0
    .catch Landroid/opengl/GLException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 263
    :cond_3
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p3, p4, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 260
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-eqz v1, :cond_2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    iget v3, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v3, "draw glUseProgram"

    .line 365
    invoke-static {v3}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->checkGlError(Ljava/lang/String;)V

    .line 366
    iget-boolean v3, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mUseMatrixFromTexture:Z

    if-eqz v3, :cond_1

    .line 367
    iget-object v3, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTransformMatrix:[F

    invoke-virtual {v1, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 369
    :cond_1
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maPositionLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 370
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maTextureCoordLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v1, 0x0

    .line 371
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4100

    .line 372
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    const v1, 0x84c0

    .line 373
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 374
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureTarget:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 375
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureSampler:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 376
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureMatrix:I

    iget-object v3, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTransformMatrix:[F

    const/4 v4, 0x1

    invoke-static {v1, v4, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 377
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mMvpMatrix:I

    sget-object v3, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->VERTEX_DEFAULT_MATRIX:[F

    invoke-static {v1, v4, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 378
    iget v5, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maPositionLoc:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 381
    iget v11, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maTextureCoordLoc:I

    iget v12, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mCoordsVertexSize:I

    const/16 v13, 0x1406

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v0, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureCoordBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 383
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_2
    :goto_0
    return-void
.end method

.method public drawTexture(I)V
    .locals 17

    move-object/from16 v0, p0

    .line 283
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 284
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maPositionLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 285
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maTextureCoordLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v1, "fbo glUseProgram"

    .line 286
    invoke-static {v1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->checkGlError(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 287
    invoke-static {v1, v1, v1, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4100

    .line 288
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    const v1, 0x84c0

    .line 289
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 290
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureTarget:I

    move/from16 v2, p1

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 291
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureSampler:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 292
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureMatrix:I

    iget-object v3, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTransformMatrix:[F

    const/4 v4, 0x1

    invoke-static {v1, v4, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 293
    iget v1, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mMvpMatrix:I

    sget-object v3, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->VERTEX_DEFAULT_MATRIX:[F

    invoke-static {v1, v4, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 294
    iget v5, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maPositionLoc:I

    iget-object v10, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 297
    iget v11, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->maTextureCoordLoc:I

    iget v12, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mCoordsVertexSize:I

    iget-object v0, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTextureCoordBuffer:Ljava/nio/FloatBuffer;

    const/16 v13, 0x1406

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 299
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public getPreviewBitmapByFBO(Landroid/graphics/SurfaceTexture;IIILcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)Landroid/graphics/Bitmap;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v7, p2

    move/from16 v6, p3

    move/from16 v5, p4

    move-object/from16 v1, p5

    const/16 v17, 0x0

    if-eqz v2, :cond_8

    if-gtz v7, :cond_0

    goto/16 :goto_4

    .line 309
    :cond_0
    iget-boolean v3, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mUseMatrixFromTexture:Z

    if-eqz v3, :cond_1

    .line 310
    iget-object v3, v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mTransformMatrix:[F

    invoke-virtual {v2, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    :cond_1
    const/4 v4, 0x1

    .line 312
    invoke-static {v4}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v3

    .line 315
    invoke-static {v4}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v15

    .line 317
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(ILjava/nio/IntBuffer;)V

    .line 319
    invoke-static {v4, v15}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    const/4 v14, 0x0

    .line 320
    invoke-virtual {v15, v14}, Ljava/nio/IntBuffer;->get(I)I

    move-result v8

    const/16 v13, 0xde1

    invoke-static {v13, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v8, 0xde1

    const/4 v9, 0x0

    const/16 v10, 0x1908

    const/16 v16, 0x0

    const/16 v18, 0x1908

    const/16 v19, 0x1401

    const/16 v20, 0x0

    move/from16 v11, p3

    move/from16 v12, p4

    move v4, v13

    move/from16 v13, v16

    move/from16 v14, v18

    move-object/from16 v21, v15

    move/from16 v15, v19

    move-object/from16 v16, v20

    .line 321
    invoke-static/range {v8 .. v16}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v8, 0x2802

    const v9, 0x812f

    .line 323
    invoke-static {v4, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v8, 0x2803

    .line 324
    invoke-static {v4, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v8, 0x2800

    const/16 v9, 0x2601

    .line 325
    invoke-static {v4, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v8, 0x2801

    .line 326
    invoke-static {v4, v8, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/4 v8, 0x0

    .line 331
    invoke-virtual {v3, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v9

    const v10, 0x8d40

    invoke-static {v10, v9}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v9, 0x8ce0

    move-object/from16 v11, v21

    .line 333
    invoke-virtual {v11, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v12

    .line 332
    invoke-static {v10, v9, v4, v12, v8}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 334
    invoke-static {v10}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v4

    const v9, 0x8cd5

    if-ne v4, v9, :cond_7

    if-eqz v1, :cond_2

    .line 339
    invoke-interface {v1, v2, v6, v5}, Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;->algorithmRenderOffScreen(Landroid/graphics/SurfaceTexture;II)Z

    move-result v14

    goto :goto_0

    :cond_2
    move v14, v8

    :goto_0
    if-nez v14, :cond_4

    if-eqz p6, :cond_3

    .line 342
    invoke-virtual {v3, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v9

    move-object/from16 v1, p6

    move-object/from16 v2, p1

    move-object v10, v3

    move/from16 v3, p2

    const/4 v12, 0x1

    move/from16 v4, p3

    move v13, v5

    move/from16 v5, p4

    move v15, v6

    move v6, v9

    invoke-interface/range {v1 .. v6}, Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;->drawOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z

    move-result v14

    goto :goto_1

    :cond_3
    move-object v10, v3

    move v13, v5

    move v15, v6

    const/4 v12, 0x1

    move v14, v8

    goto :goto_1

    :cond_4
    move-object v10, v3

    move v13, v5

    move v15, v6

    const/4 v12, 0x1

    :goto_1
    if-eqz v14, :cond_5

    .line 345
    invoke-direct {v0, v8, v8, v15, v13}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->createBitmapFromFBO(IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    :cond_5
    move-object/from16 v1, v17

    .line 347
    :goto_2
    sget-object v2, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreviewBitmapByFBO bitmap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_6

    .line 349
    invoke-virtual {v0, v7}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->drawTexture(I)V

    .line 350
    invoke-direct {v0, v8, v8, v15, v13}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->createBitmapFromFBO(IIII)Landroid/graphics/Bitmap;

    move-result-object v17

    goto :goto_3

    :cond_6
    move-object/from16 v17, v1

    goto :goto_3

    :cond_7
    move-object v10, v3

    const/4 v12, 0x1

    .line 354
    :goto_3
    invoke-static {v12, v10}, Landroid/opengl/GLES20;->glDeleteFramebuffers(ILjava/nio/IntBuffer;)V

    .line 355
    invoke-static {v12, v11}, Landroid/opengl/GLES20;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    :cond_8
    :goto_4
    return-object v17
.end method

.method public release()V
    .locals 1

    .line 207
    iget v0, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, -0x1

    .line 208
    iput v0, p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->mProgramHandle:I

    return-void
.end method
