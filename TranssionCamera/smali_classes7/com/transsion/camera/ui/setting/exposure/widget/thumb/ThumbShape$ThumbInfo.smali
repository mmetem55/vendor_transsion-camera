.class public abstract Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;
.super Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw$BaseInfo;
.source "ThumbShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ThumbInfo"
.end annotation


# instance fields
.field private final mBrilliantRaysLength:I

.field private final mHeight:I

.field private final mInterval:I

.field private final mRadius:I

.field private final mStroke:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 7

    .line 118
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw$BaseInfo;-><init>()V

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v2, 0x7f060076

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    const v1, 0x7f070148

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070144

    .line 128
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070146

    .line 130
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f070147

    .line 132
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f070145

    .line 134
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f070143

    .line 136
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/16 v6, 0x8

    .line 138
    invoke-virtual {p2, v6, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw$BaseInfo;->mColor:I

    const/16 p1, 0xd

    .line 141
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->mWidth:I

    const/16 p1, 0x9

    .line 143
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->mHeight:I

    const/16 p1, 0xb

    .line 145
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->mRadius:I

    const/16 p1, 0xc

    .line 147
    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->mStroke:I

    const/16 p1, 0xa

    .line 149
    invoke-virtual {p2, p1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->mInterval:I

    const/4 p1, 0x7

    .line 151
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->mBrilliantRaysLength:I

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;)I
    .locals 0

    .line 108
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->mRadius:I

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;)I
    .locals 0

    .line 108
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->mWidth:I

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;)I
    .locals 0

    .line 108
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->mHeight:I

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;)I
    .locals 0

    .line 108
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->mStroke:I

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;)I
    .locals 0

    .line 108
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->mInterval:I

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;)I
    .locals 0

    .line 108
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape$ThumbInfo;->mBrilliantRaysLength:I

    return p0
.end method
