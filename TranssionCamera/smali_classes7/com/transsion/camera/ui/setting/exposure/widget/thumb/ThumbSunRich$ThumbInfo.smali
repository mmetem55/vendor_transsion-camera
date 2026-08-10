.class public Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich$ThumbInfo;
.super Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;
.source "ThumbSunRich.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbInfo"
.end annotation


# instance fields
.field private final mMaxBrilliantRaysLength:I

.field private final mMinRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 2

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070142

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f070141

    .line 80
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v1, 0x6

    .line 82
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich$ThumbInfo;->mMinRadius:I

    const/4 v0, 0x5

    .line 84
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich$ThumbInfo;->mMaxBrilliantRaysLength:I

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich$ThumbInfo;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich$ThumbInfo;->mMinRadius:I

    return p0
.end method
