.class public Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "TimeLapseDurationUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI$MyStatusChangeListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_200:I = 0xc8

.field private static final SETTING_KEY:Ljava/lang/String; = "key_time_lapse_duration"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field protected static final TIME_LAPSE_DURATION_DEFUALT:Ljava/lang/String; = "0"

.field private static final TIME_LAPSE_RATE_AUTO:Ljava/lang/String; = "0"

.field protected static final TIME_LAPSE_RATE_DEFUALT:Ljava/lang/String; = "15"

.field private static final ZERO_OFFSET:I


# instance fields
.field private mCurrentEntryValue:Ljava/lang/String;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Landroid/widget/FrameLayout;

.field private final mItemSelectedListener:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$OnTabSelectedListener;

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mResources:Landroid/content/res/Resources;

.field private mRootView:Landroid/widget/FrameLayout;

.field private final mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSupportedEntries:[Ljava/lang/String;

.field private mSupportedEntryValues:[Ljava/lang/String;

.field private mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

.field private mTimeUnitTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 4

    .line 58
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 51
    new-instance v1, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI$MyStatusChangeListener;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI$MyStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI$1;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 52
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 273
    new-instance v0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI$1;-><init>(Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mItemSelectedListener:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$OnTabSelectedListener;

    .line 59
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mResources:Landroid/content/res/Resources;

    .line 60
    new-instance v0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationSettingUISpec;

    invoke-direct {v0, p1}, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 32
    sget-object v0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mTimeUnitTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;)Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;)[Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mSupportedEntries:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;)[Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mSupportedEntryValues:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->onValueChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createLevelTab()V
    .locals 6

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->removeAllTabs()V

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    const v1, 0x7f0c01bf

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->setTabItemLayout(I)V

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    .line 103
    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "time_lapse_duration_setting_text_view_entries"

    const-string v3, "array"

    .line 100
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 104
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 105
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    invoke-virtual {v5}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->newTab()Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    move-result-object v5

    .line 106
    invoke-virtual {v5, v4}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    move-result-object v4

    const-class v5, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;

    .line 107
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    move-result-object v4

    .line 108
    invoke-virtual {v4, v2}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->setShowPointIcon(Z)Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    move-result-object v4

    .line 109
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    invoke-virtual {v5, v4}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->addTab(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->selectTabIndex(IZ)Z

    :cond_1
    return-void
.end method

.method private fadeIn()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->checkTabIndex()V

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    .line 262
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private fadeOut()V
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f070733

    .line 267
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 269
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    return-void
.end method

.method private hideScrollBar()V
    .locals 0

    .line 255
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->fadeOut()V

    return-void
.end method

.method private onValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 283
    sget-object p1, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onValueChanged value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 284
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 285
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_time_lapse_duration"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    :cond_0
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 288
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_1

    .line 289
    invoke-interface {p0, p2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private showScrollBar()V
    .locals 2

    .line 247
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->fadeIn()V

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 250
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->selectTabIndex(IZ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 75
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mEntryRootView:Landroid/view/ViewGroup;

    const v0, 0x7f0c01c0

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mEntryView:Landroid/widget/FrameLayout;

    .line 77
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mEntryView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 80
    iget p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p1, v1, p2, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 81
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mEntryView:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mEntryView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 85
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mEntryView:Landroid/widget/FrameLayout;

    const p2, 0x7f0904aa

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    .line 86
    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    .line 87
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mItemSelectedListener:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$OnTabSelectedListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->setOnTabSelectedListener(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$OnTabSelectedListener;)V

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mEntryView:Landroid/widget/FrameLayout;

    const p2, 0x7f0904a9

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mRootView:Landroid/widget/FrameLayout;

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mEntryView:Landroid/widget/FrameLayout;

    const p2, 0x7f0904ac

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mTimeUnitTextView:Landroid/widget/TextView;

    .line 90
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->createLevelTab()V

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mEntryView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mEntryView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_time_lapse_duration"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 184
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 121
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->hideScrollBar()V

    :cond_1
    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_2

    const/16 v0, 0x50

    if-eq p1, v0, :cond_1

    const/16 v0, 0x51

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->fadeOut()V

    goto :goto_0

    .line 297
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->fadeIn()V

    goto :goto_0

    .line 303
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->selectTabIndex(IZ)Z

    :goto_0
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 4

    .line 190
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 192
    sget-object p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_time_lapse"

    if-eqz p1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "wide_camera"

    invoke-virtual {p1, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 197
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_wide_camera_item_seleccted"

    invoke-virtual {p1, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 198
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 200
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 203
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    .line 205
    sget-object p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting\'s support is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 209
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->createSupportedEntries(Ljava/util/List;)V

    .line 210
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mSupportedEntryValues:[Ljava/lang/String;

    .line 211
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mSupportedEntries:[Ljava/lang/String;

    .line 213
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mSupportedEntryValues:[Ljava/lang/String;

    array-length p1, p1

    if-nez p1, :cond_3

    .line 214
    sget-object p1, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "support value is null! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 219
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_4

    .line 221
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mSupportedEntryValues:[Ljava/lang/String;

    aget-object p1, p1, v2

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 222
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v1, :cond_4

    .line 223
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 226
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f030134

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 228
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 229
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string p1, "15"

    .line 232
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mSupportedEntryValues:[Ljava/lang/String;

    array-length v3, v1

    if-eqz v3, :cond_6

    .line 233
    aget-object v1, v1, v2

    goto :goto_1

    :cond_6
    const-string v1, "0"

    .line 235
    :goto_1
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    if-eqz p0, :cond_7

    .line 237
    invoke-virtual {p0, v2, v2}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->selectTabIndex(IZ)Z

    :cond_7
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 132
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1

    .line 136
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "wide_camera"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_wide_camera_item_seleccted"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseduration/TimeLapseDurationUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_time_lapse"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 140
    :cond_1
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
