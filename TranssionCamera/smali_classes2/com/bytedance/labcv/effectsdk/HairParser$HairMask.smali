.class public Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;
.super Ljava/lang/Object;
.source "HairParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/HairParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HairMask"
.end annotation


# instance fields
.field private buffer:[B

.field private channel:I

.field private height:I

.field final synthetic this$0:Lcom/bytedance/labcv/effectsdk/HairParser;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/bytedance/labcv/effectsdk/HairParser;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;->this$0:Lcom/bytedance/labcv/effectsdk/HairParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;->width:I

    return p0
.end method

.method static synthetic access$002(Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;->width:I

    return p1
.end method

.method static synthetic access$100(Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;->height:I

    return p0
.end method

.method static synthetic access$102(Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;->height:I

    return p1
.end method

.method static synthetic access$200(Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;->channel:I

    return p0
.end method

.method static synthetic access$202(Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;->channel:I

    return p1
.end method

.method static synthetic access$300(Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;)[B
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;->buffer:[B

    return-object p0
.end method

.method static synthetic access$302(Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;[B)[B
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;->buffer:[B

    return-object p1
.end method


# virtual methods
.method public getBuffer()[B
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;->buffer:[B

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    .line 46
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;->height:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 42
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;->width:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 51
    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;->buffer:[B

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Lcom/bytedance/labcv/effectsdk/HairParser$HairMask;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "l: %d w:%d, h:%d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
