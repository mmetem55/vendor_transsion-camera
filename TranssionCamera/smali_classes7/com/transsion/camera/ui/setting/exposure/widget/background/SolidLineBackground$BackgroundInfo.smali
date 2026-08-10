.class public Lcom/transsion/camera/ui/setting/exposure/widget/background/SolidLineBackground$BackgroundInfo;
.super Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw$BaseInfo;
.source "SolidLineBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/exposure/widget/background/SolidLineBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundInfo"
.end annotation


# instance fields
.field private final mStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 3

    .line 41
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw$BaseInfo;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v2, 0x7f060069

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    const v1, 0x7f070127

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw$BaseInfo;->mColor:I

    const/4 p1, 0x3

    .line 54
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/widget/background/SolidLineBackground$BackgroundInfo;->mStrokeWidth:I

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/exposure/widget/background/SolidLineBackground$BackgroundInfo;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/widget/background/SolidLineBackground$BackgroundInfo;->mStrokeWidth:I

    return p0
.end method
