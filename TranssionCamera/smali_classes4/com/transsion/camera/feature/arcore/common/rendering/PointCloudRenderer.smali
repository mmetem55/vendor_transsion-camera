.class public Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;
.super Ljava/lang/Object;
.source "PointCloudRenderer.java"


# static fields
.field private static final BYTES_PER_FLOAT:I = 0x4

.field private static final BYTES_PER_POINT:I = 0x10

.field private static final FLOATS_PER_POINT:I = 0x4

.field private static final FRAGMENT_SHADER_NAME:Ljava/lang/String; = "shaders/point_cloud.frag"

.field private static final INITIAL_BUFFER_POINTS:I = 0x3e8

.field private static final TAG:Ljava/lang/String;

.field private static final VERTEX_SHADER_NAME:Ljava/lang/String; = "shaders/point_cloud.vert"


# instance fields
.field private colorUniform:I

.field private lastTimestamp:J

.field private modelViewProjectionUniform:I

.field private numPoints:I

.field private pointSizeUniform:I

.field private positionAttribute:I

.field private programName:I

.field private vbo:I

.field private vboSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/google/ar/core/PointCloud;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->numPoints:I

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->lastTimestamp:J

    return-void
.end method


# virtual methods
.method public createOnGlThread(Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->TAG:Ljava/lang/String;

    const-string v1, "before create"

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/arcore/common/rendering/ShaderUtil;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    .line 69
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    aget v1, v2, v3

    .line 70
    iput v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->vbo:I

    const v2, 0x8892

    .line 71
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/16 v1, 0x3e80

    .line 73
    iput v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->vboSize:I

    const/4 v4, 0x0

    const v5, 0x88e8

    .line 74
    invoke-static {v2, v1, v4, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 75
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const-string v1, "buffer alloc"

    .line 77
    invoke-static {v0, v1}, Lcom/transsion/camera/feature/arcore/common/rendering/ShaderUtil;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x8b31

    const-string v2, "shaders/point_cloud.vert"

    .line 80
    invoke-static {v0, p1, v1, v2}, Lcom/transsion/camera/feature/arcore/common/rendering/ShaderUtil;->loadGLShader(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    const v2, 0x8b30

    const-string v3, "shaders/point_cloud.frag"

    .line 82
    invoke-static {v0, p1, v2, v3}, Lcom/transsion/camera/feature/arcore/common/rendering/ShaderUtil;->loadGLShader(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)I

    move-result p1

    .line 84
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->programName:I

    .line 85
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 86
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->programName:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 87
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->programName:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 88
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->programName:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string p1, "program"

    .line 90
    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcore/common/rendering/ShaderUtil;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->programName:I

    const-string v1, "a_Position"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->positionAttribute:I

    .line 93
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->programName:I

    const-string v1, "u_Color"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->colorUniform:I

    .line 94
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->programName:I

    const-string v1, "u_ModelViewProjection"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->modelViewProjectionUniform:I

    .line 95
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->programName:I

    const-string v1, "u_PointSize"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->pointSizeUniform:I

    const-string p0, "program  params"

    .line 97
    invoke-static {v0, p0}, Lcom/transsion/camera/feature/arcore/common/rendering/ShaderUtil;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public draw([F[F)V
    .locals 8

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p2

    move-object v5, p1

    .line 139
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 141
    sget-object p1, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->TAG:Ljava/lang/String;

    const-string p2, "Before draw"

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/arcore/common/rendering/ShaderUtil;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->programName:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 144
    iget p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->positionAttribute:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 145
    iget p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->vbo:I

    const v1, 0x8892

    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 146
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->positionAttribute:I

    const/4 v3, 0x4

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 147
    iget p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->colorUniform:I

    const v2, 0x3df8f8f9

    const v3, 0x3f3cbcbd

    const v4, 0x3f52d2d3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p2, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 148
    iget p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->modelViewProjectionUniform:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p2, v2, v3, v0, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 149
    iget p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->pointSizeUniform:I

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 151
    iget p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->numPoints:I

    invoke-static {v3, v3, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 152
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->positionAttribute:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 153
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const-string p0, "Draw"

    .line 155
    invoke-static {p1, p0}, Lcom/transsion/camera/feature/arcore/common/rendering/ShaderUtil;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public update(Lcom/google/ar/core/PointCloud;)V
    .locals 4

    .line 105
    invoke-virtual {p1}, Lcom/google/ar/core/PointCloud;->getTimestamp()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->lastTimestamp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->TAG:Ljava/lang/String;

    const-string v1, "before update"

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/arcore/common/rendering/ShaderUtil;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->vbo:I

    const v1, 0x8892

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 112
    invoke-virtual {p1}, Lcom/google/ar/core/PointCloud;->getTimestamp()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->lastTimestamp:J

    .line 115
    invoke-virtual {p1}, Lcom/google/ar/core/PointCloud;->getPoints()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->numPoints:I

    mul-int/lit8 v0, v0, 0x10

    .line 116
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->vboSize:I

    if-le v0, v2, :cond_2

    .line 117
    :goto_0
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->numPoints:I

    mul-int/lit8 v0, v0, 0x10

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->vboSize:I

    if-le v0, v2, :cond_1

    mul-int/lit8 v2, v2, 0x2

    .line 118
    iput v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->vboSize:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const v3, 0x88e8

    .line 120
    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 122
    :cond_2
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->numPoints:I

    mul-int/lit8 p0, p0, 0x10

    .line 123
    invoke-virtual {p1}, Lcom/google/ar/core/PointCloud;->getPoints()Ljava/nio/FloatBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 122
    invoke-static {v1, v0, p0, p1}, Landroid/opengl/GLES20;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 124
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 126
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/rendering/PointCloudRenderer;->TAG:Ljava/lang/String;

    const-string p1, "after update"

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcore/common/rendering/ShaderUtil;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
