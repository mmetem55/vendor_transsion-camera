.class public Lcom/transsion/camera/app/ui/ToastUI;
.super Ljava/lang/Object;
.source "ToastUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IToastUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/ToastUI$UIHandler;
    }
.end annotation


# static fields
.field protected static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAutoHideToastText:Landroid/widget/TextView;

.field private mCommonToastRoot:Landroid/widget/FrameLayout;

.field private mParentView:Landroid/view/View;

.field protected mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field protected mRootView:Landroid/view/ViewGroup;

.field private final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private final mUIHandler:Lcom/transsion/camera/app/ui/ToastUI$UIHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/ToastUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ToastUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ToastUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 40
    new-instance p1, Lcom/transsion/camera/app/ui/ToastUI$UIHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/app/ui/ToastUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/ToastUI;Lcom/transsion/camera/app/ui/ToastUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ToastUI;->mUIHandler:Lcom/transsion/camera/app/ui/ToastUI$UIHandler;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/ToastUI;Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ToastUI;->doShowToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/ToastUI;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToastUI;->doShowToast()V

    return-void
.end method

.method private doShowToast()V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToastUI;->hideAutoHideToastView()V

    return-void
.end method

.method private doShowToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 3

    .line 102
    sget-object v0, Lcom/transsion/camera/app/ui/ToastUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doShowToast,info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ToastUI;->showAutoHideToastView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mUIHandler:Lcom/transsion/camera/app/ui/ToastUI$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mUIHandler:Lcom/transsion/camera/app/ui/ToastUI$UIHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 112
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mRootView:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private hideAutoHideToastView()V
    .locals 2

    .line 136
    sget-object v0, Lcom/transsion/camera/app/ui/ToastUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideAutoHideToastView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mAutoHideToastText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ToastUI;->hideToastView(Landroid/widget/TextView;)V

    return-void
.end method

.method private hideToastView(Landroid/widget/TextView;)V
    .locals 0

    const/16 p0, 0x8

    .line 175
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p0, 0x0

    .line 176
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initPadding()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mCommonToastRoot:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ToastUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ToastUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 88
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getNavigationHeight()I

    move-result p0

    add-int/2addr v2, p0

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    const/4 p0, 0x0

    .line 87
    invoke-virtual {v0, p0, v1, p0, p0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method private showAutoHideToastView(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 2

    .line 131
    sget-object v0, Lcom/transsion/camera/app/ui/ToastUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showAutoHideToastView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mAutoHideToastText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/ToastUI;->showToastView(Lcom/transsion/camera/app/common/ui/HintInfo;Landroid/widget/TextView;)V

    return-void
.end method

.method private showToastView(Lcom/transsion/camera/app/common/ui/HintInfo;Landroid/widget/TextView;)V
    .locals 4

    const/4 p0, 0x0

    .line 141
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isHighlight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0600d2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_1

    .line 151
    :cond_1
    invoke-virtual {p2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0600d3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 153
    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, p0, p0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 157
    invoke-virtual {p2, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 159
    :cond_2
    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 162
    :goto_2
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isBackgroundEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 163
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isHighlight()Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x7f080527

    .line 164
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    :cond_3
    const p0, 0x7f080c6b

    .line 166
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    .line 169
    :cond_4
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public hideToast()V
    .locals 1

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mUIHandler:Lcom/transsion/camera/app/ui/ToastUI$UIHandler;

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c01c7

    const/4 v1, 0x1

    .line 73
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ToastUI;->mParentView:Landroid/view/View;

    const p2, 0x7f0904b9

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ToastUI;->mRootView:Landroid/view/ViewGroup;

    .line 75
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 p2, 0x3e800000    # 0.25f

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0, p2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ToastUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public setupViews()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900f7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mCommonToastRoot:Landroid/widget/FrameLayout;

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mAutoHideToastText:Landroid/widget/TextView;

    .line 83
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToastUI;->initPadding()V

    return-void
.end method

.method public showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 2

    .line 93
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mUIHandler:Lcom/transsion/camera/app/ui/ToastUI$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mUIHandler:Lcom/transsion/camera/app/ui/ToastUI$UIHandler;

    const/16 v0, 0x64

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public unInit()V
    .locals 2

    .line 126
    sget-object v0, Lcom/transsion/camera/app/ui/ToastUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mUIHandler:Lcom/transsion/camera/app/ui/ToastUI$UIHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
