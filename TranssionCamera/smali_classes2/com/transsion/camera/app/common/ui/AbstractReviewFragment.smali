.class public Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;
.super Landroid/app/Fragment;
.source "AbstractReviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ui/AbstractReviewFragment$OrientationEventListenerImpl;
    }
.end annotation


# static fields
.field private static final ANGLE_360:I = 0x168

.field private static final ANGLE_90:I = 0x5a

.field private static final HALF_UNIT:I = 0x2d

.field private static final ORIENTATION_HYSTERESIS:I = 0x5


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field private mContentView:Landroid/view/View;

.field protected mOrientation:I

.field protected mOrientationListener:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment$OrientationEventListenerImpl;

.field private mSystemUIVisible:Z


# direct methods
.method public static synthetic $r8$lambda$Cxcpi0LRQq8I0o23wEJtKuLqBwA(Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->toggleSystemUI(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mOrientation:I

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mSystemUIVisible:Z

    return-void
.end method

.method static synthetic access$100(II)I
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->roundOrientation(II)I

    move-result p0

    return p0
.end method

.method private static angleOfUnit90(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x2d

    .line 154
    div-int/lit8 p0, p0, 0x5a

    mul-int/lit8 p0, p0, 0x5a

    rem-int/lit16 p0, p0, 0x168

    return p0
.end method

.method private hideSystemUI()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mSystemUIVisible:Z

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mContentView:Landroid/view/View;

    const/16 v0, 0x1307

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private static isAngleChanged(II)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    sub-int/2addr p0, p1

    .line 146
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    rsub-int p1, p0, 0x168

    .line 147
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 p1, 0x32

    if-lt p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static roundOrientation(II)I
    .locals 1

    .line 136
    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->isAngleChanged(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->angleOfUnit90(I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method private showSystemUI()V
    .locals 1

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mSystemUIVisible:Z

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mContentView:Landroid/view/View;

    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private toggleSystemUI(Landroid/view/View;)V
    .locals 0

    .line 62
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mSystemUIVisible:Z

    if-eqz p1, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->hideSystemUI()V

    goto :goto_0

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->showSystemUI()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const v0, 0x1020002

    .line 50
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mContentView:Landroid/view/View;

    .line 51
    new-instance p1, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment$OrientationEventListenerImpl;

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment$OrientationEventListenerImpl;-><init>(Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;Landroid/content/Context;Lcom/transsion/camera/app/common/ui/AbstractReviewFragment$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mOrientationListener:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment$OrientationEventListenerImpl;

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->enhanceScreenBrightness(Landroid/app/Activity;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 97
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mOrientationListener:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment$OrientationEventListenerImpl;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, -0x1

    .line 99
    iput v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mOrientation:I

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 89
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mOrientationListener:Lcom/transsion/camera/app/common/ui/AbstractReviewFragment$OrientationEventListenerImpl;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method protected toggleSystemUI()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mContentView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mContentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method protected updateOrientation(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/transsion/camera/app/common/ui/AbstractReviewFragment;->mOrientation:I

    return-void
.end method
