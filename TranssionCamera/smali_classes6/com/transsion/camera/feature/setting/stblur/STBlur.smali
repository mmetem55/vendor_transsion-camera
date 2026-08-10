.class public Lcom/transsion/camera/feature/setting/stblur/STBlur;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "STBlur.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBWConvertValue:Ljava/lang/String;

.field private mIsBWLensSupport:Z

.field private mIsFakeDualLensSupport:Z

.field private mIsSTBlurModeSupport:Z

.field private mLightStrength:F

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private mReaRatio:F

.field private mSTBlurParameterConfigure:Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;

.field private mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mStrengths:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/stblur/STBlur;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const-string v0, "on"

    .line 31
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mBWConvertValue:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mStrengths:[F

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mLightStrength:F

    .line 35
    iput v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mReaRatio:F

    .line 149
    new-instance v0, Lcom/transsion/camera/feature/setting/stblur/STBlur$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/stblur/STBlur$1;-><init>(Lcom/transsion/camera/feature/setting/stblur/STBlur;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/stblur/STBlur;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
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

.method protected getBWConvertValue()Ljava/lang/String;
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mIsBWLensSupport:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mBWConvertValue:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, "off"

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_st_blur"

    return-object p0
.end method

.method protected getLightStrength()F
    .locals 0

    .line 137
    iget p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mLightStrength:F

    return p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mSTBlurParameterConfigure:Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/stblur/STBlur;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mSTBlurParameterConfigure:Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mSTBlurParameterConfigure:Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object v0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method protected getReaRatio()F
    .locals 0

    .line 141
    iget p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mReaRatio:F

    return p0
.end method

.method public getSTBlurModeSupport()Z
    .locals 0

    .line 112
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mIsSTBlurModeSupport:Z

    return p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 73
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method protected getStrengths()[F
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mStrengths:[F

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

    .line 92
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 2

    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "set_stblur_parameter"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "stblur_strengths"

    .line 42
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getStringArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 43
    array-length p3, p2

    new-array p3, p3, [F

    iput-object p3, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mStrengths:[F

    const/4 p3, 0x0

    .line 44
    :goto_0
    array-length v0, p2

    if-ge p3, v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mStrengths:[F

    aget-object v1, p2, p3

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aput v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "stblur_light_strength"

    .line 47
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mLightStrength:F

    const-string p2, "stblur_rea_ratio"

    .line 48
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mReaRatio:F

    .line 49
    sget-object p1, Lcom/transsion/camera/feature/setting/stblur/STBlur;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "STBlur mStrengths:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mStrengths:[F

    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", mLightStrength = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mLightStrength:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", mReaRatio:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mReaRatio:F

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
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

    .line 55
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 58
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method protected isFakeDualLensSupport()Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mIsFakeDualLensSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 105
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mIsSTBlurModeSupport:Z

    .line 107
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mIsFakeDualLensSupport:Z

    .line 108
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mIsBWLensSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/stblur/STBlur;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mIsSTBlurModeSupport:Z

    const-string p1, "key_is_stblur_fake"

    .line 99
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mIsFakeDualLensSupport:Z

    const-string p1, "key_bw_convert"

    .line 100
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mIsBWLensSupport:Z

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 3

    .line 83
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    sget-object v0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method

.method protected setBWConvertValue(I)V
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mIsBWLensSupport:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "off"

    goto :goto_0

    :cond_0
    const-string p1, "on"

    .line 121
    :goto_0
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/stblur/STBlur;->mBWConvertValue:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method
