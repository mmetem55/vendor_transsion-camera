.class Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;
.super Ljava/lang/Object;
.source "FaceDetection.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetected([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Z)V
    .locals 9

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$000(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    .line 83
    array-length v4, p1

    if-lez v4, :cond_3

    .line 85
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->updateFaceCount(I)V

    .line 86
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v4}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$100(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 87
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v4}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$100(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->getSensorRect()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 89
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v5, p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$200(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Landroid/graphics/Rect;

    move-result-object v5

    .line 90
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v6, v5

    int-to-float v5, v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int/2addr v6, v4

    int-to-float v4, v6

    div-float/2addr v5, v4

    const v4, 0x3bb43958    # 0.0055f

    cmpl-float v4, v5, v4

    if-lez v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    .line 92
    :goto_0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->updateMaxFaceRatio(F)V

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    move v5, v3

    goto :goto_2

    :cond_3
    move v4, v1

    move v5, v2

    .line 96
    :goto_2
    iget-object v6, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v6}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$300(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)I

    move-result v6

    if-eq v4, v6, :cond_5

    const-string v6, "key_has_valid_face"

    if-ne v4, v3, :cond_4

    .line 98
    iget-object v7, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v7}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$400(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v7

    const-string v8, "face_valid"

    invoke-virtual {v7, v6, v8}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 100
    :cond_4
    iget-object v7, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v7}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$400(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v7

    const-string v8, "no_valid_face"

    invoke-virtual {v7, v6, v8}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    :goto_3
    iget-object v6, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v6, v4}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$302(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;I)I

    .line 105
    :cond_5
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v4}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$500(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v4

    const-string v6, "key_face_rect"

    invoke-virtual {v4, v6, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_12

    .line 108
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v4}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$600(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_11

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v4}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$700(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_8

    .line 110
    :cond_6
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v7, "on"

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v7, "1"

    if-eqz v4, :cond_b

    if-eqz p2, :cond_7

    .line 112
    invoke-interface {v0, p1, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    goto :goto_4

    .line 114
    :cond_7
    invoke-interface {v0, v6, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 116
    :goto_4
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->isFaceBeautyMode()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$800(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    if-eqz v5, :cond_a

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$900(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_5

    .line 119
    :cond_8
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->isFaceInfoDetected()Z

    move-result p2

    if-nez p2, :cond_9

    .line 120
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->needFaceInfoDetection()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$1000(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 121
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$1100(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$1100(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Landroid/os/Handler;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 123
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2, v3}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$1002(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;Z)Z

    .line 126
    :cond_9
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$1000(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z

    move-result p2

    if-eqz p2, :cond_12

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$100(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->getFaceDectionMode()I

    move-result p2

    if-ne p2, v3, :cond_12

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$1200(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V

    goto/16 :goto_9

    :cond_a
    :goto_5
    return-void

    .line 129
    :cond_b
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v8, "gender_indentification"

    invoke-static {v8, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    if-eqz p2, :cond_c

    .line 131
    invoke-interface {v0, p1, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    goto :goto_6

    .line 133
    :cond_c
    invoke-interface {v0, v6, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 135
    :goto_6
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$100(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->getFaceDectionMode()I

    move-result p2

    if-ne p2, v1, :cond_12

    if-eqz p1, :cond_12

    .line 138
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$1300(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p2

    const-string v0, "key_face_detection"

    invoke-virtual {p2, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->isFaceBeautyMode()Z

    move-result p2

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$1400(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    if-eqz v5, :cond_f

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$900(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_7

    .line 142
    :cond_d
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->isFaceInfoDetected()Z

    move-result p2

    if-nez p2, :cond_e

    .line 143
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->needFaceInfoDetection()Z

    move-result p2

    if-eqz p2, :cond_e

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$1000(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 144
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2, v3}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$1002(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;Z)Z

    .line 147
    :cond_e
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$1000(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z

    move-result p2

    if-eqz p2, :cond_12

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$100(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->getFaceDectionMode()I

    move-result p2

    if-ne p2, v1, :cond_12

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$1200(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V

    goto :goto_9

    :cond_f
    :goto_7
    return-void

    .line 152
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string p1, "off"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 153
    invoke-interface {v0, v6, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    goto :goto_9

    .line 109
    :cond_11
    :goto_8
    invoke-interface {v0, v6, v2}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_12
    :goto_9
    return-void
.end method
