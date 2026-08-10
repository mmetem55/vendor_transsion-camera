.class public Lcom/transsion/secondaryhome/view/DefaultStubView;
.super Landroid/widget/FrameLayout;
.source "DefaultStubView.java"

# interfaces
.implements Lcom/transsion/secondaryhome/view/TranRemoteInterface;


# annotations
.annotation runtime Lcom/transsion/secondaryhome/common/KolunKeep;
.end annotation


# static fields
.field public static final TYPE_ADD_CONTENT_VIEW:I = -0x64


# instance fields
.field mContentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addContextView(I)V
    .locals 2

    .line 63
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 64
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 69
    :cond_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 70
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 72
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getTargetView(I)Landroid/view/View;
    .locals 1

    const/16 v0, -0x64

    if-ne v0, p1, :cond_0

    return-object p0

    .line 79
    :cond_0
    iget-object p0, p0, Lcom/transsion/secondaryhome/view/DefaultStubView;->mContentView:Landroid/view/View;

    if-eqz p0, :cond_1

    .line 82
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 80
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "addContextView  fist!!!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onActivityPause()V
    .locals 0

    return-void
.end method

.method public onActivityResume()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 44
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method

.method public onDismiss()V
    .locals 0

    return-void
.end method

.method public onPreShow()V
    .locals 0

    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method
