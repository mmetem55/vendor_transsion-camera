.class public Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraModeParameterConfig;
.super Ljava/lang/Object;
.source "TranssionCameraModeParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VALUE_AR:I = 0x4

.field private static final VALUE_BEAUTY:I = 0x2

.field private static final VALUE_DEFAULT:I = 0x0

.field private static final VALUE_DOC:I = 0x7

.field private static final VALUE_DUAL_VIDEO_MODE:I = 0xf

.field private static final VALUE_FUN_VIDEO:I = 0x1

.field private static final VALUE_MAGIC_SKY_MODE:I = 0xc

.field private static final VALUE_MOVIE:I = 0x3

.field private static final VALUE_PANORAMA:I = 0x5

.field private static final VALUE_PMASTER_BEAUTY:I = 0x10

.field private static final VALUE_PORTRAIT_MODE:I = 0xb

.field private static final VALUE_PRO:I = 0x8

.field private static final VALUE_SUPER_DEFINITION:I = 0xa

.field private static final VALUE_SUPER_MACRO_MODE:I = 0xe

.field private static final VALUE_SUPER_NIGHT_FILER_MODE:I = 0x11

.field private static final VALUE_SUPER_NIGHT_MODE:I = 0xd

.field private static final VALUE_TIME_LAPSE:I = 0x6

.field private static final VALUE_VIDEO:I = 0x9


# instance fields
.field private mMode:Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraModeParameterConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraModeParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraMode;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraModeParameterConfig;->mMode:Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraMode;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 21

    move-object/from16 v0, p0

    .line 58
    iget-object v1, v0, Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraModeParameterConfig;->mMode:Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraMode;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraMode;->getModeKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x11

    const/16 v4, 0x10

    const/16 v5, 0xf

    const/16 v6, 0xe

    const/16 v7, 0xd

    const/16 v8, 0xc

    const/16 v9, 0xb

    const/16 v10, 0x9

    const/16 v11, 0x8

    const/4 v12, 0x7

    const/4 v13, 0x6

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "com.transsion.camera.feature.wideselfie.WideSelfieModeEntry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    move/from16 v20, v3

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    move/from16 v20, v4

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "com.transsion.camera.feature.mode.facebeauty.FaceBeautyModeEntry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    move/from16 v20, v5

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    move/from16 v20, v6

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    move/from16 v20, v7

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    move/from16 v20, v8

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    move/from16 v20, v9

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "com.transsion.camera.feature.mode.macro.MacroModeEntry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v20, 0xa

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    move/from16 v20, v10

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    move/from16 v20, v11

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "com.transsion.camera.feature.mode.magicsky.MagicSkyModeEntry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    move/from16 v20, v12

    goto :goto_0

    :sswitch_b
    const-string v2, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    move/from16 v20, v13

    goto :goto_0

    :sswitch_c
    const-string v2, "com.transsion.camera.feature.mode.professional.ProfessionalModeEntry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_0

    :cond_c
    move/from16 v20, v14

    goto :goto_0

    :sswitch_d
    const-string v2, "com.transsion.camera.feature.funvideo.mode.FunVideoModeEntry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_0

    :cond_d
    move/from16 v20, v15

    goto :goto_0

    :sswitch_e
    const-string v2, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_0

    :cond_e
    move/from16 v20, v16

    goto :goto_0

    :sswitch_f
    const-string v2, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_0

    :cond_f
    move/from16 v20, v17

    goto :goto_0

    :sswitch_10
    const-string v2, "com.transsion.camera.feature.mode.stblurmode.STBlurModeEntry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_0

    :cond_10
    move/from16 v20, v18

    goto :goto_0

    :sswitch_11
    const-string v2, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_0

    :cond_11
    move/from16 v20, v19

    :goto_0
    packed-switch v20, :pswitch_data_0

    :pswitch_0
    move/from16 v3, v19

    goto :goto_1

    :pswitch_1
    move v3, v14

    goto :goto_1

    :pswitch_2
    move/from16 v3, v17

    goto :goto_1

    :pswitch_3
    move v3, v4

    goto :goto_1

    :pswitch_4
    move v3, v10

    goto :goto_1

    :pswitch_5
    move v3, v13

    goto :goto_1

    :pswitch_6
    move/from16 v3, v16

    goto :goto_1

    :pswitch_7
    move v3, v6

    goto :goto_1

    :pswitch_8
    move v3, v12

    goto :goto_1

    :pswitch_9
    move v3, v5

    goto :goto_1

    :pswitch_a
    move v3, v8

    goto :goto_1

    :pswitch_b
    move v3, v15

    goto :goto_1

    :pswitch_c
    move v3, v11

    goto :goto_1

    :pswitch_d
    move/from16 v3, v18

    goto :goto_1

    :pswitch_e
    move v3, v7

    goto :goto_1

    :pswitch_f
    move v3, v9

    .line 114
    :goto_1
    :pswitch_10
    sget-object v1, Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraModeParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[configParameters] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", modeName: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraModeParameterConfig;->mMode:Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraMode;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraMode;->getModeKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-object/from16 v0, p1

    .line 115
    invoke-virtual {v0, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionCameraMode(I)V

    return v19

    :sswitch_data_0
    .sparse-switch
        -0x701d403b -> :sswitch_11
        -0x6d784214 -> :sswitch_10
        -0x58e7e377 -> :sswitch_f
        -0x42df7e45 -> :sswitch_e
        -0x39acae69 -> :sswitch_d
        -0x19d3bf97 -> :sswitch_c
        -0x1977f3fc -> :sswitch_b
        -0x18cc9d97 -> :sswitch_a
        -0x16aea039 -> :sswitch_9
        -0x9642627 -> :sswitch_8
        -0x5111673 -> :sswitch_7
        0x1d97ec5 -> :sswitch_6
        0x9017c4a -> :sswitch_5
        0x15dcf92f -> :sswitch_4
        0x42a61261 -> :sswitch_3
        0x65fe71c9 -> :sswitch_2
        0x6b8a8059 -> :sswitch_1
        0x766dd0c4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "1"

    .line 49
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "0"

    .line 50
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraModeParameterConfig;->mMode:Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraMode;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/transsioncameramode/TranssionCameraMode;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
