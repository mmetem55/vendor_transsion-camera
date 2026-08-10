.class public Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;
.super Ljava/lang/Object;
.source "TextureRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;
    }
.end annotation


# static fields
.field public static final IDENTITY_MATRIX:[F

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TEXTURE_COORDINATE:[F

.field private static final VERTEX_COORDINATE:[F

.field private static final VERTEX_DEFAULT_MATRIX:[F


# instance fields
.field private mMvpMatrix:I

.field private mProgramHandle:I

.field private final mProgramType:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;

.field private final mTextureCoordBuffer:Ljava/nio/FloatBuffer;

.field private mTextureId:I

.field private mTextureMatrix:I

.field private mTextureSampler:I

.field private mTextureTarget:I

.field private final mVertexBuffer:Ljava/nio/FloatBuffer;

.field private maPositionLoc:I

.field private maTextureCoordLoc:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 53
    fill-array-data v1, :array_0

    sput-object v1, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->VERTEX_COORDINATE:[F

    new-array v0, v0, [F

    .line 60
    fill-array-data v0, :array_1

    sput-object v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->TEXTURE_COORDINATE:[F

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 67
    fill-array-data v1, :array_2

    sput-object v1, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->VERTEX_DEFAULT_MATRIX:[F

    .line 86
    new-instance v1, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "Texture2dProg"

    invoke-direct {v1, v2}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-array v0, v0, [F

    .line 90
    sput-object v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->IDENTITY_MATRIX:[F

    const/4 v1, 0x0

    .line 91
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

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

.method public constructor <init>(Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mProgramType:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;

    .line 96
    sget-object p1, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->VERTEX_COORDINATE:[F

    invoke-static {p1}, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 97
    sget-object p1, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->TEXTURE_COORDINATE:[F

    invoke-static {p1}, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mTextureCoordBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public createOnGlThread()V
    .locals 3

    .line 101
    sget-object v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lily [createOnGlThread], Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$1;->$SwitchMap$com$transsion$common$mediacodec$record$renderer$TextureRenderer$ProgramType:[I

    iget-object v1, p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mProgramType:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position =  uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x8d65

    .line 109
    iput v0, p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mTextureTarget:I

    .line 110
    invoke-static {}, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;->createOESTexture()I

    move-result v0

    iput v0, p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mTextureId:I

    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 111
    invoke-static {v2, v0}, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mProgramHandle:I

    goto :goto_0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mProgramType:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0xde1

    .line 104
    iput v0, p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mTextureTarget:I

    .line 105
    invoke-static {}, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;->createTexture()I

    move-result v0

    iput v0, p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mTextureId:I

    const-string v0, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 106
    invoke-static {v2, v0}, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mProgramHandle:I

    .line 116
    :goto_0
    iget v0, p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mProgramHandle:I

    if-eqz v0, :cond_2

    const-string v1, "aPosition"

    .line 121
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->maPositionLoc:I

    .line 122
    iget v0, p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mProgramHandle:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->maTextureCoordLoc:I

    .line 123
    iget v0, p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mProgramHandle:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mTextureSampler:I

    .line 124
    iget v0, p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mProgramHandle:I

    const-string v1, "uTexMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mTextureMatrix:I

    .line 125
    iget v0, p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mProgramHandle:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mMvpMatrix:I

    const-string p0, "create Progrom"

    .line 126
    invoke-static {p0}, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;->checkGlError(Ljava/lang/String;)V

    return-void

    .line 117
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unable to create program"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public draw([FI)V
    .locals 17

    move-object/from16 v0, p0

    .line 157
    iget v1, v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mProgramHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v1, "draw glUseProgram"

    .line 158
    invoke-static {v1}, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;->checkGlError(Ljava/lang/String;)V

    .line 159
    iget v1, v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->maPositionLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 160
    iget v1, v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->maTextureCoordLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v1, 0x0

    .line 161
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4100

    .line 162
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    const v1, 0x84c0

    .line 163
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 164
    iget v1, v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mTextureTarget:I

    move/from16 v2, p2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 165
    iget v1, v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mTextureSampler:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 166
    iget v1, v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mTextureMatrix:I

    const/4 v3, 0x1

    move-object/from16 v4, p1

    invoke-static {v1, v3, v2, v4, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 167
    iget v1, v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mMvpMatrix:I

    sget-object v4, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->VERTEX_DEFAULT_MATRIX:[F

    invoke-static {v1, v3, v2, v4, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 168
    iget v5, v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->maPositionLoc:I

    iget-object v10, v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 171
    iget v11, v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->maTextureCoordLoc:I

    iget-object v0, v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mTextureCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v12, 0x2

    const/16 v13, 0x1406

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 173
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 174
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void
.end method

.method public draw([F[FI)V
    .locals 1

    const/4 v0, 0x1

    .line 178
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->draw([F[FIZ)V

    return-void
.end method

.method public draw([F[FIZ)V
    .locals 16

    move-object/from16 v0, p0

    .line 182
    iget v1, v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mProgramHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v1, "draw glUseProgram"

    .line 183
    invoke-static {v1}, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;->checkGlError(Ljava/lang/String;)V

    .line 184
    iget v1, v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->maPositionLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 185
    iget v1, v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->maTextureCoordLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    if-eqz p4, :cond_0

    const/4 v1, 0x0

    .line 187
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4100

    .line 188
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    :cond_0
    const v1, 0x84c0

    .line 191
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 192
    iget v1, v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mTextureTarget:I

    move/from16 v2, p3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 193
    iget v1, v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mTextureSampler:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 194
    iget v1, v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mTextureMatrix:I

    const/4 v3, 0x1

    move-object/from16 v4, p1

    invoke-static {v1, v3, v2, v4, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 195
    iget v1, v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mMvpMatrix:I

    move-object/from16 v4, p2

    invoke-static {v1, v3, v2, v4, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 196
    iget v4, v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->maPositionLoc:I

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 199
    iget v10, v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->maTextureCoordLoc:I

    const/4 v11, 0x2

    const/16 v12, 0x1406

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mTextureCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 201
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 202
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void
.end method

.method public getTextureId()I
    .locals 0

    .line 153
    iget p0, p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mTextureId:I

    return p0
.end method

.method public releaseOnGLThread()V
    .locals 4

    .line 136
    sget-object v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lily [releaseOnGLThread], Thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 138
    iget v2, p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mTextureId:I

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 139
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 140
    iget v0, p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, -0x1

    .line 141
    iput v0, p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mProgramHandle:I

    .line 142
    iput v3, p0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->mTextureId:I

    return-void
.end method
