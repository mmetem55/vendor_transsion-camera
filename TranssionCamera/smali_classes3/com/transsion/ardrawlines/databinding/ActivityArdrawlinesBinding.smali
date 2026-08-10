.class public abstract Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityArdrawlinesBinding.java"


# instance fields
.field public final actionBarBack:Landroid/widget/ImageButton;

.field public final unityPlayer:Landroid/widget/FrameLayout;

.field public final viewBrushArea:Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;

.field public final viewGuide:Lcom/transsion/ardrawlines/databinding/ViewGuideBinding;

.field public final viewHolder:Landroid/widget/ImageButton;

.field public final viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

.field public final viewTiming:Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageButton;Landroid/widget/FrameLayout;Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;Lcom/transsion/ardrawlines/databinding/ViewGuideBinding;Landroid/widget/ImageButton;Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 44
    iput-object p4, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->actionBarBack:Landroid/widget/ImageButton;

    .line 45
    iput-object p5, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->unityPlayer:Landroid/widget/FrameLayout;

    .line 46
    iput-object p6, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewBrushArea:Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;

    .line 47
    iput-object p7, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewGuide:Lcom/transsion/ardrawlines/databinding/ViewGuideBinding;

    .line 48
    iput-object p8, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewHolder:Landroid/widget/ImageButton;

    .line 49
    iput-object p9, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    .line 50
    iput-object p10, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewTiming:Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;
    .locals 1

    .line 93
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    sget v0, Lcom/transsion/ardrawlines/R$layout;->activity_ardrawlines:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;
    .locals 1

    .line 75
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;
    .locals 1

    .line 56
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    sget v0, Lcom/transsion/ardrawlines/R$layout;->activity_ardrawlines:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    sget v0, Lcom/transsion/ardrawlines/R$layout;->activity_ardrawlines:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    return-object p0
.end method
