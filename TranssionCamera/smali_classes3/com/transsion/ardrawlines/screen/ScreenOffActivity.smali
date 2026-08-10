.class public Lcom/transsion/ardrawlines/screen/ScreenOffActivity;
.super Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;
.source "ScreenOffActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/ardrawlines/base/BaseAppCompatActivity<",
        "Lcom/transsion/ardrawlines/databinding/ScreenOffLayoutBinding;",
        ">;"
    }
.end annotation


# static fields
.field private static final COUNTS:I = 0x2

.field private static final DURATION:J = 0x3e8L

.field public static final LAUNCH_MODE:Ljava/lang/String; = "launch_mode"

.field public static final ON_PURPOSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ScreenOffActivity"


# instance fields
.field private mHits:[J

.field mOffScreen:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 14
    iput-object v0, p0, Lcom/transsion/ardrawlines/screen/ScreenOffActivity;->mHits:[J

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/screen/ScreenOffActivity;->mOffScreen:Z

    return-void
.end method

.method private continuousClick()V
    .locals 6

    .line 87
    iget-object v0, p0, Lcom/transsion/ardrawlines/screen/ScreenOffActivity;->mHits:[J

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget-object v0, p0, Lcom/transsion/ardrawlines/screen/ScreenOffActivity;->mHits:[J

    array-length v1, v0

    sub-int/2addr v1, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 89
    iget-object v0, p0, Lcom/transsion/ardrawlines/screen/ScreenOffActivity;->mHits:[J

    aget-wide v0, v0, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 90
    iput-object v0, p0, Lcom/transsion/ardrawlines/screen/ScreenOffActivity;->mHits:[J

    .line 91
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method


# virtual methods
.method public initData()V
    .locals 0

    return-void
.end method

.method public initViews()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/transsion/ardrawlines/databinding/ScreenOffLayoutBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ScreenOffLayoutBinding;->btnScreenOnId:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->addClick(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 30
    invoke-super {p0, p1}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "launch_mode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/screen/ScreenOffActivity;->setScreenOff()V

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/screen/ScreenOffActivity;->setScreenOn()V

    .line 75
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 76
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->onResume()V

    .line 67
    iget-boolean v0, p0, Lcom/transsion/ardrawlines/screen/ScreenOffActivity;->mOffScreen:Z

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/transsion/ardrawlines/databinding/ScreenOffLayoutBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ScreenOffLayoutBinding;->btnScreenOnId:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/transsion/ardrawlines/screen/ScreenOffActivity;->continuousClick()V

    :cond_0
    return-void
.end method

.method public setContentView(Landroid/os/Bundle;)I
    .locals 0

    .line 43
    sget p0, Lcom/transsion/ardrawlines/R$layout;->screen_off_layout:I

    return p0
.end method

.method public setScreenOff()V
    .locals 1

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/screen/ScreenOffActivity;->mOffScreen:Z

    return-void
.end method

.method public setScreenOn()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/screen/ScreenOffActivity;->mOffScreen:Z

    return-void
.end method

.method public useActionBar()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
