.class public Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;
.super Ljava/lang/Object;
.source "GLLine.java"


# static fields
.field static final COORDS_PER_VERTEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GLLine"

.field public static lineColor:[F


# instance fields
.field private colorBuffer:Ljava/nio/FloatBuffer;

.field private final fragmentShaderCode:Ljava/lang/String;

.field private mColorHandle:I

.field private mPositionHandle:I

.field private final mProgram:I

.field mShadow1:[F

.field mShadow2:[F

.field mShadow3:[F

.field mShadow4:[F

.field mShadow5:[F

.field mShadow6:[F

.field mShadow7:[F

.field mShadow8:[F

.field private order:[S

.field private orderBuffer:Ljava/nio/ShortBuffer;

.field private size:I

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private final vertexCount:I

.field private final vertexShaderCode:Ljava/lang/String;

.field private final vertexStride:I


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "attribute vec4 vPosition;varying  vec4 vColor;attribute vec4 aColor;void main() {  gl_Position = vPosition;  vColor=aColor;}"

    .line 32
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexShaderCode:Ljava/lang/String;

    const-string v1, "precision mediump float;varying vec4 vColor;void main() {  gl_FragColor = vColor;}"

    .line 41
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->fragmentShaderCode:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v3, v2, [S

    .line 48
    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->order:[S

    const/16 v4, 0x8

    new-array v5, v4, [F

    .line 54
    iput-object v5, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow1:[F

    new-array v5, v4, [F

    .line 55
    iput-object v5, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow2:[F

    new-array v5, v4, [F

    .line 56
    iput-object v5, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow3:[F

    new-array v5, v4, [F

    .line 57
    iput-object v5, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow4:[F

    new-array v5, v4, [F

    .line 58
    iput-object v5, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow5:[F

    new-array v5, v4, [F

    .line 59
    iput-object v5, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow6:[F

    new-array v5, v4, [F

    .line 60
    iput-object v5, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow7:[F

    new-array v5, v4, [F

    .line 61
    iput-object v5, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow8:[F

    const/4 v5, 0x3

    .line 65
    iput v5, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->size:I

    .line 70
    sget-object v6, Lcom/transsion/camera/feature/mode/doc/object/Data;->lineCoords:[F

    array-length v6, v6

    const/4 v7, 0x2

    div-int/2addr v6, v7

    iput v6, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexCount:I

    .line 71
    iput v4, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexStride:I

    .line 76
    array-length v3, v3

    mul-int/2addr v3, v7

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 77
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->orderBuffer:Ljava/nio/ShortBuffer;

    .line 79
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->order:[S

    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 80
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->orderBuffer:Ljava/nio/ShortBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    const v3, 0x8b31

    .line 83
    invoke-static {v3, v0}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->loadShader(ILjava/lang/String;)I

    move-result v0

    const v3, 0x8b30

    .line 85
    invoke-static {v3, v1}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 88
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mProgram:I

    .line 89
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 90
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 91
    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 92
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 94
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "TECNO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "itel-P661N"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/object/Data;->defaultLineColor:[F

    sput-object v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->lineColor:[F

    goto :goto_1

    .line 95
    :cond_1
    :goto_0
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/object/Data;->tecnoLineColor:[F

    sput-object v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->lineColor:[F

    .line 99
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow1:[F

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow7:[F

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow8:[F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v3, v7

    aput v6, v3, v4

    const/4 v3, 0x4

    aput v6, v1, v3

    aput v6, v1, v7

    aput v6, v0, v2

    aput v6, v0, v4

    .line 100
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow3:[F

    iget-object v8, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow4:[F

    iget-object v9, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow5:[F

    const/high16 v10, -0x40800000    # -1.0f

    aput v10, v9, v7

    aput v10, v9, v4

    aput v10, v8, v7

    aput v10, v8, v4

    aput v10, v2, v3

    aput v10, v2, v7

    .line 101
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow2:[F

    aput v6, v2, v5

    const/4 v4, 0x1

    aput v6, v2, v4

    aput v6, v3, v5

    aput v6, v3, v4

    aput v6, v0, v5

    aput v6, v0, v4

    const/4 v0, 0x5

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow6:[F

    aput v10, v1, v5

    aput v10, v1, v4

    aput v10, p0, v5

    aput v10, p0, v4

    aput v10, v9, v0

    aput v10, v9, v5

    return-void

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x1s
        0x2s
        0x3s
    .end array-data
.end method

.method private drawshadow(Z[F)V
    .locals 6

    .line 234
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/object/Data;->lineCoords:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 236
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 237
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz p1, :cond_0

    .line 239
    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 241
    fill-array-data p1, :array_0

    .line 247
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 249
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 252
    sget-object p1, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->lineColor:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 254
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 255
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->colorBuffer:Ljava/nio/FloatBuffer;

    .line 256
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/object/Data;->shadowColor:[F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 257
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->colorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 260
    iget p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 263
    iget p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mProgram:I

    const-string v0, "vPosition"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mPositionHandle:I

    .line 265
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 267
    iget v0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mPositionHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 271
    iget p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mProgram:I

    const-string v0, "aColor"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mColorHandle:I

    .line 273
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 274
    iget v0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mColorHandle:I

    const/4 v1, 0x4

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->colorBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/16 p1, 0xbe2

    .line 277
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0x302

    const/16 v0, 0x303

    .line 278
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 p1, 0x6

    .line 279
    iget v0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexCount:I

    invoke-static {p1, p2, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 284
    iget p0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mPositionHandle:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 3

    .line 289
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    const-string v0, "GLLine"

    if-nez p0, :cond_0

    const-string v1, "could not create new shader"

    .line 291
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 295
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v1, 0x8b81

    const/4 v2, 0x0

    .line 297
    invoke-static {p0, v1, p1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p1, p1, v2

    if-nez p1, :cond_1

    .line 299
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const-string p0, "Compilation of shader failed"

    .line 300
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    return p0
.end method


# virtual methods
.method public clearLineShader()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->colorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public draw(Z)V
    .locals 7

    .line 118
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/object/Data;->lineCoords:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 120
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 121
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz p1, :cond_0

    .line 123
    sget-object p1, Lcom/transsion/camera/feature/mode/doc/object/Data;->lineCoords:[F

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 125
    fill-array-data p1, :array_0

    .line 131
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 133
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 136
    sget-object p1, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->lineColor:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 138
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 139
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->colorBuffer:Ljava/nio/FloatBuffer;

    .line 140
    sget-object v1, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->lineColor:[F

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 141
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->colorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 144
    iget p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 147
    iget p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mProgram:I

    const-string v1, "vPosition"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mPositionHandle:I

    .line 149
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 151
    iget v1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mPositionHandle:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 155
    iget p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mProgram:I

    const-string v1, "aColor"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mColorHandle:I

    .line 157
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 158
    iget v1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mColorHandle:I

    const/4 v2, 0x4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->colorBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/16 p1, 0xbe2

    .line 161
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0x302

    const/16 v1, 0x303

    .line 162
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 164
    iget p1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->size:I

    int-to-float p1, p1

    invoke-static {p1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    const/4 p1, 0x2

    .line 166
    iget v1, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->vertexCount:I

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 168
    iget p0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mPositionHandle:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public drawShadows(Z)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 172
    sget-object v2, Lcom/transsion/camera/feature/mode/doc/object/Data;->lineCoords:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float v6, v4, v5

    float-to-int v6, v6

    const/4 v7, 0x1

    .line 173
    aget v8, v2, v7

    mul-float v9, v8, v5

    float-to-int v9, v9

    const/4 v10, 0x2

    .line 174
    aget v11, v2, v10

    mul-float v12, v11, v5

    float-to-int v12, v12

    const/4 v13, 0x3

    .line 175
    aget v14, v2, v13

    mul-float v15, v14, v5

    float-to-int v15, v15

    const/16 v16, 0x4

    .line 176
    aget v17, v2, v16

    mul-float v7, v17, v5

    float-to-int v7, v7

    const/16 v18, 0x5

    .line 177
    aget v19, v2, v18

    mul-float v13, v19, v5

    float-to-int v13, v13

    const/16 v20, 0x6

    .line 178
    aget v21, v2, v20

    mul-float v10, v21, v5

    float-to-int v10, v10

    const/16 v22, 0x7

    .line 179
    aget v23, v2, v22

    mul-float v5, v5, v23

    float-to-int v5, v5

    if-gt v6, v7, :cond_0

    if-gt v9, v13, :cond_0

    if-gt v12, v10, :cond_0

    if-ge v15, v5, :cond_1

    :cond_0
    if-gt v6, v7, :cond_2

    if-gt v6, v10, :cond_2

    if-gt v9, v15, :cond_2

    if-gt v9, v13, :cond_2

    .line 182
    :cond_1
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow1:[F

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow2:[F

    iget-object v6, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow8:[F

    aput v17, v6, v16

    aput v17, v5, v20

    aput v17, v5, v3

    aput v17, v4, v16

    const/4 v7, 0x2

    aput v17, v4, v7

    .line 183
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow3:[F

    iget-object v9, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow4:[F

    aget v10, v2, v7

    aput v10, v9, v20

    aput v10, v8, v20

    aput v10, v8, v3

    aput v10, v5, v16

    aput v10, v5, v7

    .line 184
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow5:[F

    iget-object v10, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow6:[F

    aget v11, v2, v3

    aput v11, v10, v20

    aput v11, v10, v3

    aput v11, v7, v20

    aput v11, v7, v16

    aput v11, v9, v16

    .line 185
    iget-object v11, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow7:[F

    aget v12, v2, v20

    aput v12, v6, v20

    aput v12, v11, v20

    aput v12, v11, v3

    aput v12, v10, v16

    const/4 v3, 0x2

    aput v12, v10, v3

    .line 186
    aput v19, v6, v18

    const/4 v3, 0x3

    aput v19, v6, v3

    aput v19, v5, v22

    aput v19, v4, v22

    aput v19, v4, v18

    .line 187
    aget v4, v2, v3

    aput v4, v9, v22

    const/4 v12, 0x1

    aput v4, v9, v12

    aput v4, v8, v22

    aput v4, v8, v18

    aput v4, v5, v18

    .line 188
    aget v4, v2, v12

    aput v4, v10, v22

    aput v4, v7, v22

    aput v4, v7, v12

    aput v4, v9, v18

    aput v4, v9, v3

    .line 189
    aget v2, v2, v22

    aput v2, v6, v22

    aput v2, v6, v12

    aput v2, v11, v22

    aput v2, v11, v18

    aput v2, v10, v18

    goto/16 :goto_0

    :cond_2
    if-gt v12, v10, :cond_3

    if-gt v15, v5, :cond_3

    if-gt v7, v6, :cond_3

    if-ge v13, v9, :cond_4

    :cond_3
    if-gt v12, v10, :cond_5

    if-gt v12, v6, :cond_5

    if-gt v15, v13, :cond_5

    if-gt v15, v5, :cond_5

    .line 192
    :cond_4
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow1:[F

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow2:[F

    iget-object v6, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow8:[F

    aput v21, v6, v16

    aput v21, v5, v20

    aput v21, v5, v3

    aput v21, v4, v16

    const/4 v7, 0x2

    aput v21, v4, v7

    .line 193
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow3:[F

    iget-object v9, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow4:[F

    aget v10, v2, v16

    aput v10, v9, v20

    aput v10, v8, v20

    aput v10, v8, v3

    aput v10, v5, v16

    aput v10, v5, v7

    .line 194
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow5:[F

    iget-object v11, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow6:[F

    aget v12, v2, v7

    aput v12, v11, v20

    aput v12, v11, v3

    aput v12, v10, v20

    aput v12, v10, v16

    aput v12, v9, v16

    .line 195
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow7:[F

    aget v12, v2, v3

    aput v12, v6, v20

    aput v12, v7, v20

    aput v12, v7, v3

    aput v12, v11, v16

    const/4 v3, 0x2

    aput v12, v11, v3

    .line 196
    aput v23, v6, v18

    const/4 v3, 0x3

    aput v23, v6, v3

    aput v23, v5, v22

    aput v23, v4, v22

    aput v23, v4, v18

    .line 197
    aget v4, v2, v18

    aput v4, v9, v22

    const/4 v12, 0x1

    aput v4, v9, v12

    aput v4, v8, v22

    aput v4, v8, v18

    aput v4, v5, v18

    .line 198
    aget v4, v2, v3

    aput v4, v11, v22

    aput v4, v10, v22

    aput v4, v10, v12

    aput v4, v9, v18

    aput v4, v9, v3

    .line 199
    aget v2, v2, v12

    aput v2, v6, v22

    aput v2, v6, v12

    aput v2, v7, v22

    aput v2, v7, v18

    aput v2, v11, v18

    goto/16 :goto_0

    :cond_5
    if-gt v7, v6, :cond_6

    if-gt v13, v9, :cond_6

    if-gt v10, v12, :cond_6

    if-ge v5, v15, :cond_7

    :cond_6
    if-gt v7, v6, :cond_8

    if-gt v7, v12, :cond_8

    if-gt v13, v5, :cond_8

    if-gt v13, v9, :cond_8

    .line 202
    :cond_7
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow1:[F

    iget-object v6, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow2:[F

    iget-object v7, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow8:[F

    aput v4, v7, v16

    aput v4, v6, v20

    aput v4, v6, v3

    aput v4, v5, v16

    const/4 v9, 0x2

    aput v4, v5, v9

    .line 203
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow3:[F

    iget-object v10, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow4:[F

    aget v11, v2, v20

    aput v11, v10, v20

    aput v11, v4, v20

    aput v11, v4, v3

    aput v11, v6, v16

    aput v11, v6, v9

    .line 204
    iget-object v11, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow5:[F

    iget-object v12, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow6:[F

    aget v13, v2, v16

    aput v13, v12, v20

    aput v13, v12, v3

    aput v13, v11, v20

    aput v13, v11, v16

    aput v13, v10, v16

    .line 205
    iget-object v13, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow7:[F

    aget v14, v2, v9

    aput v14, v7, v20

    aput v14, v13, v20

    aput v14, v13, v3

    aput v14, v12, v16

    aput v14, v12, v9

    .line 206
    aput v8, v7, v18

    const/4 v3, 0x3

    aput v8, v7, v3

    aput v8, v6, v22

    aput v8, v5, v22

    aput v8, v5, v18

    .line 207
    aget v3, v2, v22

    aput v3, v10, v22

    const/4 v5, 0x1

    aput v3, v10, v5

    aput v3, v4, v22

    aput v3, v4, v18

    aput v3, v6, v18

    .line 208
    aget v3, v2, v18

    aput v3, v12, v22

    aput v3, v11, v22

    aput v3, v11, v5

    aput v3, v10, v18

    const/4 v4, 0x3

    aput v3, v10, v4

    .line 209
    aget v2, v2, v4

    aput v2, v7, v22

    aput v2, v7, v5

    aput v2, v13, v22

    aput v2, v13, v18

    aput v2, v12, v18

    goto/16 :goto_0

    :cond_8
    if-gt v10, v12, :cond_9

    if-gt v5, v15, :cond_9

    if-gt v6, v7, :cond_9

    if-ge v9, v13, :cond_a

    :cond_9
    if-gt v10, v12, :cond_b

    if-gt v10, v7, :cond_b

    if-gt v5, v9, :cond_b

    if-gt v5, v15, :cond_b

    .line 212
    :cond_a
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow1:[F

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow2:[F

    iget-object v6, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow8:[F

    aput v11, v6, v16

    aput v11, v5, v20

    aput v11, v5, v3

    aput v11, v4, v16

    const/4 v7, 0x2

    aput v11, v4, v7

    .line 213
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow3:[F

    iget-object v10, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow4:[F

    aget v11, v2, v3

    aput v11, v10, v20

    aput v11, v9, v20

    aput v11, v9, v3

    aput v11, v5, v16

    aput v11, v5, v7

    .line 214
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow5:[F

    iget-object v11, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow6:[F

    aget v12, v2, v20

    aput v12, v11, v20

    aput v12, v11, v3

    aput v12, v7, v20

    aput v12, v7, v16

    aput v12, v10, v16

    .line 215
    iget-object v12, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow7:[F

    aget v13, v2, v16

    aput v13, v6, v20

    aput v13, v12, v20

    aput v13, v12, v3

    aput v13, v11, v16

    const/4 v3, 0x2

    aput v13, v11, v3

    .line 216
    aput v14, v6, v18

    const/4 v3, 0x3

    aput v14, v6, v3

    aput v14, v5, v22

    aput v14, v4, v22

    aput v14, v4, v18

    .line 217
    aput v8, v10, v22

    const/4 v3, 0x1

    aput v8, v10, v3

    aput v8, v9, v22

    aput v8, v9, v18

    aput v8, v5, v18

    .line 218
    aget v4, v2, v22

    aput v4, v11, v22

    aput v4, v7, v22

    aput v4, v7, v3

    aput v4, v10, v18

    const/4 v5, 0x3

    aput v4, v10, v5

    .line 219
    aget v2, v2, v18

    aput v2, v6, v22

    aput v2, v6, v3

    aput v2, v12, v22

    aput v2, v12, v18

    aput v2, v11, v18

    .line 223
    :goto_0
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow1:[F

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->drawshadow(Z[F)V

    .line 224
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow2:[F

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->drawshadow(Z[F)V

    .line 225
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow3:[F

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->drawshadow(Z[F)V

    .line 226
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow4:[F

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->drawshadow(Z[F)V

    .line 227
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow5:[F

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->drawshadow(Z[F)V

    .line 228
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow6:[F

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->drawshadow(Z[F)V

    .line 229
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow7:[F

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->drawshadow(Z[F)V

    .line 230
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mShadow8:[F

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->drawshadow(Z[F)V

    :cond_b
    return-void
.end method

.method public unInit()V
    .locals 0

    .line 111
    iget p0, p0, Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;->mProgram:I

    if-eqz p0, :cond_0

    .line 112
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_0
    return-void
.end method
