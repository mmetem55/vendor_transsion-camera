.class public abstract Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityPlaybackBinding.java"


# instance fields
.field public final playBackPress:Landroid/widget/ImageButton;

.field public final playbackView:Lcom/transsion/ardrawlines/view/PlaybackView;

.field public final saveButton:Landroid/widget/ImageButton;

.field public final shareButton:Landroid/widget/ImageButton;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageButton;Lcom/transsion/ardrawlines/view/PlaybackView;Landroid/widget/ImageButton;Landroid/widget/ImageButton;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 34
    iput-object p4, p0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;->playBackPress:Landroid/widget/ImageButton;

    .line 35
    iput-object p5, p0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;->playbackView:Lcom/transsion/ardrawlines/view/PlaybackView;

    .line 36
    iput-object p6, p0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;->saveButton:Landroid/widget/ImageButton;

    .line 37
    iput-object p7, p0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;->shareButton:Landroid/widget/ImageButton;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;
    .locals 1

    .line 80
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    sget v0, Lcom/transsion/ardrawlines/R$layout;->activity_playback:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;
    .locals 1

    .line 62
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;
    .locals 1

    .line 43
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    sget v0, Lcom/transsion/ardrawlines/R$layout;->activity_playback:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    sget v0, Lcom/transsion/ardrawlines/R$layout;->activity_playback:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;

    return-object p0
.end method
