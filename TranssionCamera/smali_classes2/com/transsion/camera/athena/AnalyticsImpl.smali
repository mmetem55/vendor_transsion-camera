.class public Lcom/transsion/camera/athena/AnalyticsImpl;
.super Ljava/lang/Object;
.source "AnalyticsImpl.java"

# interfaces
.implements Lcom/transsion/camera/utils/analytics/AbstractAnalytics;


# static fields
.field private static final AGE:Ljava/lang/String; = "age"

.field private static final ATHENA_AGE_TID:I = 0xa64669

.field private static final ATHENA_AR2_CAPTURE_TID:J = 0x195e85a815L

.field private static final ATHENA_AR2_DOWNLOAD_TID:J = 0x195e85a817L

.field private static final ATHENA_AR2_RECORDER_TID:J = 0x195e85a816L

.field private static final ATHENA_AR3X_CAPTURE_TID:J = 0x195e85a81cL

.field private static final ATHENA_AR3X_VIDEO_TID:J = 0x195e85a81dL

.field private static final ATHENA_BEAUTY_TID:I = 0xa6466d

.field private static final ATHENA_CAMERA_LAUNCH_TID:J = 0x195e85a81fL

.field private static final ATHENA_CAMERA_TID:I = 0xa6466e

.field private static final ATHENA_CAPTURE_TID:J = 0x195e85a811L

.field private static final ATHENA_DUAL_VIDEO_TID:J = 0x195e85a81eL

.field private static final ATHENA_EVENT_CLICK:J = 0x195e85a80eL

.field private static final ATHENA_EVENT_DURATION:J = 0x195e85a80fL

.field private static final ATHENA_EVENT_FUN_DOWNLOAD:J = 0x195e85a814L

.field private static final ATHENA_EVENT_FUN_RECORD:J = 0x195e85a813L

.field private static final ATHENA_FILTER_SUPERNIGHT_TID:J = 0x195e85a81aL

.field private static final ATHENA_FILTER_TID:I = 0xa6466c

.field private static final ATHENA_MORE_MODE_TID:J = 0x195e85a820L

.field private static final ATHENA_MOVIE_TID:J = 0x195e85a81bL

.field private static final ATHENA_SEX_TID:I = 0xa6466a

.field private static final ATHENA_THERMAL_WARNING_TID:J = 0x195e85a818L

.field private static final ATHENA_VERSION_ID:I = 0x2

.field private static final ATHENA_VIDEO_TID:J = 0x195e85a812L

.field private static final CAMERA_LAUNCH_TIME:Ljava/lang/String; = "camera_launch_time"

.field private static final CAMERA_TIME:Ljava/lang/String; = "camera_time"

.field private static final CAPTURE:Ljava/lang/String; = "capture"

.field private static final DUAL_VIDEO:Ljava/lang/String; = "dual_video"

.field private static final EVENT_AR2_CAPTURE:Ljava/lang/String; = "ar2_capture"

.field private static final EVENT_AR2_DOWNLOAD:Ljava/lang/String; = "ar2_download"

.field private static final EVENT_AR2_RECORDER:Ljava/lang/String; = "ar2_recorder"

.field private static final EVENT_AR3X_CAPTURE:Ljava/lang/String; = "ar3x_capture"

.field private static final EVENT_AR3X_RECORDER:Ljava/lang/String; = "ar3x_recorder"

.field private static final EVENT_FUN_DOWNLOAD:Ljava/lang/String; = "fun_download"

.field private static final EVENT_FUN_RECORD:Ljava/lang/String; = "fun_record"

.field private static final EVENT_MORE_MODE:Ljava/lang/String; = "more_mode"

.field private static final EVENT_MOVIE:Ljava/lang/String; = "movie"

.field private static final EVENT_THERMAL_WARING:Ljava/lang/String; = "thermal_warning"

.field private static final FACEBEAUTY_TIME:Ljava/lang/String; = "facebeauty_time"

.field private static final FILTER_SUPERTIME_TIME:Ljava/lang/String; = "filter_supernight_time"

.field private static final FILTER_TIME:Ljava/lang/String; = "filter_time"

.field private static final KEY_CLICK:Ljava/lang/String; = "click"

.field private static final KEY_DURATION:Ljava/lang/String; = "duration"

.field private static final KEY_TEMP_AP:Ljava/lang/String; = "key_temp_ap"

.field private static final KEY_TEMP_BA:Ljava/lang/String; = "key_temp_ba"

.field private static final KEY_TEMP_CPU:Ljava/lang/String; = "key_temp_cpu"

.field private static final KEY_TEMP_MDAP:Ljava/lang/String; = "key_temp_mdap"

.field private static final KEY_TEMP_PMIC:Ljava/lang/String; = "key_temp_pmic"

.field private static final KEY_TEMP_WIFI:Ljava/lang/String; = "key_temp_wifi"

.field private static final SEX:Ljava/lang/String; = "sex"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VIDEO:Ljava/lang/String; = "video"

.field private static sTranContext:Lcom/transsion/hubsdk/TranContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AthenaAnalytics"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/athena/AnalyticsImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/hubsdk/TranContext;->get(Landroid/content/Context;)Lcom/transsion/hubsdk/TranContext;

    move-result-object p0

    sput-object p0, Lcom/transsion/camera/athena/AnalyticsImpl;->sTranContext:Lcom/transsion/hubsdk/TranContext;

    return-void
.end method

.method private getTemperature(I)I
    .locals 3

    const/4 p0, 0x0

    .line 178
    :try_start_0
    sget-object v0, Lcom/transsion/camera/athena/AnalyticsImpl;->sTranContext:Lcom/transsion/hubsdk/TranContext;

    const-string v1, "resmonitor"

    invoke-virtual {v0, v1}, Lcom/transsion/hubsdk/TranContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/resmonitor/TranResMonitorManager;

    if-eqz v0, :cond_0

    .line 180
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "cache"

    .line 181
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "type"

    .line 182
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/16 p1, 0xd

    .line 183
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/hubsdk/resmonitor/TranResMonitorManager;->getEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 185
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "thermal"

    .line 186
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    div-int/lit8 p1, p1, 0x64
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    return p0

    :catch_0
    move-exception p1

    .line 191
    sget-object v0, Lcom/transsion/camera/athena/AnalyticsImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getTemperature] error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method


# virtual methods
.method public logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "ro.thub.core.support"

    const-string v4, "0"

    .line 94
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "[logEvent] "

    if-nez v3, :cond_0

    .line 95
    sget-object v0, Lcom/transsion/camera/athena/AnalyticsImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " thub core is null"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 98
    :cond_0
    sget-object v3, Lcom/transsion/camera/athena/AnalyticsImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "capture"

    const-string v6, "ar3x_capture"

    const-string v7, "video"

    const-string v8, "movie"

    const-string v9, "click"

    const-string v10, "filter_supernight_time"

    const-string v11, "sex"

    const-string v12, "age"

    const-string v13, "ar2_capture"

    const-string v15, "camera_launch_time"

    const-string v14, "ar3x_recorder"

    const-string v3, "filter_time"

    const-string v0, "ar2_recorder"

    const-string v2, "duration"

    move-object/from16 v17, v2

    const-string v2, "dual_video"

    move-object/from16 v18, v2

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move-object/from16 v4, v17

    move-object/from16 v2, v18

    :goto_1
    const/16 v16, -0x1

    goto/16 :goto_3

    :sswitch_0
    const-string v4, "facebeauty_time"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x15

    goto/16 :goto_2

    :sswitch_1
    const-string v4, "camera_time"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x14

    goto/16 :goto_2

    :sswitch_2
    const-string v4, "fun_download"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x13

    goto/16 :goto_2

    :sswitch_3
    const-string v4, "more_mode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0x12

    goto/16 :goto_2

    :sswitch_4
    const-string v4, "thermal_warning"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/16 v1, 0x11

    goto/16 :goto_2

    :sswitch_5
    const-string v4, "ar2_download"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/16 v1, 0x10

    goto/16 :goto_2

    :sswitch_6
    const-string v4, "fun_record"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/16 v1, 0xf

    goto/16 :goto_2

    :sswitch_7
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/16 v1, 0xe

    goto :goto_2

    :sswitch_8
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/16 v1, 0xd

    goto :goto_2

    :sswitch_9
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    const/16 v1, 0xc

    goto :goto_2

    :sswitch_a
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xb

    goto :goto_2

    :sswitch_b
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0xa

    goto :goto_2

    :sswitch_c
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x9

    goto :goto_2

    :sswitch_d
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x8

    goto :goto_2

    :sswitch_e
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/4 v1, 0x7

    goto :goto_2

    :sswitch_f
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/4 v1, 0x6

    :goto_2
    move/from16 v16, v1

    move-object/from16 v4, v17

    move-object/from16 v2, v18

    goto :goto_3

    :sswitch_10
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_0

    :cond_11
    move-object/from16 v4, v17

    move-object/from16 v2, v18

    const/16 v16, 0x5

    goto :goto_3

    :sswitch_11
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_0

    :cond_12
    move-object/from16 v4, v17

    move-object/from16 v2, v18

    const/16 v16, 0x4

    goto :goto_3

    :sswitch_12
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_0

    :cond_13
    move-object/from16 v4, v17

    move-object/from16 v2, v18

    const/16 v16, 0x3

    goto :goto_3

    :sswitch_13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_0

    :cond_14
    move-object/from16 v4, v17

    move-object/from16 v2, v18

    const/16 v16, 0x2

    goto :goto_3

    :sswitch_14
    move-object/from16 v4, v17

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v2, v18

    if-nez v1, :cond_15

    goto/16 :goto_1

    :cond_15
    const/16 v16, 0x1

    goto :goto_3

    :sswitch_15
    move-object/from16 v4, v17

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_1

    :cond_16
    const/16 v16, 0x0

    :goto_3
    packed-switch v16, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const v0, 0xa6466d

    const-string v1, "facebeauty_time"

    move-object/from16 v2, p2

    const/4 v3, 0x2

    .line 119
    invoke-static {v0, v1, v3, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(ILjava/lang/String;ILandroid/os/Bundle;)V

    goto/16 :goto_4

    :pswitch_1
    move-object/from16 v2, p2

    const/4 v3, 0x2

    const v0, 0xa6466e

    const-string v1, "camera_time"

    .line 116
    invoke-static {v0, v1, v3, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(ILjava/lang/String;ILandroid/os/Bundle;)V

    goto/16 :goto_4

    :pswitch_2
    move-object/from16 v2, p2

    const/4 v3, 0x2

    const-wide v0, 0x195e85a814L

    const-string v4, "fun_download"

    .line 131
    invoke-static {v0, v1, v4, v3, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    goto/16 :goto_4

    :pswitch_3
    move-object/from16 v2, p2

    const/4 v3, 0x2

    const-wide v0, 0x195e85a820L

    const-string v4, "more_mode"

    .line 170
    invoke-static {v0, v1, v4, v3, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    goto/16 :goto_4

    :pswitch_4
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    const/4 v1, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 143
    invoke-direct {v0, v4}, Lcom/transsion/camera/athena/AnalyticsImpl;->getTemperature(I)I

    move-result v4

    const-string v5, "key_temp_cpu"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    invoke-direct {v0, v1}, Lcom/transsion/camera/athena/AnalyticsImpl;->getTemperature(I)I

    move-result v1

    const-string v4, "key_temp_pmic"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    invoke-direct {v0, v3}, Lcom/transsion/camera/athena/AnalyticsImpl;->getTemperature(I)I

    move-result v1

    const-string v3, "key_temp_ba"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x3

    .line 146
    invoke-direct {v0, v1}, Lcom/transsion/camera/athena/AnalyticsImpl;->getTemperature(I)I

    move-result v1

    const-string v3, "key_temp_wifi"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x4

    .line 147
    invoke-direct {v0, v1}, Lcom/transsion/camera/athena/AnalyticsImpl;->getTemperature(I)I

    move-result v1

    const-string v3, "key_temp_ap"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x5

    .line 148
    invoke-direct {v0, v1}, Lcom/transsion/camera/athena/AnalyticsImpl;->getTemperature(I)I

    move-result v0

    const-string v1, "key_temp_mdap"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-wide v0, 0x195e85a818L

    const-string v3, "thermal_warning"

    const/4 v4, 0x2

    .line 149
    invoke-static {v0, v1, v3, v4, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    goto/16 :goto_4

    :pswitch_5
    move-object/from16 v2, p2

    const/4 v4, 0x2

    const-wide v0, 0x195e85a817L

    const-string v3, "ar2_download"

    .line 140
    invoke-static {v0, v1, v3, v4, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    goto/16 :goto_4

    :pswitch_6
    move-object/from16 v2, p2

    const/4 v4, 0x2

    const-wide v0, 0x195e85a813L

    const-string v3, "fun_record"

    .line 128
    invoke-static {v0, v1, v3, v4, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    goto/16 :goto_4

    :pswitch_7
    move-object/from16 v2, p2

    const/4 v4, 0x2

    const-wide v0, 0x195e85a811L

    .line 107
    invoke-static {v0, v1, v5, v4, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    goto/16 :goto_4

    :pswitch_8
    move-object/from16 v2, p2

    const/4 v4, 0x2

    const-wide v0, 0x195e85a81cL

    .line 158
    invoke-static {v0, v1, v6, v4, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    goto/16 :goto_4

    :pswitch_9
    move-object/from16 v2, p2

    const/4 v4, 0x2

    const-wide v0, 0x195e85a812L

    .line 113
    invoke-static {v0, v1, v7, v4, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    goto/16 :goto_4

    :pswitch_a
    move-object/from16 v2, p2

    const/4 v4, 0x2

    const-wide v0, 0x195e85a81bL

    .line 152
    invoke-static {v0, v1, v8, v4, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    goto/16 :goto_4

    :pswitch_b
    move-object/from16 v2, p2

    const/4 v4, 0x2

    const-wide v0, 0x195e85a80eL

    .line 122
    invoke-static {v0, v1, v9, v4, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    goto/16 :goto_4

    :pswitch_c
    move-object/from16 v2, p2

    const/4 v4, 0x2

    const-wide v0, 0x195e85a81aL

    .line 155
    invoke-static {v0, v1, v10, v4, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    goto/16 :goto_4

    :pswitch_d
    move-object/from16 v2, p2

    const/4 v4, 0x2

    const v0, 0xa6466a

    .line 101
    invoke-static {v0, v11, v4, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(ILjava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_4

    :pswitch_e
    move-object/from16 v2, p2

    const/4 v4, 0x2

    const v0, 0xa64669

    .line 104
    invoke-static {v0, v12, v4, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(ILjava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_4

    :pswitch_f
    move-object/from16 v2, p2

    const/4 v4, 0x2

    const-wide v0, 0x195e85a815L

    .line 134
    invoke-static {v0, v1, v13, v4, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_4

    :pswitch_10
    move-object/from16 v2, p2

    const/4 v4, 0x2

    const-wide v0, 0x195e85a81fL

    .line 164
    invoke-static {v0, v1, v15, v4, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_4

    :pswitch_11
    move-object/from16 v2, p2

    const/4 v4, 0x2

    const-wide v0, 0x195e85a81dL

    .line 161
    invoke-static {v0, v1, v14, v4, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_4

    :pswitch_12
    move-object/from16 v2, p2

    const/4 v4, 0x2

    const v0, 0xa6466c

    .line 110
    invoke-static {v0, v3, v4, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(ILjava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_4

    :pswitch_13
    move-object/from16 v2, p2

    const/4 v4, 0x2

    const-wide v5, 0x195e85a816L

    .line 137
    invoke-static {v5, v6, v0, v4, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_4

    :pswitch_14
    move-object/from16 v2, p2

    const/4 v0, 0x2

    const-wide v5, 0x195e85a80fL

    .line 125
    invoke-static {v5, v6, v4, v0, v2}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_4

    :pswitch_15
    move-object/from16 v1, p2

    const/4 v0, 0x2

    const-wide v3, 0x195e85a81eL

    .line 167
    invoke-static {v3, v4, v2, v0, v1}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILandroid/os/Bundle;)V

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x79c99d08 -> :sswitch_15
        -0x76bbb26c -> :sswitch_14
        -0x3bbecae4 -> :sswitch_13
        -0x350b54cc -> :sswitch_12
        -0x318067b9 -> :sswitch_11
        -0x2aed2e41 -> :sswitch_10
        -0x29c6c8d8 -> :sswitch_f
        0x178ff -> :sswitch_e
        0x1bc66 -> :sswitch_d
        0x273988 -> :sswitch_c
        0x5a5c588 -> :sswitch_b
        0x6343f30 -> :sswitch_a
        0x6b0147b -> :sswitch_9
        0x105c429d -> :sswitch_8
        0x20efc746 -> :sswitch_7
        0x25017f11 -> :sswitch_6
        0x48ff54e6 -> :sswitch_5
        0x51fb66f4 -> :sswitch_4
        0x6c13844d -> :sswitch_3
        0x6f5c2b48 -> :sswitch_2
        0x7abc77a7 -> :sswitch_1
        0x7cd36633 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public testCrash()V
    .locals 0

    return-void
.end method
