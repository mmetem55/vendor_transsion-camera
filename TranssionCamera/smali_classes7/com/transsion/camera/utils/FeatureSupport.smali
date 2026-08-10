.class public Lcom/transsion/camera/utils/FeatureSupport;
.super Ljava/lang/Object;
.source "FeatureSupport.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sTranVideoYUVSuperNightEnable:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/utils/FeatureSupport;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/FeatureSupport;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 83
    sput-object v0, Lcom/transsion/camera/utils/FeatureSupport;->sTranVideoYUVSuperNightEnable:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_preferences"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFastGoPhotoDebugTime(Landroid/content/Context;)I
    .locals 1

    const-string v0, "fast_go_to_photo_debug_time"

    .line 343
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getMarket()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.tran.sw.market"

    const-string v1, ""

    .line 334
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenShotThumbCropSize(Landroid/content/Context;)I
    .locals 1

    const-string v0, "screen_shot_thumbnail_crop_size"

    .line 181
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "debug.camera.screen_shot_thumb_crop"

    .line 182
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 183
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getSupportFoldUIType(Landroid/content/Context;)I
    .locals 1

    const-string v0, "support_fold_ui_type"

    .line 322
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getTotalMemory(Landroid/content/Context;)J
    .locals 4

    const-string v0, "activity"

    .line 118
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 119
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 120
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 121
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getVideoSuperNightBvDebug(I)I
    .locals 4

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "debug.camera.video_super_night_bv"

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 155
    sget-object v1, Lcom/transsion/camera/utils/FeatureSupport;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoSuperNightBvDebug error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public static isContinuousShotSupport(Landroid/content/Context;)Z
    .locals 8

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "ro.tran_cam_cs_support"

    const/4 v2, 0x0

    .line 94
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "continuous_shot_support"

    const-string v5, "bool"

    invoke-virtual {v0, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 96
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prop: "

    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", xmlValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    if-nez v3, :cond_0

    if-ne v1, v5, :cond_2

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "continuous_shot_support_depend_ram"

    const-string v6, "integer"

    .line 101
    invoke-virtual {v0, v3, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v1, ", configDependRam: "

    .line 104
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MB"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gtz v0, :cond_1

    :goto_0
    move v2, v5

    goto :goto_1

    .line 108
    :cond_1
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v6

    const-string p0, ", maxMemory: "

    .line 109
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v0, v0

    cmp-long p0, v0, v6

    if-gtz p0, :cond_2

    goto :goto_0

    .line 113
    :cond_2
    :goto_1
    sget-object p0, Lcom/transsion/camera/utils/FeatureSupport;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isContinuousShotSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2
.end method

.method public static isDeveloperMode(Landroid/content/Context;)Z
    .locals 2

    .line 245
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 246
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "key_developer_mode"

    const-string v1, "off"

    .line 247
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    .line 248
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isDocModeDebugSupport()Z
    .locals 2

    const-string v0, "debug.camera.doc_mode"

    const-string v1, "0"

    .line 146
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isDoodle()Z
    .locals 2

    const-string v0, "sys.transsion.nvcolor"

    const-string v1, ""

    .line 330
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Z47"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDumpToleranceSupport()Z
    .locals 3

    const-string v0, "cam.icap_dump_raw"

    const/4 v1, 0x0

    .line 205
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static isDumpVoiceSupport()Z
    .locals 2

    const-string v0, "debug.camera.dump_voice"

    const-string v1, "0"

    .line 187
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isEnhanceScreenBrightnessSupport()Z
    .locals 2

    const-string v0, "debug.camera.enhance_screen_brightness"

    const-string v1, "1"

    .line 141
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 142
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isFansSupport()Z
    .locals 2

    const-string v0, "persist.sys.fans.support"

    const-string v1, "0"

    .line 130
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFovCropSupport()Z
    .locals 5

    .line 210
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 211
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "Infinix-PR652B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v4, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "Infinix-X650D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "Infinix-X650C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "Infinix-X650B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_4
    const-string v1, "TECNO-KC8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_5
    const-string v1, "TECNO-KC3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "TECNO-KC2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_7
    const-string v1, "TECNO-CC6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_8
    const-string v1, "TECNO-KC2j"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_9
    const-string v1, "TECNO-PR651"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    move v4, v2

    goto :goto_0

    :sswitch_a
    const-string v1, "TECNO-PR651H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    return v3

    :pswitch_0
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x53e94bee -> :sswitch_a
        -0x3441550a -> :sswitch_9
        -0x9f415d6 -> :sswitch_8
        0x7efc03c -> :sswitch_7
        0x7efde40 -> :sswitch_6
        0x7efde41 -> :sswitch_5
        0x7efde46 -> :sswitch_4
        0x455ae9f1 -> :sswitch_3
        0x455ae9f2 -> :sswitch_2
        0x455ae9f3 -> :sswitch_1
        0x59e6a6c9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isLifterSupport()Z
    .locals 2

    const-string v0, "ro.tran_lifter_support"

    const-string v1, "0"

    .line 125
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLowPlatform()Z
    .locals 2

    .line 230
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 231
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "itel-A632WM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isOnlySupportColumnUI(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 309
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->getSupportFoldUIType(Landroid/content/Context;)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static isOnlySupportTBHoverUI(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 316
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->getSupportFoldUIType(Landroid/content/Context;)I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isQuickCaptureSupport()Z
    .locals 2

    const-string v0, "debug.camera.quick_capture_support"

    const-string v1, "1"

    .line 176
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 177
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isScreenShotThumbSupport()Z
    .locals 2

    const-string v0, "debug.camera.screen_shot_thumb_support"

    const-string v1, "1"

    .line 166
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 167
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isSharedAnimationSupport()Z
    .locals 2

    const-string v0, "debug.camera.shared_animation_support"

    const-string v1, "1"

    .line 171
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 172
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isSleepActivitySupport()Z
    .locals 2

    const-string v0, "debug.camera.sleep_activity_support"

    const-string v1, "1"

    .line 161
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 162
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isSprdDumpRawSupport()Z
    .locals 3

    const-string v0, "sprd_dump_raw_support"

    const/4 v1, 0x0

    .line 201
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static isSupportFoldUI(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 302
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->getSupportFoldUIType(Landroid/content/Context;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSupportMoreMode(Landroid/content/Context;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "is_support_more_mode"

    invoke-static {p0, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportNewMoreMode(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "mode_picker_style"

    .line 271
    invoke-static {p0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSysSupportVIPSelfie()Z
    .locals 3

    const-string v0, "ro.product.vip_selfie.support"

    const/4 v1, 0x0

    .line 326
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static isTranVideoYUVSuperNightEnable()Z
    .locals 2

    .line 86
    sget-object v0, Lcom/transsion/camera/utils/FeatureSupport;->sTranVideoYUVSuperNightEnable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "debug.camera.enable_tran_video_yuv_super_night"

    const-string v1, "1"

    .line 87
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/FeatureSupport;->sTranVideoYUVSuperNightEnable:Ljava/lang/Boolean;

    .line 89
    :cond_0
    sget-object v0, Lcom/transsion/camera/utils/FeatureSupport;->sTranVideoYUVSuperNightEnable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isVersionTenOrHigher(Landroid/content/Context;)Z
    .locals 2

    .line 278
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 279
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "."

    .line 280
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 281
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    const/16 v0, 0xa

    if-lt p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isVideoHDRDebugSupport()Z
    .locals 3

    .line 197
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "camera.livehdr.debug"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static isVideoPortraitMaxSizeSupport(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_portrait_support"

    const-string v3, "string"

    .line 135
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static needHingeStateManager(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 288
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->getSupportFoldUIType(Landroid/content/Context;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static shouldForceConvertNV21()Z
    .locals 3

    .line 240
    sget-object v0, Lcom/transsion/camera/utils/FeatureSupport;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldForceConvertNV21 HARDWARE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "mt6580"

    .line 241
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static supportVIPCaptureManager(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 295
    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->getSupportFoldUIType(Landroid/content/Context;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static useHorizontalPopupStyle(Landroid/content/Context;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "use_horizontal_popup_style"

    invoke-static {p0, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
