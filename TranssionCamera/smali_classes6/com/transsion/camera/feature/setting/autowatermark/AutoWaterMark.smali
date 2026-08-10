.class public Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "AutoWaterMark.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;
    }
.end annotation


# static fields
.field static DEFAULT_VALUE:Ljava/lang/String; = null

.field private static final SETTING_KEY:Ljava/lang/String; = "key_auto_watermark"

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field static final VALUE_OFF:Ljava/lang/String; = "off"

.field static final VALUE_ON:Ljava/lang/String; = "on"


# instance fields
.field private mAutoWaterMarkParameterConfigure:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;

.field private mBitmapWaterMark:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

.field private mContext:Landroid/content/Context;

.field private mIsModeSupport:Z

.field private final mLock:Ljava/lang/Object;

.field private mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUseBitmapWaterMark:Z


# direct methods
.method public static synthetic $r8$lambda$SXrXkWr3G0nlDb_i_0tEk16O00w(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "off"

    .line 59
    sput-object v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->DEFAULT_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mIsModeSupport:Z

    .line 162
    new-instance v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Ljava/lang/Object;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 163
    sget-object v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged] + key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p2, "key_mirror"

    .line 164
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mUseBitmapWaterMark:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mBitmapWaterMark:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mIsModeSupport:Z

    if-eqz p0, :cond_0

    .line 165
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->access$1300(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;)V

    :cond_0
    return-void
.end method

.method private postRestrictionIfNeeded(Ljava/lang/String;)V
    .locals 2

    .line 180
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->algorithmMigrate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    invoke-static {}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 188
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forceApplyValue(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic forceUpdateValue(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method public getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mBitmapWaterMark:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    if-eqz p0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_auto_watermark"

    return-object p0
.end method

.method public getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mAutoWaterMarkParameterConfigure:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mAutoWaterMarkParameterConfigure:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;

    .line 146
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mAutoWaterMarkParameterConfigure:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mBitmapWaterMark:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    if-eqz p0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 133
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getWaterMarkParam()Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mBitmapWaterMark:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    if-eqz p0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->getWaterMarkParam()Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 74
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 76
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "default_watermark_on"

    .line 77
    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isFansSupport()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "on"

    .line 79
    sput-object p1, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->DEFAULT_VALUE:Ljava/lang/String;

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p2, "key_mirror"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 107
    sget-object v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initializeValue], platformSupportedValues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " default value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 113
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[initializeValue], setValue: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initializeValue], setDefaultValue: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 198
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 199
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mModeType:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 151
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    sget-object v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onAutoWaterMarkValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 157
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->postRestrictionIfNeeded(Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 171
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const-string p1, "off"

    .line 172
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 173
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mIsModeSupport:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 175
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mIsModeSupport:Z

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 0

    .line 99
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->pause()V

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mBitmapWaterMark:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->pause()V

    :cond_0
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 1

    .line 127
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->postRestrictionAfterInitialized()V

    .line 128
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->postRestrictionIfNeeded(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 90
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_mirror"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mBitmapWaterMark:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    if-eqz p0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;->unInit()V

    :cond_0
    return-void
.end method

.method useBitmapWaterMark(Z)V
    .locals 0

    .line 230
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mUseBitmapWaterMark:Z

    if-eqz p1, :cond_0

    .line 232
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mBitmapWaterMark:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    if-nez p1, :cond_1

    .line 233
    new-instance p1, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;-><init>(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mBitmapWaterMark:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 236
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->mBitmapWaterMark:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark$BitmapWaterMark;

    :cond_1
    :goto_0
    return-void
.end method
