.class public Lcom/transsion/camera/feature/arcore/common/widgets/CustomViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "CustomViewPager.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CustomViewPager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomViewPager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 31
    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager$SavedState;

    if-nez v0, :cond_0

    .line 32
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 35
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 0

    .line 26
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method
