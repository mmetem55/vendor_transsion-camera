.class public Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;
.super Ljava/lang/Object;
.source "TopBarItemUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$MySettingChangeListener;,
        Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$PopupOptionStateCallbackImpl;,
        Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_ITEM_TYPE:Ljava/lang/String; = "TOP_BAR"

.field private static final MSG_ON_SETTING_VALUE_CHANGED:I = 0x64

.field private static final SELLING_POINT_SP_NAME:Ljava/lang/String; = "SellingPoint"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static mLastClickTime:[J


# instance fields
.field protected mBatteryStatus:I

.field protected mBatteryTemperatureStatus:I

.field private mCommonRes:Landroid/graphics/drawable/Drawable;

.field private mCurrentEntryValue:Ljava/lang/String;

.field protected mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field protected mEntryView:Landroid/widget/ImageView;

.field private mHidePopup:Z

.field protected mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

.field private mIsSellingPoint:Z

.field private mIsShouldGone:Z

.field private mItemClickDisable:Z

.field private mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

.field protected mNeedAnimation:Z

.field private mOverrideClickListener:Landroid/view/View$OnClickListener;

.field private mPointRes:Landroid/graphics/drawable/Drawable;

.field protected mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

.field private mPositionInTopBar:I

.field private mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

.field protected mPreEntryValue:Ljava/lang/String;

.field private mScreenSupply:Z

.field private mSellingPointSp:Landroid/content/SharedPreferences;

.field private mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field protected mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

.field private mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mUIHandler:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;


# direct methods
.method public static synthetic $r8$lambda$PCUnLbUdHOgquOdRIL0o_v4q0dw(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->lambda$onScreenSupply$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TopBarItemUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 88
    sput-object v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mLastClickTime:[J

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .locals 3

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mBatteryStatus:I

    .line 76
    iput v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mBatteryTemperatureStatus:I

    .line 79
    new-instance v1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$MySettingChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$MySettingChangeListener;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 85
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHidePopup:Z

    .line 89
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsShouldGone:Z

    .line 107
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    const/4 p1, 0x1

    .line 108
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mNeedAnimation:Z

    .line 109
    new-instance p1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;

    invoke-direct {p1, p0, v2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateTintForEntryView(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->showPopupIfNeed()V

    return-void
.end method

.method static synthetic access$1600(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setValueByIndex(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;

    return-object p0
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 50
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Z
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->interceptClickByLowPower()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHidePopup:Z

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemClickDisable:Z

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Landroid/content/SharedPreferences;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSellingPointSp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsSellingPoint:Z

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method static synthetic access$802(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object p1
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Z
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->shouldUpdateTint()Z

    move-result p0

    return p0
.end method

.method private addSellPointIfNeeded(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 531
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsSellingPoint:Z

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSellingPointSp:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->isShowPoint(ZLandroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPointRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->createIconWithPoint(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private static convertZoom(Ljava/lang/String;)I
    .locals 0

    .line 464
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private createIconWithPoint(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable;
    .locals 2

    .line 729
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method private createSupportEntries()Z
    .locals 6

    .line 434
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getSupport()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 436
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mDeviceSetting\'s support is null!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 440
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    .line 441
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentStreamIds()[I

    move-result-object v3

    .line 443
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_1

    .line 444
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v5, "key_camera_zoom"

    invoke-interface {v4, v5}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 445
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v5

    invoke-static {v4}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->convertZoom(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v2, v4}, Lcom/transsion/camera/app/common/CameraRepository;->getEquivalentZoom(Ljava/lang/String;I)I

    move-result v4

    .line 446
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/transsion/camera/app/common/CameraRepository;->getBackCameraWithZoom(I)Ljava/lang/String;

    move-result-object v4

    .line 447
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v2, v4

    .line 451
    :cond_1
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v4, v2, v3, v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->createSupportedEntries(Ljava/lang/String;[ILjava/util/List;)V

    .line 452
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 454
    array-length v0, v0

    if-nez v0, :cond_2

    .line 455
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "support value is null! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private interceptClickByLowPower()Z
    .locals 3

    .line 420
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mBatteryStatus:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mBatteryTemperatureStatus:I

    if-ne v0, v1, :cond_2

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz v0, :cond_1

    .line 423
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mBatteryStatus:I

    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mBatteryTemperatureStatus:I

    invoke-interface {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isCameraFacingBack()Z
    .locals 0

    .line 592
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 593
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    .line 592
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isShowPoint(ZLandroid/content/SharedPreferences;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 733
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$onScreenSupply$0()V
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 712
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateEntryView()V

    :cond_0
    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private setValueByIndex(I)V
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 472
    array-length v1, v0

    .line 473
    rem-int/2addr p1, v1

    .line 474
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPreEntryValue:Ljava/lang/String;

    .line 475
    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 477
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateEntryView()V

    .line 482
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_0

    .line 483
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 485
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

    if-eqz p1, :cond_1

    .line 486
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;->onItemSelected()V

    .line 488
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->doOnValueChanged()V

    return-void
.end method

.method private shouldShown()Z
    .locals 1

    .line 623
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p0

    .line 624
    array-length p0, p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldUpdateTint()Z
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->shouldUpdateTint(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private showPopupIfNeed()V
    .locals 4

    .line 495
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    new-instance v1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$PopupOptionStateCallbackImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$PopupOptionStateCallbackImpl;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;)V

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPositionInTopBar:I

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mScreenSupply:Z

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->showPopupIfNeed(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 499
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private updateClickEntryView()V
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 523
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    .line 524
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->addSellPointIfNeeded(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 525
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateTintForEntryView(Landroid/graphics/drawable/Drawable;)V

    .line 526
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateEntryDescription()V
    .locals 3

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 582
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v2, :cond_1

    .line 584
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->isCameraFacingBack()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "back"

    goto :goto_0

    :cond_0
    const-string v2, "front"

    .line 585
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateEntryDrawable(I)V
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 601
    :cond_0
    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    .line 602
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    .line 603
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->addSellPointIfNeeded(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 604
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->shouldUpdateTint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateTintForEntryView(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 607
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 609
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateEntryView()V
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 512
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateClickEntryView()V

    goto :goto_0

    .line 514
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateListEntryView()V

    :goto_0
    return-void
.end method

.method private updateHighLightShow()V
    .locals 2

    .line 617
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 618
    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->shouldHighLightShow(Ljava/lang/String;)Z

    move-result p0

    .line 617
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method private updateListEntryView()V
    .locals 4

    const/4 v0, 0x0

    .line 555
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsShouldGone:Z

    .line 556
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->shouldShown()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 557
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsShouldGone:Z

    return-void

    .line 561
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 563
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid index, key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", supportedValues: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 565
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 563
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 566
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsShouldGone:Z

    return-void

    .line 570
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 571
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 573
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateEntryDescription()V

    .line 574
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateEntryDrawable(I)V

    .line 575
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateHighLightShow()V

    return-void
.end method

.method private updateTintForEntryView(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 538
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mScreenSupply:Z

    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 541
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHidePopup:Z

    .line 181
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    .line 182
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 183
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "SellingPoint"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSellingPointSp:Landroid/content/SharedPreferences;

    .line 184
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsSellingPoint:Z

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->isShowPoint(ZLandroid/content/SharedPreferences;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPointRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->createIconWithPoint(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    new-instance p2, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    return-object p0
.end method

.method protected createLowPowerResponder(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;)Lcom/transsion/camera/app/common/battery/IBatteryListener;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public doOnStatusChanged(Ljava/lang/String;)V
    .locals 3

    .line 680
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->isValueEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_picture_size"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 683
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 684
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->createSupportEntries()Z

    .line 686
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 689
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->createSupportEntries()Z

    .line 690
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateEntryView()V

    :cond_1
    return-void
.end method

.method protected doOnValueChanged()V
    .locals 0

    return-void
.end method

.method public getEntryView()Landroid/view/View;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIsShouldGone()Z
    .locals 0

    .line 551
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsShouldGone:Z

    return p0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 0

    const-string p0, "TOP_BAR"

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKeys()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeys(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    return-object p0
.end method

.method protected getSettingValue()Ljava/lang/String;
    .locals 0

    .line 718
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getSupport()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 722
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 725
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getTintList()Landroid/content/res/ColorStateList;
    .locals 0

    const/high16 p0, -0x1000000

    .line 546
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    return-object p0
.end method

.method public hintInfo()V
    .locals 0

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 1

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x4c

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 399
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHidePopup:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 403
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHidePopup:Z

    :goto_0
    return-void
.end method

.method public onBatteryStatusChanged(ZII)V
    .locals 1

    .line 168
    iput p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mBatteryStatus:I

    .line 169
    iput p3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mBatteryTemperatureStatus:I

    .line 170
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    if-nez p2, :cond_0

    .line 171
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->createLowPowerResponder(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;)Lcom/transsion/camera/app/common/battery/IBatteryListener;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    .line 173
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    if-eqz p2, :cond_1

    .line 174
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mBatteryStatus:I

    invoke-interface {p2, p1, p0, p3}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    :cond_1
    return-void
.end method

.method public onEntryViewClick(Landroid/view/View;)V
    .locals 3

    .line 241
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemClickDisable:Z

    if-eqz v0, :cond_0

    .line 242
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "ItemClick Disable !!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->interceptClickByLowPower()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSellingPointSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsSellingPoint:Z

    if-eqz v1, :cond_3

    .line 249
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 250
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 252
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->shouldUpdateTint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateTintForEntryView(Landroid/graphics/drawable/Drawable;)V

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_5

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz v0, :cond_4

    .line 259
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    .line 261
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 263
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p1

    .line 264
    array-length p1, p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_6

    .line 265
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->showPopupIfNeed()V

    goto :goto_0

    .line 267
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz p1, :cond_7

    .line 268
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    .line 270
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setToNextIndex()V

    :goto_0
    return-void
.end method

.method public onScreenSupply(Z)V
    .locals 1

    .line 709
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mScreenSupply:Z

    .line 710
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;

    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public optionBarFastDoubleClick()Z
    .locals 2

    .line 229
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getItemType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TOP_BAR"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-wide/16 v0, 0x12c

    .line 233
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mLastClickTime:[J

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J[J)Z

    move-result p0

    return p0
.end method

.method public overrideClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setActionSound(Lcom/transsion/camera/utils/sound/IActionSound;)V
    .locals 0

    return-void
.end method

.method public setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .locals 0

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    .line 328
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 330
    sget-object p1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDeviceSetting is null! :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 336
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->createSupportEntries()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 340
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 342
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 343
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_2

    .line 345
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 349
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_3

    .line 350
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 351
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->registerKeyToMonitor(Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_3
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null! maybe flow is wrong!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 302
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-void
.end method

.method public setIsSellingPoint(Z)V
    .locals 0

    .line 699
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mIsSellingPoint:Z

    return-void
.end method

.method public setItemClickDisable(Z)V
    .locals 3

    .line 277
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setItemClickDisable  disable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 278
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemClickDisable:Z

    return-void
.end method

.method public setItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

    return-void
.end method

.method public setPointRes(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 704
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPointRes:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    return-void
.end method

.method public setPositionInTopBar(I)V
    .locals 0

    .line 318
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPositionInTopBar:I

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .locals 0

    return-void
.end method

.method protected setToNextIndex()V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 506
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setValueByIndex(I)V

    :cond_0
    return-void
.end method

.method public setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
    .locals 0

    return-void
.end method

.method public setupEntryView()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getEntryViewId()I

    move-result v0

    if-lez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getEntryViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateEntryView()V

    return-void
.end method

.method public unInit()V
    .locals 3

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mItemClickDisable:Z

    .line 151
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 156
    invoke-interface {v1, v0, v0, v0}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    .line 157
    iput-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPowerResponder:Lcom/transsion/camera/app/common/battery/IBatteryListener;

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$UIHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    :cond_2
    iput-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    return-void
.end method

.method public updateSupportEntries()V
    .locals 0

    .line 674
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->createSupportEntries()Z

    .line 675
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateEntryView()V

    return-void
.end method
