.class public Lcom/google/ar/core/ArImage;
.super Lcom/google/ar/core/dependencies/b;
.source "ArImage.java"


# instance fields
.field nativeHandle:J

.field private final nativeSymbolTableHandle:J

.field private final session:Lcom/google/ar/core/Session;


# direct methods
.method static bridge synthetic -$$Nest$fgetsession(Lcom/google/ar/core/ArImage;)Lcom/google/ar/core/Session;
    .locals 0

    iget-object p0, p0, Lcom/google/ar/core/ArImage;->session:Lcom/google/ar/core/Session;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnativeGetBuffer(Lcom/google/ar/core/ArImage;JJI)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/ar/core/ArImage;->nativeGetBuffer(JJI)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnativeGetPixelStride(Lcom/google/ar/core/ArImage;JJI)I
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/ar/core/ArImage;->nativeGetPixelStride(JJI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnativeGetRowStride(Lcom/google/ar/core/ArImage;JJI)I
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/ar/core/ArImage;->nativeGetRowStride(JJI)I

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/google/ar/core/Session;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ar/core/dependencies/b;-><init>()V

    iput-object p1, p0, Lcom/google/ar/core/ArImage;->session:Lcom/google/ar/core/Session;

    iput-wide p2, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    .line 2
    iget-wide p1, p1, Lcom/google/ar/core/Session;->nativeSymbolTableHandle:J

    iput-wide p1, p0, Lcom/google/ar/core/ArImage;->nativeSymbolTableHandle:J

    return-void
.end method

.method private native nativeClose(JJ)V
.end method

.method private native nativeGetBuffer(JJI)Ljava/nio/ByteBuffer;
.end method

.method private native nativeGetFormat(JJ)I
.end method

.method private native nativeGetHeight(JJ)I
.end method

.method private native nativeGetNumberOfPlanes(JJ)I
.end method

.method private native nativeGetPixelStride(JJI)I
.end method

.method private native nativeGetRowStride(JJI)I
.end method

.method private native nativeGetTimestamp(JJ)J
.end method

.method private native nativeGetWidth(JJ)I
.end method

.method static native nativeLoadSymbols()V
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/ar/core/ArImage;->nativeSymbolTableHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ArImage;->nativeClose(JJ)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    return-void
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/ar/core/ArImage;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/ar/core/ArImage;->getHeight()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getFormat()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ar/core/ArImage;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ArImage;->nativeGetFormat(JJ)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Unknown error in ArImage.getFormat()."

    .line 2
    invoke-direct {p0, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getHeight()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ar/core/ArImage;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ArImage;->nativeGetHeight(JJ)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Unknown error in ArImage.getHeight()."

    .line 2
    invoke-direct {p0, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPlanes()[Landroid/media/Image$Plane;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/ar/core/ArImage;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ArImage;->nativeGetNumberOfPlanes(JJ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3
    new-array v1, v0, [Lcom/google/ar/core/k;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    new-instance v3, Lcom/google/ar/core/k;

    iget-wide v4, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    invoke-direct {v3, p0, v4, v5, v2}, Lcom/google/ar/core/k;-><init>(Lcom/google/ar/core/ArImage;JI)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 1
    :cond_1
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Unknown error in ArImage.getPlanes()."

    .line 2
    invoke-direct {p0, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTimestamp()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ar/core/ArImage;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ArImage;->nativeGetTimestamp(JJ)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Unknown error in ArImage.getTimestamp()."

    .line 2
    invoke-direct {p0, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWidth()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ar/core/ArImage;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ArImage;->nativeGetWidth(JJ)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Unknown error in ArImage.getWidth()."

    .line 2
    invoke-direct {p0, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This is a read-only image."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This is a read-only image."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
