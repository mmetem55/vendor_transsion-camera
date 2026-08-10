.class public Lcom/transsion/camera/feature/setting/cammode/CamMode;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "CamMode.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private m360VideoHDRSupport:Z

.field private mAntiVideo:Ljava/lang/String;

.field private mAntiVideoSupport:Z

.field private mCurrentModeKey:Ljava/lang/String;

.field private mCurrentModeValue:Ljava/lang/String;

.field private mIsSupperDefinitionMode:Z

.field private mParameterConfigure:Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

.field private mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mVideo360HDR:Ljava/lang/String;

.field private mVideoFilter:Ljava/lang/String;

.field private mVideoFilterSupport:Z

.field private mVideoMakeUp:Ljava/lang/String;

.field private mVideoMakeupSupport:Z

.field private mVideoSuperNight:Ljava/lang/String;

.field private mVideoSuperNightSupport:Z


# direct methods
.method public static synthetic $r8$lambda$izMwAQiLaBeFagzVG4GEAueFXw0(Lcom/transsion/camera/feature/setting/cammode/CamMode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/cammode/CamMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    const-string v0, ""

    .line 52
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mCurrentModeValue:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mCurrentModeKey:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/transsion/camera/feature/setting/cammode/CamMode$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/cammode/CamMode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method private getCurrentVideoScene()Ljava/lang/String;
    .locals 3

    .line 115
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoSuperNightSupport:Z

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoSuperNight:Ljava/lang/String;

    const-string v1, "key_video_super_night_scene_4k"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "val_video_super_night_4k"

    return-object p0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoSuperNight:Ljava/lang/String;

    const-string v1, "key_video_super_night_scene"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "val_video_super_night"

    return-object p0

    .line 123
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->m360VideoHDRSupport:Z

    const-string v1, "on"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideo360HDR:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideo360HDR:Ljava/lang/String;

    const-string v2, "key_video_hdr_scene"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string p0, "val_360_video_hdr"

    return-object p0

    .line 127
    :cond_3
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAntiVideoSupport:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAntiVideo:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "key_anti_video"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string p0, "val_anti_video"

    return-object p0

    .line 131
    :cond_5
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoMakeupSupport:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoMakeUp:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "val_video_makeup"

    return-object p0

    .line 135
    :cond_6
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFilterSupport:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFilter:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "val_video_filter"

    return-object p0

    .line 138
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mCurrentModeValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, ""

    goto :goto_0

    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mCurrentModeValue:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 67
    sget-object v0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "key_video_filter_style"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "key_anti_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "key_360_video_hdr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "key_mu_monomer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "key_video_makeup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "key_transsion_filter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "key_video_super_night"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "key_super_definition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    const-string p1, "off"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string v0, "0"

    .line 102
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_1

    :cond_8
    const-string p1, "on"

    :goto_1
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFilter:Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 87
    :pswitch_1
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAntiVideo:Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    goto :goto_2

    .line 83
    :pswitch_2
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideo360HDR:Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    const-string p1, "f0.0"

    .line 91
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "val_pmaster_beauty"

    .line 92
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string p1, "val_pmaster_portrait"

    .line 94
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    goto :goto_2

    .line 106
    :pswitch_4
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoMakeUp:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    goto :goto_2

    .line 98
    :pswitch_5
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFilter:Ljava/lang/String;

    .line 99
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    goto :goto_2

    .line 79
    :pswitch_6
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoSuperNight:Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    goto :goto_2

    .line 70
    :pswitch_7
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mIsSupperDefinitionMode:Z

    if-nez v0, :cond_b

    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "val_asd"

    .line 72
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const-string p1, "val_super_definition"

    .line 74
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    :cond_b
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x711a6189 -> :sswitch_7
        -0x6983b150 -> :sswitch_6
        -0x1c725986 -> :sswitch_5
        -0xb0858d3 -> :sswitch_4
        0x2093e60 -> :sswitch_3
        0x4bd2bc0 -> :sswitch_2
        0x17b8ff3e -> :sswitch_1
        0x46cdfd4e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_cam_mode"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mParameterConfigure:Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lcom/transsion/camera/feature/setting/cammode/CamModeParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/cammode/CamModeParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/cammode/CamMode;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mParameterConfigure:Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mParameterConfigure:Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object v0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 207
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

    .line 237
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 172
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 173
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p3, "key_super_definition"

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 174
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p3, "key_video_super_night"

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 175
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p3, "key_360_video_hdr"

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 176
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p3, "key_anti_video"

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 177
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p3, "key_mu_monomer"

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 178
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p3, "key_transsion_filter"

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 179
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p3, "key_video_makeup"

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 180
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p2, "key_video_filter_style"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

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

    .line 198
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 199
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 200
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 201
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 156
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mCurrentModeKey:Ljava/lang/String;

    const-string p2, "com.transsion.camera.feature.mode.highdefinition.HighDefinitionModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mIsSupperDefinitionMode:Z

    return-void
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 162
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 163
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoSuperNightSupport:Z

    .line 164
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->m360VideoHDRSupport:Z

    .line 165
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAntiVideoSupport:Z

    .line 166
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFilterSupport:Z

    .line 167
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoMakeupSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 143
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 144
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mCurrentModeKey:Ljava/lang/String;

    const-string p1, "key_video_super_night"

    .line 145
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoSuperNightSupport:Z

    const-string p1, "key_360_video_hdr"

    .line 146
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->m360VideoHDRSupport:Z

    const-string p1, "key_anti_video"

    .line 147
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAntiVideoSupport:Z

    const-string p1, "key_transsion_filter"

    .line 148
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoFilterSupport:Z

    const-string p1, "key_video_makeup"

    .line 149
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoMakeupSupport:Z

    .line 150
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mCurrentModeKey:Ljava/lang/String;

    const-string p2, "com.transsion.camera.feature.mode.highdefinition.HighDefinitionModeEntry"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mIsSupperDefinitionMode:Z

    .line 151
    sget-object p1, Lcom/transsion/camera/feature/setting/cammode/CamMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onModeOpened = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 3

    .line 217
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 219
    sget-object v0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mSettingChangeRequester:Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
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

    .line 226
    sget-object v0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overrideValues headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 227
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mCurrentModeValue:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 228
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mVideoSuperNightSupport:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->m360VideoHDRSupport:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mAntiVideoSupport:Z

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->getCurrentVideoScene()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/cammode/CamMode;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 232
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 185
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_super_definition"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_video_super_night"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_360_video_hdr"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_anti_video"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_mu_monomer"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_transsion_filter"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_video_makeup"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/cammode/CamMode;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_video_filter_style"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method
