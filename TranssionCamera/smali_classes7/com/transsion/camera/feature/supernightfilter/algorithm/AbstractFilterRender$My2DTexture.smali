.class Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;
.super Ljava/lang/Object;
.source "AbstractFilterRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "My2DTexture"
.end annotation


# instance fields
.field private textureHeight:I

.field private final textureId:I

.field private textureWidth:I

.field private videoEncodeTexture:Z


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderUtil;->createTexture()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->textureId:I

    .line 31
    iput p1, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->textureWidth:I

    .line 32
    iput p2, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->textureHeight:I

    const/4 v1, 0x0

    .line 33
    iput-boolean v1, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->videoEncodeTexture:Z

    .line 34
    invoke-static {p1, p2, v0}, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->access$000(III)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;II)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->updateTextureSize(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->videoEncodeTexture:Z

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->textureId:I

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->destroy()V

    return-void
.end method

.method private destroy()V
    .locals 0

    .line 46
    iget p0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->textureId:I

    invoke-static {p0}, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderUtil;->destroyTexture(I)V

    return-void
.end method

.method private updateTextureSize(II)V
    .locals 1

    .line 38
    iget v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->textureWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->textureHeight:I

    if-eq v0, p2, :cond_1

    .line 39
    :cond_0
    iput p1, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->textureWidth:I

    .line 40
    iput p2, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->textureHeight:I

    .line 41
    iget p0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->textureId:I

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->access$100(III)V

    :cond_1
    return-void
.end method
