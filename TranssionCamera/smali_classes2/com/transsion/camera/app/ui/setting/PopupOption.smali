.class public Lcom/transsion/camera/app/ui/setting/PopupOption;
.super Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;
.source "PopupOption.java"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

.field private mContentRoot:Landroid/view/ViewGroup;

.field private mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

.field private mEnable:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsDismissing:Z

.field private mItemClickPosition:I

.field private mOrientation:I

.field private mPopupBackground:Landroid/view/View;

.field private final mPopupWindow:Landroid/widget/PopupWindow;

.field private mPopupWindowListener:Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

.field private mPositionInTopbar:I

.field private mScreenFormType:I

.field private mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

.field private mTopBarContainer:Landroid/view/View;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

.field private mUseHorizontalPopupSytle:Z


# direct methods
.method public static synthetic $r8$lambda$lfS0ifbxdccfO-Cf8AhzYrDT1eE(Lcom/transsion/camera/app/ui/setting/PopupOption;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->lambda$setOnClickListener$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PopupOption"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/setting/PopupOption;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;IILcom/transsion/camera/app/ui/PopupOptionManager;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p6, p7}, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;-><init>(Lcom/transsion/camera/app/ui/PopupOptionManager;I)V

    const/4 p5, -0x1

    .line 61
    iput p5, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mOrientation:I

    const/4 p5, 0x0

    .line 74
    iput-boolean p5, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    .line 76
    iput-boolean p5, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mEnable:Z

    .line 77
    iput-boolean p5, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUseHorizontalPopupSytle:Z

    .line 80
    iput p5, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    .line 439
    new-instance p6, Lcom/transsion/camera/app/ui/setting/PopupOption$5;

    invoke-direct {p6, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption$5;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V

    iput-object p6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 84
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mInflater:Landroid/view/LayoutInflater;

    .line 85
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p6, "top_bar_height"

    invoke-static {p1, p6}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 86
    new-instance p6, Landroid/widget/PopupWindow;

    invoke-direct {p6, p3, p4, p1, p5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object p6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 p1, 0x44e

    .line 87
    invoke-static {p6, p1}, Landroidx/core/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 88
    invoke-virtual {p6, p5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const/4 p1, 0x1

    .line 90
    invoke-virtual {p6, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 91
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p6, p1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 93
    instance-of p1, p3, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 94
    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    const p1, 0x7f0904be

    .line 98
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarContainer:Landroid/view/View;

    const p1, 0x7f090375

    .line 99
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupBackground:Landroid/view/View;

    .line 101
    new-instance p1, Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;Lcom/transsion/camera/app/ui/setting/PopupOption$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    .line 102
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->useHorizontalPopupStyle(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUseHorizontalPopupSytle:Z

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    check-cast p1, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    new-instance p2, Lcom/transsion/camera/app/ui/setting/PopupOption$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption$1;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->setLayoutListener(Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout$LayoutListener;)V

    return-void

    .line 96
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PopupOptions needs a ViewGroup for content!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/view/ViewGroup;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindowListener:Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/ui/setting/PopupOption;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->doOnDismiss()V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/view/View;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupBackground:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/setting/PopupOption;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPositionInTopbar:I

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/setting/PopupOption;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$502(Lcom/transsion/camera/app/ui/setting/PopupOption;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mEnable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    return-object p0
.end method

.method static synthetic access$700()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 54
    sget-object v0, Lcom/transsion/camera/app/ui/setting/PopupOption;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/widget/PopupWindow;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/ui/setting/PopupOption;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    return p0
.end method

.method static synthetic access$902(Lcom/transsion/camera/app/ui/setting/PopupOption;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    return p1
.end method

.method private clearContentListDrawable()V
    .locals 4

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 265
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 266
    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private doOnDismiss()V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 249
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    if-eqz v1, :cond_0

    .line 250
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupBackground:Landroid/view/View;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;->cancelAnimation(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->clearContentListDrawable()V

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    const/4 v0, 0x0

    .line 256
    iput-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 257
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;->onDismiss(Z)V

    .line 258
    iput-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    return-void
.end method

.method private inflateEntryViews(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;Z)V
    .locals 8

    .line 369
    invoke-interface {p2}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 373
    :cond_0
    invoke-interface {p2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 374
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 376
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_6

    const v4, 0x7f0c0171

    .line 377
    iget-object v5, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 379
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-le v5, v3, :cond_1

    .line 381
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 383
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->shouldTintDrawable()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 384
    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v5

    if-ne v3, v5, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    invoke-direct {p0, v4, v5, p3}, Lcom/transsion/camera/app/ui/setting/PopupOption;->wrapListDrawable(Landroid/widget/ImageView;ZZ)V

    .line 386
    :cond_3
    iget-object v5, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 388
    iget v5, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mOrientation:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_4

    .line 389
    invoke-virtual {v4, v5, v2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 393
    :cond_4
    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v5

    if-ne v3, v5, :cond_5

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUseHorizontalPopupSytle:Z

    if-nez v5, :cond_5

    .line 394
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_2

    .line 396
    :cond_5
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 398
    :goto_2
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/setting/PopupOption;->setOnClickListener(Lcom/transsion/camera/app/ui/widget/RotateImageView;)V

    const v5, 0x3f4ccccd    # 0.8f

    const/4 v6, 0x0

    .line 399
    invoke-static {v4, v5, v6}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private synthetic lambda$setOnClickListener$0(Landroid/view/View;)V
    .locals 1

    .line 406
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 410
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    if-eqz v0, :cond_1

    .line 411
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;->onOptionIndexChanged(I)V

    .line 413
    :cond_1
    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemClickPosition:I

    .line 414
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopup()V

    return-void
.end method

.method private processScreenSupply(Z)V
    .locals 4

    .line 479
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 480
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 483
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 484
    invoke-virtual {v2}, Landroid/widget/ImageView;->isSelected()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p1, :cond_0

    const/high16 v3, -0x1000000

    .line 486
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 488
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setOnClickListener(Lcom/transsion/camera/app/ui/widget/RotateImageView;)V
    .locals 1

    .line 405
    new-instance v0, Lcom/transsion/camera/app/ui/setting/PopupOption$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private shouldTintDrawable()Z
    .locals 3

    .line 497
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 500
    :cond_0
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 504
    :cond_1
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    if-eqz v2, :cond_2

    return v1

    .line 507
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 508
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->shouldTintForPopupItem(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private wrapListDrawable(Landroid/widget/ImageView;ZZ)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    const/high16 p0, -0x1000000

    .line 518
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 520
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dismissPopup()V
    .locals 8

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 189
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUseHorizontalPopupSytle:Z

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-nez v0, :cond_1

    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 196
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    sget-object p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "The popup window is dismissing"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 201
    :cond_2
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mEnable:Z

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    .line 203
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupBackground:Landroid/view/View;

    const/4 v4, 0x1

    iget v5, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPositionInTopbar:I

    iget v6, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    new-instance v7, Lcom/transsion/camera/app/ui/setting/PopupOption$2;

    invoke-direct {v7, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption$2;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V

    invoke-interface/range {v1 .. v7}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;->startPopupAnimation(Landroid/view/ViewGroup;Landroid/view/View;ZIILandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 228
    :cond_3
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mEnable:Z

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 230
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupBackground:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public dismissPopupWithoutAnimation()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/transsion/camera/app/ui/setting/PopupOption$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption$3;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    return-void
.end method

.method public getItemSelectPosition()I
    .locals 0

    .line 468
    iget p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemClickPosition:I

    return p0
.end method

.method public isShowing()Z
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 4

    .line 132
    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mOrientation:I

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 136
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 137
    instance-of v3, v2, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v3, :cond_0

    .line 138
    check-cast v2, Lcom/transsion/camera/app/ui/widget/IRotatable;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 3

    .line 146
    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    .line 147
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 149
    iget-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarContainer:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 150
    iget-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v0, 0x0

    const/4 v1, 0x1

    aget p1, p1, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 152
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onScreenSupply(Z)V
    .locals 1

    .line 473
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->shouldTintDrawable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->processScreenSupply(Z)V

    :cond_0
    return-void
.end method

.method public setAnimationStrategy(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    return-void
.end method

.method public setPopupWindowListener(Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindowListener:Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    return-void
.end method

.method public showAtLocation(Landroid/view/View;IIILjava/lang/String;)V
    .locals 0

    .line 329
    invoke-super {p0, p5}, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->showAtLocation(Ljava/lang/String;)V

    .line 330
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public showPopupIfNeed(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;IZ)Z
    .locals 8

    .line 273
    iput-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    .line 274
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 275
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v1

    .line 276
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    .line 278
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 279
    aget-object v5, v1, v4

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 280
    iput v4, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mItemClickPosition:I

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 284
    :cond_1
    :goto_1
    iput p3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPositionInTopbar:I

    .line 286
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    const/4 v6, 0x1

    xor-int/2addr v1, v6

    if-eqz v1, :cond_4

    .line 290
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/transsion/camera/app/ui/setting/PopupOption$4;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption$4;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 300
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    check-cast v1, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    .line 301
    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->cancelLayoutEndAnim(Z)V

    .line 302
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-direct {p0, v1, v2, p4}, Lcom/transsion/camera/app/ui/setting/PopupOption;->inflateEntryViews(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;Z)V

    .line 303
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarContainer:Landroid/view/View;

    check-cast v1, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    .line 304
    iget v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mScreenFormType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 305
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object v1

    .line 306
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    shr-int/2addr v1, v6

    .line 307
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070765

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int v4, v1, v2

    .line 308
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x31

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 309
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 308
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    goto :goto_2

    .line 311
    :cond_2
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x31

    const/4 v4, 0x0

    .line 312
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v5

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v7

    .line 311
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/ui/setting/PopupOption;->showAtLocation(Landroid/view/View;IIILjava/lang/String;)V

    .line 316
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindowListener:Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    if-eqz v0, :cond_3

    .line 317
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;->onPopupShow()V

    .line 320
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return v6

    :cond_4
    return v3
.end method
