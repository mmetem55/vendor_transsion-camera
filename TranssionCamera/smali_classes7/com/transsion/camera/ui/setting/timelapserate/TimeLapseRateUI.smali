.class public Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "TimeLapseRateUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$MyStatusChangeListener;,
        Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$UIHandler;
    }
.end annotation


# static fields
.field protected static final ANIMATION_DURATION_200:I = 0xc8

.field protected static final MSG_SHOW_GUIDE:I = 0x64

.field protected static final SETTING_KEY:Ljava/lang/String; = "key_time_lapse"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field protected static final TIME_LAPSE_DURATION_DEFUALT:Ljava/lang/String; = "0"

.field protected static final TIME_LAPSE_RATE_AUTO:Ljava/lang/String; = "0"

.field protected static final TIME_LAPSE_RATE_DEFUALT:Ljava/lang/String; = "15"

.field protected static final ZERO_OFFSET:I


# instance fields
.field protected mAutoIndicator:Landroid/widget/ImageView;

.field private mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field protected mCurrentEntryValue:Ljava/lang/String;

.field protected mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Landroid/widget/FrameLayout;

.field protected mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field protected mIndicator:Landroid/widget/ImageView;

.field protected mIsAutoSelected:Z

.field protected final mItemSelectedListener:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$OnTabSelectedListener;

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mRecording:Z

.field protected mResources:Landroid/content/res/Resources;

.field protected mRootLayout:Landroid/widget/FrameLayout;

.field protected mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field protected mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mStatusValid:Z

.field protected mSupportedEntries:[Ljava/lang/String;

.field protected mSupportedEntryValues:[Ljava/lang/String;

.field protected mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

.field protected final mUIHandler:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$UIHandler;

.field protected mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;


# direct methods
.method public static synthetic $r8$lambda$1Xko1BE1CyM1caUxORqMYvE76UE(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->lambda$doCreateEntryView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mw3KbrlbKCAL6mBcV7zhg-s2eT8(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->lambda$doCreateEntryView$1(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TimeLapseRateUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 6

    .line 100
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIsAutoSelected:Z

    .line 57
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mRecording:Z

    const/4 v1, 0x1

    .line 58
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mStatusValid:Z

    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 63
    new-instance v2, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$MyStatusChangeListener;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$MyStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$1;)V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 64
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3e800000    # 0.25f

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 67
    new-instance v2, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v2, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 489
    new-instance v0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$3;-><init>(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mItemSelectedListener:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$OnTabSelectedListener;

    .line 101
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mResources:Landroid/content/res/Resources;

    .line 102
    new-instance v0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$UIHandler;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$UIHandler;

    .line 103
    new-instance v0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateSettingUISpec;

    invoke-direct {v0, p1}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 39
    sget-object v0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->showGuideView()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->onSwitchAutoLevel()V

    return-void
.end method

.method private createLevelTab()V
    .locals 5

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->removeAllTabs()V

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    const v1, 0x7f0c01c4

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->setTabItemLayout(I)V

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f030135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 191
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    sget-object p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "createLevelTab entries is empty"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 195
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 196
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->newTab()Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    move-result-object v3

    .line 197
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSupportedEntryValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    .line 198
    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    move-result-object v3

    .line 199
    invoke-virtual {v3, v1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->setShowPointIcon(Z)Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    move-result-object v3

    .line 200
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 201
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    invoke-virtual {v4, v3}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->addTab(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 206
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->selectTabIndex(IZ)Z

    .line 208
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$doCreateEntryView$0(Landroid/view/View;)V
    .locals 1

    .line 171
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    if-nez p1, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->showScrollBar()V

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->hideScrollBar()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$doCreateEntryView$1(Landroid/view/View;)V
    .locals 0

    .line 180
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->onSwitchAutoLevel()V

    return-void
.end method

.method private onSwitchAutoLevel()V
    .locals 2

    .line 216
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIsAutoSelected:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIsAutoSelected:Z

    .line 217
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->showGuideView()V

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIsAutoSelected:Z

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;->setAutoSelected(Z)V

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mAutoIndicator:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIsAutoSelected:Z

    if-eqz v1, :cond_0

    const v1, 0x7f080902

    goto :goto_0

    :cond_0
    const v1, 0x7f080901

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIsAutoSelected:Z

    if-eqz v1, :cond_1

    const-string p0, "0"

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCurrentEntryValue:Ljava/lang/String;

    :goto_1
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method private showGuideView()V
    .locals 7

    .line 107
    sget-object v0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showGuideView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSupportedEntries:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v3, "key_time_lapse_duration"

    invoke-interface {v1, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    .line 117
    invoke-virtual {v4}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "time_lapse_duration_setting_entry_values"

    const-string v6, "array"

    .line 116
    invoke-virtual {v3, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 118
    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v2, :cond_2

    return-void

    .line 122
    :cond_2
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    .line 124
    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "time_lapse_duration_setting_entries"

    .line 123
    invoke-virtual {v2, v4, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 125
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mResources:Landroid/content/res/Resources;

    .line 127
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "s"

    const-string v3, ""

    .line 128
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "min"

    .line 129
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 131
    :cond_3
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f10032b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_5

    .line 135
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIsAutoSelected:Z

    if-nez v1, :cond_4

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_0

    .line 138
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private showTimeLapseMsg()V
    .locals 1

    .line 509
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$UIHandler;

    if-eqz p0, :cond_0

    const/16 v0, 0x64

    .line 510
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 155
    sget-object v0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doCreateEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mEntryRootView:Landroid/view/ViewGroup;

    const v0, 0x7f0c01c6

    const/4 v1, 0x0

    .line 157
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mEntryView:Landroid/widget/FrameLayout;

    .line 158
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mEntryView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 160
    iget p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p1, v1, p2, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 161
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mEntryView:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mEntryView:Landroid/widget/FrameLayout;

    const p2, 0x7f0904ab

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIndicator:Landroid/widget/ImageView;

    .line 164
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mEntryView:Landroid/widget/FrameLayout;

    const p2, 0x7f0904a8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mAutoIndicator:Landroid/widget/ImageView;

    .line 165
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mEntryView:Landroid/widget/FrameLayout;

    const p2, 0x7f0904af

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    .line 166
    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    .line 168
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mEntryView:Landroid/widget/FrameLayout;

    const p2, 0x7f0904ae

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mRootLayout:Landroid/widget/FrameLayout;

    .line 169
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 170
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIndicator:Landroid/widget/ImageView;

    new-instance p2, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mAutoIndicator:Landroid/widget/ImageView;

    new-instance p2, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mItemSelectedListener:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$OnTabSelectedListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->setOnTabSelectedListener(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$OnTabSelectedListener;)V

    .line 182
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->createLevelTab()V

    .line 183
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$UIHandler;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 184
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mEntryView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method protected fadeIn()V
    .locals 6

    .line 415
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x50

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 416
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    const/4 v1, 0x1

    const v2, 0x7f07074d

    if-eqz v0, :cond_0

    .line 417
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mResources:Landroid/content/res/Resources;

    .line 418
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    neg-int v3, v3

    .line 417
    invoke-interface {v0, v3, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->translateWideCamera(IZ)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    const/16 v3, 0x10

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mResources:Landroid/content/res/Resources;

    .line 421
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f07074b

    .line 422
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    .line 420
    invoke-interface {v0, v3, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setHintUITrans(II)V

    .line 423
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 424
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIndicator:Landroid/widget/ImageView;

    const v5, 0x7f0806c2

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 427
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$1;-><init>(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;)V

    .line 428
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 447
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    .line 449
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->checkTabIndex()V

    return-void
.end method

.method protected fadeOut()V
    .locals 6

    .line 453
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x51

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 454
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 455
    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->translateWideCamera(IZ)V

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    const/16 v2, 0x10

    invoke-interface {v0, v2, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setHintUITrans(II)V

    .line 458
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f07074d

    .line 459
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0xc8

    .line 460
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 461
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIndicator:Landroid/widget/ImageView;

    const v2, 0x7f0806bf

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 462
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mResources:Landroid/content/res/Resources;

    .line 463
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$2;-><init>(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;)V

    .line 465
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 485
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 486
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    return-void
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mEntryView:Landroid/widget/FrameLayout;

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

    const-string p0, "key_time_lapse"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 329
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 332
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 230
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->hideScrollBar()V

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_2

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_2
    return-void
.end method

.method protected hideScrollBar()V
    .locals 0

    .line 411
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->fadeOut()V

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 4

    .line 516
    sget-object v0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[notifyCameraOperateAction] action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    const/4 v2, 0x1

    if-eq p1, v2, :cond_6

    const/4 v3, 0x3

    if-eq p1, v3, :cond_5

    const/16 v3, 0x9

    if-eq p1, v3, :cond_7

    const/16 v3, 0x13

    if-eq p1, v3, :cond_3

    const/16 v3, 0x1f

    if-eq p1, v3, :cond_2

    const/16 v3, 0x4c

    if-eq p1, v3, :cond_1

    const/4 v3, 0x6

    if-eq p1, v3, :cond_8

    const/4 v3, 0x7

    if-eq p1, v3, :cond_2

    const/16 v3, 0xf

    if-eq p1, v3, :cond_0

    const/16 v3, 0x10

    if-eq p1, v3, :cond_2

    const/16 v3, 0x36

    if-eq p1, v3, :cond_8

    const/16 v3, 0x37

    if-eq p1, v3, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    .line 542
    :pswitch_0
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mRecording:Z

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mStatusValid:Z

    if-eqz p1, :cond_9

    .line 543
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 565
    :pswitch_1
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->hideScrollBar()V

    .line 566
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIndicator:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 527
    :cond_0
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mRecording:Z

    .line 528
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->hideScrollBar()V

    .line 529
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 530
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 556
    :cond_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->hideScrollBar()V

    goto :goto_1

    .line 536
    :cond_2
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mStatusValid:Z

    .line 537
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mRecording:Z

    .line 538
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 539
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 569
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f030134

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 570
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "15"

    .line 571
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCurrentEntryValue:Ljava/lang/String;

    goto :goto_0

    .line 573
    :cond_4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 575
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    invoke-virtual {p1, v1, v1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->selectTabIndex(IZ)Z

    .line 576
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIsAutoSelected:Z

    if-eqz p1, :cond_9

    .line 577
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->onSwitchAutoLevel()V

    goto :goto_1

    .line 547
    :cond_5
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mRecording:Z

    .line 548
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 549
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->showScrollBar()V

    .line 550
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->showTimeLapseMsg()V

    goto :goto_1

    .line 559
    :cond_6
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mStatusValid:Z

    .line 561
    :cond_7
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->showTimeLapseMsg()V

    .line 562
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 522
    :cond_8
    :pswitch_3
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mStatusValid:Z

    .line 523
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->hideScrollBar()V

    .line 524
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x48
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->hideScrollBar()V

    const/4 p0, 0x1

    return p0

    .line 319
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 498
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 499
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_0

    .line 500
    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 502
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIsAutoSelected:Z

    if-eqz p1, :cond_1

    .line 503
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->onSwitchAutoLevel()V

    .line 505
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mUIHandler:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$UIHandler;

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 5

    .line 338
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 340
    sget-object p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 343
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_time_lapse_duration"

    if-eqz p1, :cond_1

    .line 344
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 346
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 347
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 351
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_3

    .line 353
    sget-object p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting\'s support is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 357
    :cond_3
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v2, p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->createSupportedEntries(Ljava/util/List;)V

    .line 358
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSupportedEntryValues:[Ljava/lang/String;

    .line 359
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSupportedEntries:[Ljava/lang/String;

    .line 361
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSupportedEntryValues:[Ljava/lang/String;

    array-length p1, p1

    if-nez p1, :cond_4

    .line 362
    sget-object p1, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "support value is null! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 367
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_5

    .line 369
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSupportedEntryValues:[Ljava/lang/String;

    aget-object p1, p1, v3

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 370
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v2, :cond_5

    .line 371
    invoke-interface {v2, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 376
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mSupportedEntryValues:[Ljava/lang/String;

    array-length v2, p1

    if-eqz v2, :cond_6

    .line 377
    aget-object p1, p1, v3

    goto :goto_0

    :cond_6
    const-string p1, "15"

    .line 379
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0300f3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 381
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 382
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 385
    :cond_7
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v4, "key_time_lapse"

    invoke-interface {v2, v4}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 387
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    if-eqz p1, :cond_9

    .line 388
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mIsAutoSelected:Z

    if-eqz p1, :cond_8

    .line 389
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->onSwitchAutoLevel()V

    .line 391
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    invoke-virtual {p0, v3, v3}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->selectTabIndex(IZ)Z

    :cond_9
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

    .line 397
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setWideCameraControl(Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    return-void
.end method

.method protected showScrollBar()V
    .locals 1

    .line 406
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->fadeIn()V

    .line 407
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mTimeLapseTab:Lcom/transsion/camera/app/ui/widget/AutoFitCenterTabLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setEnabled(Z)V

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 245
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1

    .line 249
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_time_lapse_duration"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_2

    .line 252
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 254
    :cond_2
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
