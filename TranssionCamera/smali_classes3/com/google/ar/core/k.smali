.class final Lcom/google/ar/core/k;
.super Lcom/google/ar/core/dependencies/a;
.source "ArImage.java"


# instance fields
.field final synthetic a:Lcom/google/ar/core/ArImage;

.field private final b:J

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/ar/core/ArImage;JI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ar/core/k;->a:Lcom/google/ar/core/ArImage;

    invoke-direct {p0}, Lcom/google/ar/core/dependencies/a;-><init>()V

    iput-wide p2, p0, Lcom/google/ar/core/k;->b:J

    iput p4, p0, Lcom/google/ar/core/k;->c:I

    return-void
.end method


# virtual methods
.method public final getBuffer()Ljava/nio/ByteBuffer;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/ar/core/k;->a:Lcom/google/ar/core/ArImage;

    invoke-static {v0}, Lcom/google/ar/core/ArImage;->-$$Nest$fgetsession(Lcom/google/ar/core/ArImage;)Lcom/google/ar/core/Session;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v3, p0, Lcom/google/ar/core/k;->b:J

    iget v5, p0, Lcom/google/ar/core/k;->c:I

    invoke-static/range {v0 .. v5}, Lcom/google/ar/core/ArImage;->-$$Nest$mnativeGetBuffer(Lcom/google/ar/core/ArImage;JJI)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public final getPixelStride()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/ar/core/k;->a:Lcom/google/ar/core/ArImage;

    invoke-static {v0}, Lcom/google/ar/core/ArImage;->-$$Nest$fgetsession(Lcom/google/ar/core/ArImage;)Lcom/google/ar/core/Session;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v3, p0, Lcom/google/ar/core/k;->b:J

    iget v5, p0, Lcom/google/ar/core/k;->c:I

    invoke-static/range {v0 .. v5}, Lcom/google/ar/core/ArImage;->-$$Nest$mnativeGetPixelStride(Lcom/google/ar/core/ArImage;JJI)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Unknown error in ArImage.Plane.getPixelStride()."

    .line 2
    invoke-direct {p0, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getRowStride()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/ar/core/k;->a:Lcom/google/ar/core/ArImage;

    invoke-static {v0}, Lcom/google/ar/core/ArImage;->-$$Nest$fgetsession(Lcom/google/ar/core/ArImage;)Lcom/google/ar/core/Session;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v3, p0, Lcom/google/ar/core/k;->b:J

    iget v5, p0, Lcom/google/ar/core/k;->c:I

    invoke-static/range {v0 .. v5}, Lcom/google/ar/core/ArImage;->-$$Nest$mnativeGetRowStride(Lcom/google/ar/core/ArImage;JJI)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Unknown error in ArImage.Plane.getRowStride()."

    .line 2
    invoke-direct {p0, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
