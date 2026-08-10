.class public Lcom/transsion/camera/utils/gles/core/Drawable2d;
.super Ljava/lang/Object;
.source "Drawable2d.java"


# instance fields
.field private mTexCoordArray:Ljava/nio/FloatBuffer;

.field private mVertexArray:Ljava/nio/FloatBuffer;

.field private mVertexCount:I


# direct methods
.method public constructor <init>([F[F)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/gles/core/Drawable2d;->updateVertexArray([F)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/transsion/camera/utils/gles/core/Drawable2d;->updateTexCoordArray([F)V

    return-void
.end method


# virtual methods
.method public texCoordArray()Ljava/nio/FloatBuffer;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/utils/gles/core/Drawable2d;->mTexCoordArray:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public updateTexCoordArray([F)V
    .locals 0

    .line 55
    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/utils/gles/core/Drawable2d;->mTexCoordArray:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public updateVertexArray([F)V
    .locals 1

    .line 50
    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/gles/core/Drawable2d;->mVertexArray:Ljava/nio/FloatBuffer;

    .line 51
    array-length p1, p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/transsion/camera/utils/gles/core/Drawable2d;->mVertexCount:I

    return-void
.end method

.method public vertexArray()Ljava/nio/FloatBuffer;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/utils/gles/core/Drawable2d;->mVertexArray:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public vertexCount()I
    .locals 0

    .line 80
    iget p0, p0, Lcom/transsion/camera/utils/gles/core/Drawable2d;->mVertexCount:I

    return p0
.end method
