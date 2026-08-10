.class public Lcom/transsion/camera/app/ui/ShareUI;
.super Ljava/lang/Object;
.source "ShareUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IRootUI;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;
.implements Lcom/transsion/camera/app/ui/ShareDialogFragment$DismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/ShareUI$UIHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBottomOffset:I

.field private mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private final mMainHandler:Landroid/os/Handler;

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mShareDialogFragment:Lcom/transsion/camera/app/ui/ShareDialogFragment;

.field private mSharePicBtn:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mSharePicRoot:Landroid/view/ViewGroup;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$awDA0wHy9-yXI5efMsbU2nwTzko(Lcom/transsion/camera/app/ui/ShareUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ShareUI;->clkSharePicBtn(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ShareUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ShareUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mBottomOffset:I

    .line 41
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 45
    new-instance v0, Lcom/transsion/camera/app/ui/ShareUI$UIHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/ShareUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/ShareUI;Lcom/transsion/camera/app/ui/ShareUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ShareUI;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShareUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/ShareUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mSharePicBtn:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/ShareUI;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mBottomOffset:I

    return p0
.end method

.method static synthetic access$300()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 27
    sget-object v0, Lcom/transsion/camera/app/ui/ShareUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private clkSharePicBtn(Landroid/view/View;)V
    .locals 2

    .line 137
    sget-object p1, Lcom/transsion/camera/app/ui/ShareUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "clkSharePicBtn"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mFragmentManager:Landroid/app/FragmentManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x7d0

    .line 141
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 145
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "No share when it\'s in monkey scene."

    .line 146
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mShareDialogFragment:Lcom/transsion/camera/app/ui/ShareDialogFragment;

    if-nez v0, :cond_3

    .line 151
    new-instance v0, Lcom/transsion/camera/app/ui/ShareDialogFragment;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ShareUI;->mSharePicRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/UIUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/ShareDialogFragment;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mShareDialogFragment:Lcom/transsion/camera/app/ui/ShareDialogFragment;

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0xac

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const-string v0, "ShareDialogFragment show"

    .line 154
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ShareUI;->mShareDialogFragment:Lcom/transsion/camera/app/ui/ShareDialogFragment;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/ShareDialogFragment;->updateUri(Landroid/net/Uri;)V

    .line 156
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ShareUI;->mShareDialogFragment:Lcom/transsion/camera/app/ui/ShareDialogFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_4

    .line 157
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ShareUI;->mShareDialogFragment:Lcom/transsion/camera/app/ui/ShareDialogFragment;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/ShareDialogFragment;->setOnDismissListener(Lcom/transsion/camera/app/ui/ShareDialogFragment$DismissListener;)V

    .line 158
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ShareUI;->mShareDialogFragment:Lcom/transsion/camera/app/ui/ShareDialogFragment;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v0, "ShareDialogFragment"

    invoke-virtual {p1, p0, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/16 p1, 0xf

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public hideShareEntryView()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const v0, 0x7f0c01cc

    const/4 v1, 0x1

    .line 55
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090416

    .line 56
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mSharePicRoot:Landroid/view/ViewGroup;

    .line 57
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07037a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 58
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ShareUI;->mSharePicRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 59
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/ScreenUtils;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 60
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ShareUI;->mSharePicRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f090414

    .line 61
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShareUI;->mSharePicBtn:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 62
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShareUI;->mFragmentManager:Landroid/app/FragmentManager;

    return-object p2
.end method

.method public onDismiss()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0xad

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 124
    sget-object v0, Lcom/transsion/camera/app/ui/ShareUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ShareDialogFragment hide"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mSharePicBtn:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mShareDialogFragment:Lcom/transsion/camera/app/ui/ShareDialogFragment;

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mSharePicBtn:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_0
    return-void
.end method

.method public setBottomOffset(I)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/transsion/camera/app/ui/ShareUI;->mBottomOffset:I

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mSharePicBtn:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_0

    .line 112
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setupViews()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mSharePicRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mSharePicBtn:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/app/ui/ShareUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ShareUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/ShareUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mSharePicBtn:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public sinkShareUI(ZIZ)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-eqz p3, :cond_1

    const/16 p1, 0xc8

    goto :goto_1

    :cond_1
    move p1, v0

    .line 192
    :goto_1
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 193
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ShareUI;->mSharePicBtn:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v2, 0x1

    new-array v3, v2, [F

    int-to-float p2, p2

    aput p2, v3, v0

    const-string p2, "translationY"

    invoke-static {v1, p2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    int-to-long v3, p1

    invoke-virtual {p2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array p2, v2, [Landroid/animation/Animator;

    aput-object p1, p2, v0

    .line 194
    invoke-virtual {p3, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p3, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 196
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public updateUri(Landroid/net/Uri;)V
    .locals 3

    .line 102
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShareUI;->mUri:Landroid/net/Uri;

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ShareUI;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ShareUI;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ShareUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareUI;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
