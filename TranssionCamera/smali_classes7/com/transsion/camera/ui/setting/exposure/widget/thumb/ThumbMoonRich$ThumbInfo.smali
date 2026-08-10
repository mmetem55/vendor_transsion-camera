.class public Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;
.super Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;
.source "ThumbMoonRich.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbInfo"
.end annotation


# instance fields
.field private final mMoonRadius:I

.field private final mWaningMoonRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 2

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070133

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070149

    .line 96
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v1, 0x4

    .line 98
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;->mMoonRadius:I

    const/16 v0, 0xe

    .line 100
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;->mWaningMoonRadius:I

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;)I
    .locals 0

    .line 83
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;->mMoonRadius:I

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;)I
    .locals 0

    .line 83
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;->mWaningMoonRadius:I

    return p0
.end method
