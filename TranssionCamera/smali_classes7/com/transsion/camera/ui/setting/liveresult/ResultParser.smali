.class Lcom/transsion/camera/ui/setting/liveresult/ResultParser;
.super Ljava/lang/Object;
.source "ResultParser.java"


# direct methods
.method private static AeModeToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    const-string v0, "NA"

    if-nez p0, :cond_0

    return-object v0

    .line 165
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_6

    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    return-object v0

    :cond_1
    const-string p0, "ON_EXTERNAL_FLASH"

    return-object p0

    :cond_2
    const-string p0, "ON_AUTO_FLASH_REDEYE"

    return-object p0

    :cond_3
    const-string p0, "ON_ALWAYS_FLASH"

    return-object p0

    :cond_4
    const-string p0, "ON_AUTO_FLASH"

    return-object p0

    :cond_5
    const-string p0, "ON"

    return-object p0

    :cond_6
    const-string p0, "OFF"

    return-object p0
.end method

.method private static AeStateToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    const-string v0, "NA"

    if-nez p0, :cond_0

    return-object v0

    .line 188
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_6

    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    return-object v0

    :cond_1
    const-string p0, "PRECAPTURE"

    return-object p0

    :cond_2
    const-string p0, "FLASH_REQUIRED"

    return-object p0

    :cond_3
    const-string p0, "LOCKED"

    return-object p0

    :cond_4
    const-string p0, "CONVERGED"

    return-object p0

    :cond_5
    const-string p0, "SEARCHING"

    return-object p0

    :cond_6
    const-string p0, "INACTIVE"

    return-object p0
.end method

.method private static AfModeToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    const-string v0, "NA"

    if-nez p0, :cond_0

    return-object v0

    .line 118
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_6

    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    return-object v0

    :cond_1
    const-string p0, "EDOF"

    return-object p0

    :cond_2
    const-string p0, "CONTINUOUS_PICTURE"

    return-object p0

    :cond_3
    const-string p0, "CONTINUOUS_VIDEO"

    return-object p0

    :cond_4
    const-string p0, "MACRO"

    return-object p0

    :cond_5
    const-string p0, "AUTO"

    return-object p0

    :cond_6
    const-string p0, "OFF"

    return-object p0
.end method

.method private static AfStateToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    const-string v0, "NA"

    if-nez p0, :cond_0

    return-object v0

    .line 140
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    return-object v0

    :pswitch_0
    const-string p0, "PASSIVE_UNFOCUSED"

    return-object p0

    :pswitch_1
    const-string p0, "NOT_FOCUSED_LOCKED"

    return-object p0

    :pswitch_2
    const-string p0, "FOCUSED_LOCKED"

    return-object p0

    :pswitch_3
    const-string p0, "ACTIVE_SCAN"

    return-object p0

    :pswitch_4
    const-string p0, "PASSIVE_FOCUSED"

    return-object p0

    :pswitch_5
    const-string p0, "PASSIVE_SCAN"

    return-object p0

    :pswitch_6
    const-string p0, "INACTIVE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static printResult(Lcom/transsion/camera/feature/setting/liveresult/Result;)Ljava/lang/CharSequence;
    .locals 14

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 29
    :cond_0
    new-instance v0, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;-><init>()V

    .line 31
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/liveresult/Result;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    .line 32
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/liveresult/Result;->getPreviewSize()Landroid/util/Size;

    move-result-object v2

    .line 33
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/liveresult/Result;->getPlatformCamera()Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    move-result-object p0

    const-string v3, " PreviewSize: \t"

    .line 35
    invoke-virtual {v0, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 36
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v4, " ISO: \t"

    .line 37
    invoke-virtual {v0, v4}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 39
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const-wide/16 v4, -0x1

    const-wide/32 v6, 0xf4240

    if-nez v2, :cond_1

    move-wide v8, v4

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    div-long/2addr v8, v6

    :goto_0
    if-eqz v2, :cond_3

    .line 42
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    const-wide/32 v10, 0x3b9aca00

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    div-long/2addr v10, v12

    long-to-float v2, v10

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v2, v10

    float-to-int v2, v2

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, -0x1

    :goto_2
    const-string v10, " Exposure  Time: \t"

    .line 43
    invoke-virtual {v0, v10}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v8

    const-string v9, " ms.  1/"

    .line 44
    invoke-virtual {v8, v9}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v2

    const-string v8, "s.\n"

    invoke-virtual {v2, v8}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 46
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_4

    goto :goto_3

    .line 48
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v6

    :goto_3
    const-wide v6, 0x408f400000000000L    # 1000.0

    long-to-double v8, v4

    div-double/2addr v6, v8

    double-to-float v2, v6

    const-string v6, " Frame Duration: \t"

    .line 50
    invoke-virtual {v0, v6}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v4

    const-string v5, " ms.  "

    invoke-virtual {v4, v5}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v4

    .line 51
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v2

    const-string v4, " fps.\n"

    invoke-virtual {v2, v4}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 53
    invoke-interface {p0, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p0

    if-eqz p0, :cond_5

    .line 54
    array-length v2, p0

    if-lez v2, :cond_5

    const-string v2, " Tran  BV: \t\t"

    .line 55
    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    aget p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 58
    :cond_5
    new-instance p0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "com.mediatek.3afeature.aeAverageBrightness"

    invoke-direct {p0, v4, v2}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 60
    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_6

    const-string v4, " MTK  CWV: \t\t"

    .line 62
    invoke-virtual {v0, v4}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 65
    :cond_6
    new-instance p0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v4, "com.transsion.aflaserdist"

    invoke-direct {p0, v4, v2}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 67
    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/high16 v4, -0x10000

    if-eqz p0, :cond_7

    .line 69
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const-string v6, " Laser DT: \t\t"

    .line 70
    invoke-virtual {v0, v6}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 71
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p0

    .line 72
    invoke-static {v0, v4, v5, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->setForegroundColor(Landroid/text/SpannableStringBuilder;III)V

    .line 75
    :cond_7
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const-string v5, " AF  Mode: \t\t"

    .line 76
    invoke-virtual {v0, v5}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->AfModeToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 77
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const-string v5, " AF State: \t\t"

    .line 78
    invoke-virtual {v0, v5}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->AfStateToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 80
    new-instance p0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v5, "com.transsion.otp_InfPos"

    invoke-direct {p0, v5, v2}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 82
    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 83
    new-instance v5, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v6, "com.transsion.otp_MacroPos"

    invoke-direct {v5, v6, v2}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 85
    invoke-virtual {v5, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz p0, :cond_8

    if-eqz v5, :cond_8

    .line 87
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const-string v7, " OTP  Pos: \t\t"

    .line 88
    invoke-virtual {v0, v7}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    const-string v7, " - "

    invoke-virtual {p0, v7}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 89
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p0

    .line 90
    invoke-static {v0, v4, v6, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->setForegroundColor(Landroid/text/SpannableStringBuilder;III)V

    .line 93
    :cond_8
    new-instance p0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v5, "com.transsion.lensPosition"

    invoke-direct {p0, v5, v2}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 95
    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_9

    .line 97
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string v5, " Lens Pos: \t\t"

    .line 98
    invoke-virtual {v0, v5}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 99
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p0

    .line 100
    invoke-static {v0, v4, v2, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->setForegroundColor(Landroid/text/SpannableStringBuilder;III)V

    .line 103
    :cond_9
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    const-string v2, " FocusDis: \t\t"

    .line 104
    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 106
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const-string v2, " AE  Mode: \t\t"

    .line 107
    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->AeModeToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 108
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const-string v1, " AE State: \t\t"

    .line 109
    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->AeStateToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    return-object v0
.end method
