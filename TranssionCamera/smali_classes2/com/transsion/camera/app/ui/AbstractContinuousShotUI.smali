.class public abstract Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;
.super Ljava/lang/Object;
.source "AbstractContinuousShotUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$IContinuousShotControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractContinuousShotUI$MainHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mMainHandler:Landroid/os/Handler;

.field private mOrientation:I

.field protected mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mRootView:Landroid/view/View;

.field private mScreenFormType:I

.field private mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field protected mShotProgress:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mOrientation:I

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mScreenFormType:I

    .line 57
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI$MainHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI$MainHandler;-><init>(Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mMainHandler:Landroid/os/Handler;

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 38
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->hideContinuousShotView()V

    return-void
.end method

.method private hideContinuousShotView()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mShotProgress:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->onContinuousShotProgressHide(Landroid/view/View;)V

    return-void
.end method

.method private updateCSContainerLayoutParams(IZ)V
    .locals 5

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 174
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 176
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 177
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/16 v1, 0x5a

    const v2, 0x7f070113

    const v3, 0x7f070114

    if-eq p1, v1, :cond_3

    const/16 v1, 0xb4

    const v4, 0x7f070112

    if-eq p1, v1, :cond_2

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_1

    const v1, 0x800035

    .line 197
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 198
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 199
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x55

    .line 190
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 191
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 192
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_2
    const v1, 0x800053

    .line 185
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 186
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 187
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_3
    const/16 v1, 0x33

    .line 180
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 181
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 182
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 202
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    if-eqz v1, :cond_5

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    :cond_5
    const/16 v1, 0x51

    .line 205
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 206
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070111

    .line 207
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 208
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 210
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0054

    const/4 v1, 0x1

    .line 63
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mRootView:Landroid/view/View;

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mResources:Landroid/content/res/Resources;

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onContinuousShotProgress(II)V
    .locals 1

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected onContinuousShotProgressHide(Landroid/view/View;)V
    .locals 0

    .line 131
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onContinuousShotProgressHide"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onContinuousShotProgressShow(Landroid/view/View;)V
    .locals 0

    .line 127
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onContinuousShotProgressShow"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onContinuousShotStop()V
    .locals 1

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onOrientationChanged(IZ)V
    .locals 3

    .line 87
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mOrientation:I

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->updateCSContainerLayoutParams(IZ)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mScreenFormType:I

    .line 96
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mOrientation:I

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->updateCSContainerLayoutParams(IZ)V

    return-void
.end method

.method public setupViews()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mRootView:Landroid/view/View;

    const v1, 0x7f090102

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mScreenFormType:I

    .line 73
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mOrientation:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->updateCSContainerLayoutParams(IZ)V

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mRootView:Landroid/view/View;

    const v1, 0x7f090101

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mShotProgress:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressNumberFormat:Ljava/lang/String;

    return-void
.end method

.method protected showShotProgress(II)V
    .locals 4

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->onContinuousShotProgressShow(Landroid/view/View;)V

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 115
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mProgressNumberFormat:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractContinuousShotUI;->mShotProgress:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method
