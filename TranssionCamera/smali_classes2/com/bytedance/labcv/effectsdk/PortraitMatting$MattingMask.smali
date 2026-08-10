.class public Lcom/bytedance/labcv/effectsdk/PortraitMatting$MattingMask;
.super Ljava/lang/Object;
.source "PortraitMatting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/PortraitMatting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MattingMask"
.end annotation


# instance fields
.field private buffer:[B

.field private height:I

.field final synthetic this$0:Lcom/bytedance/labcv/effectsdk/PortraitMatting;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/bytedance/labcv/effectsdk/PortraitMatting;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/bytedance/labcv/effectsdk/PortraitMatting$MattingMask;->this$0:Lcom/bytedance/labcv/effectsdk/PortraitMatting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/PortraitMatting$MattingMask;->buffer:[B

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    .line 46
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/PortraitMatting$MattingMask;->height:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 41
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/PortraitMatting$MattingMask;->width:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 51
    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/PortraitMatting$MattingMask;->buffer:[B

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/PortraitMatting$MattingMask;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Lcom/bytedance/labcv/effectsdk/PortraitMatting$MattingMask;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "l: %d w:%d, h:%d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
