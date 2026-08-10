.class Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;
.super Ljava/lang/Object;
.source "FaceDetectionUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$1;)V
    .locals 0

    .line 288
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 288
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 291
    invoke-static {}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "key_focus_state"

    .line 292
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 293
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "PASSIVE_SCAN"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1
    const-string v1, "ACTIVE_FOCUSED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const-string v1, "PASSIVE_FOCUSED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "ACTIVE_SCAN"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "INACTIVE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_5
    const-string v1, "ACTIVE_UNFOCUSED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    :sswitch_6
    const-string v1, "PASSIVE_UNFOCUSED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    move v0, v3

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 303
    :pswitch_0
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;

    invoke-static {p2, v3}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->access$702(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;Z)Z

    goto :goto_1

    .line 298
    :pswitch_1
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;

    invoke-static {p2, v2}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->access$702(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;Z)Z

    .line 308
    :cond_7
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "key_ai_face_beauty_smart_detection"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "key_face_beauty"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    .line 311
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->access$800(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1d09b766 -> :sswitch_6
        0x2c1b7ca5 -> :sswitch_5
        0x301e4c6b -> :sswitch_4
        0x436bf816 -> :sswitch_3
        0x4b74c21f -> :sswitch_2
        0x5664cb1e -> :sswitch_1
        0x5b4248b5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
