.class public Lcom/transsion/ardrawlines/rotate/MyOrientationListener;
.super Landroid/view/OrientationEventListener;
.source "MyOrientationListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyOrientationListener"


# instance fields
.field private mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/ardrawlines/ARDrawLinesActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentOrientation:Lcom/transsion/ardrawlines/rotate/MyOrientation;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/ardrawlines/ARDrawLinesActivity;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 14
    sget-object v0, Lcom/transsion/ardrawlines/rotate/MyOrientation;->PORTRAIT:Lcom/transsion/ardrawlines/rotate/MyOrientation;

    iput-object v0, p0, Lcom/transsion/ardrawlines/rotate/MyOrientationListener;->mCurrentOrientation:Lcom/transsion/ardrawlines/rotate/MyOrientation;

    .line 18
    iput-object p1, p0, Lcom/transsion/ardrawlines/rotate/MyOrientationListener;->mContext:Ljava/lang/ref/WeakReference;

    .line 19
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ardrawlines/ARDrawLinesActivity;

    invoke-virtual {p1}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iput-object p1, p0, Lcom/transsion/ardrawlines/rotate/MyOrientationListener;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    return-void
.end method

.method private switchOrientation(Lcom/transsion/ardrawlines/rotate/MyOrientation;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/transsion/ardrawlines/rotate/MyOrientationListener;->mCurrentOrientation:Lcom/transsion/ardrawlines/rotate/MyOrientation;

    if-eq p1, v0, :cond_4

    .line 37
    iput-object p1, p0, Lcom/transsion/ardrawlines/rotate/MyOrientationListener;->mCurrentOrientation:Lcom/transsion/ardrawlines/rotate/MyOrientation;

    .line 38
    sget-object v0, Lcom/transsion/ardrawlines/rotate/MyOrientationListener$1;->$SwitchMap$com$transsion$ardrawlines$rotate$MyOrientation:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/transsion/ardrawlines/rotate/MyOrientationListener;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->gallery:Landroid/widget/ImageButton;

    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setRotation(F)V

    .line 53
    iget-object p0, p0, Lcom/transsion/ardrawlines/rotate/MyOrientationListener;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewTiming:Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;->toast:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setRotation(F)V

    goto :goto_0

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/transsion/ardrawlines/rotate/MyOrientationListener;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->gallery:Landroid/widget/ImageButton;

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setRotation(F)V

    .line 49
    iget-object p0, p0, Lcom/transsion/ardrawlines/rotate/MyOrientationListener;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewTiming:Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;->toast:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setRotation(F)V

    goto :goto_0

    .line 44
    :cond_2
    iget-object p1, p0, Lcom/transsion/ardrawlines/rotate/MyOrientationListener;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->gallery:Landroid/widget/ImageButton;

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setRotation(F)V

    .line 45
    iget-object p0, p0, Lcom/transsion/ardrawlines/rotate/MyOrientationListener;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewTiming:Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;->toast:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setRotation(F)V

    goto :goto_0

    .line 40
    :cond_3
    iget-object p1, p0, Lcom/transsion/ardrawlines/rotate/MyOrientationListener;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->gallery:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setRotation(F)V

    .line 41
    iget-object p0, p0, Lcom/transsion/ardrawlines/rotate/MyOrientationListener;->mBinding:Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewTiming:Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;->toast:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setRotation(F)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x14

    if-lt p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x154

    if-le p1, v0, :cond_2

    .line 25
    :cond_1
    sget-object p1, Lcom/transsion/ardrawlines/rotate/MyOrientation;->PORTRAIT:Lcom/transsion/ardrawlines/rotate/MyOrientation;

    invoke-direct {p0, p1}, Lcom/transsion/ardrawlines/rotate/MyOrientationListener;->switchOrientation(Lcom/transsion/ardrawlines/rotate/MyOrientation;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0xfa

    if-le p1, v0, :cond_3

    const/16 v0, 0x122

    if-ge p1, v0, :cond_3

    .line 27
    sget-object p1, Lcom/transsion/ardrawlines/rotate/MyOrientation;->LANDSCAPE:Lcom/transsion/ardrawlines/rotate/MyOrientation;

    invoke-direct {p0, p1}, Lcom/transsion/ardrawlines/rotate/MyOrientationListener;->switchOrientation(Lcom/transsion/ardrawlines/rotate/MyOrientation;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0xa0

    if-le p1, v0, :cond_4

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_4

    .line 29
    sget-object p1, Lcom/transsion/ardrawlines/rotate/MyOrientation;->PORTRAIT_REVERSE:Lcom/transsion/ardrawlines/rotate/MyOrientation;

    invoke-direct {p0, p1}, Lcom/transsion/ardrawlines/rotate/MyOrientationListener;->switchOrientation(Lcom/transsion/ardrawlines/rotate/MyOrientation;)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x46

    if-le p1, v0, :cond_5

    const/16 v0, 0x6e

    if-ge p1, v0, :cond_5

    .line 31
    sget-object p1, Lcom/transsion/ardrawlines/rotate/MyOrientation;->LANDSCAPE_REVERSE:Lcom/transsion/ardrawlines/rotate/MyOrientation;

    invoke-direct {p0, p1}, Lcom/transsion/ardrawlines/rotate/MyOrientationListener;->switchOrientation(Lcom/transsion/ardrawlines/rotate/MyOrientation;)V

    :cond_5
    :goto_0
    return-void
.end method
