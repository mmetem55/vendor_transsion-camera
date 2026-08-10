.class Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$StatusChangeListener;
.super Ljava/lang/Object;
.source "AnimalEyeDetectionUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;
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
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$1;)V
    .locals 0

    .line 339
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 339
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 342
    invoke-static {}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 343
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 344
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    move p1, v2

    goto :goto_1

    :sswitch_0
    const-string p1, "PASSIVE_SCAN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_1
    const-string p1, "ACTIVE_FOCUSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_2
    const-string p1, "PASSIVE_FOCUSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_3
    const-string p1, "ACTIVE_SCAN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_4
    const-string p1, "INACTIVE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_5
    const-string p1, "ACTIVE_UNFOCUSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move p1, v0

    goto :goto_1

    :sswitch_6
    const-string p1, "PASSIVE_UNFOCUSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move p1, v1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 355
    :pswitch_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;

    invoke-static {p0, v1}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->access$702(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;Z)Z

    goto :goto_2

    .line 349
    :pswitch_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->access$702(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;Z)Z

    .line 350
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;

    invoke-static {p0, v2}, Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;->access$802(Lcom/transsion/camera/ui/setting/animaleyedetection/AnimalEyeDetectionUI;I)I

    :cond_7
    :goto_2
    return-void

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
