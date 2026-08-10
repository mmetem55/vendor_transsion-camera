.class public Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;
.super Ljava/lang/Object;
.source "MacroParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final GROUP_SIZE:I

.field private final MACRO_THRESHOLD:F

.field private mCameraMacroCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mCount:I

.field private mIsMacroActive:Z

.field private mIsMacroTorchSupport:Z

.field private mIsPreviewed:Z

.field private mIsWideCamera:Z

.field private mMacro:Lcom/transsion/camera/feature/setting/macro/Macro;

.field private mMacroData:[F

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field mSupportedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$YwG16RejJ4sMthiGDOPHMHdtico(Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->lambda$new$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/macro/Macro;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mSupportedValues:Ljava/util/List;

    const/16 v0, 0xa

    .line 32
    iput v0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->GROUP_SIZE:I

    new-array v0, v0, [F

    .line 33
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mMacroData:[F

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mCount:I

    .line 35
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mIsMacroActive:Z

    const/high16 v1, 0x40c00000    # 6.0f

    .line 36
    iput v1, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->MACRO_THRESHOLD:F

    .line 37
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mIsWideCamera:Z

    .line 38
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mIsPreviewed:Z

    .line 40
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mIsMacroTorchSupport:Z

    .line 81
    new-instance v0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mCameraMacroCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    .line 88
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mMacro:Lcom/transsion/camera/feature/setting/macro/Macro;

    .line 89
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private getAverage([F)F
    .locals 3

    .line 75
    array-length p0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget v2, p1, v1

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    array-length p0, p1

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method private getVariance([F)F
    .locals 10

    .line 65
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->getAverage([F)F

    move-result p0

    .line 67
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p1, v2

    float-to-double v4, v1

    sub-float/2addr v3, p0

    float-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 68
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-float v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_0
    array-length p0, p1

    int-to-float p0, p0

    div-float/2addr v1, p0

    return v1
.end method

.method private synthetic lambda$new$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    .line 82
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 p2, 0x41200000    # 10.0f

    mul-float/2addr p1, p2

    .line 83
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    .line 84
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->onMacroDataCallback(F)V

    return-void
.end method

.method private setMacroCallback(Lcom/transsion/camera/adapter/CameraProxy;Z)V
    .locals 2

    .line 119
    sget-object v0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setMacroCallback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mCameraMacroCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mCameraMacroCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method protected getPreviewed()Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mIsPreviewed:Z

    return p0
.end method

.method public isMacroTorchSupport()Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mIsMacroTorchSupport:Z

    return p0
.end method

.method public onMacroDataCallback(F)V
    .locals 3

    .line 43
    iget v0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mCount:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    .line 44
    iput v1, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mCount:I

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mMacroData:[F

    iget v2, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mCount:I

    aput p1, v0, v2

    const/4 p1, 0x1

    add-int/2addr v2, p1

    .line 47
    iput v2, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mCount:I

    .line 48
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->getVariance([F)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mMacroData:[F

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->getAverage([F)F

    move-result v0

    const/high16 v2, 0x40c00000    # 6.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    move v1, p1

    .line 55
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mIsMacroActive:Z

    if-eq v0, v1, :cond_3

    .line 56
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mIsMacroActive:Z

    .line 57
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->refreshToUI(ZZ)V

    goto :goto_0

    .line 60
    :cond_2
    sget-object p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "it is dirty data, we need drop it."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected refreshToUI(ZZ)V
    .locals 1

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mMacro:Lcom/transsion/camera/feature/setting/macro/Macro;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 132
    invoke-interface {p0, v0, p2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 134
    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mMacro:Lcom/transsion/camera/feature/setting/macro/Macro;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/macro/Macro;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 2

    .line 99
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isWideCameraSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mIsWideCamera:Z

    .line 100
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isMacroTorchSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mIsMacroTorchSupport:Z

    .line 102
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mSupportedValues:Ljava/util/List;

    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mSupportedValues:Ljava/util/List;

    const-string v1, "on"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mMacro:Lcom/transsion/camera/feature/setting/macro/Macro;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/feature/setting/macro/Macro;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method protected setPreviewed(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->mIsPreviewed:Z

    return-void
.end method
