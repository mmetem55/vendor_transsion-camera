.class Lcom/transsion/camera/app/BaseCameraActivity$1;
.super Landroid/os/Handler;
.source "BaseCameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/BaseCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/os/Looper;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 201
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 234
    :pswitch_1
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->processFoldingFeatureState(I)V

    goto :goto_0

    .line 229
    :pswitch_2
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p1}, Lcom/transsion/camera/app/QuickActivity;->isTopResumedActivity()Z

    move-result p1

    if-nez p1, :cond_0

    .line 230
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 226
    :pswitch_3
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->access$200(Lcom/transsion/camera/app/BaseCameraActivity;)V

    goto :goto_0

    .line 223
    :pswitch_4
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->handleReduceScreenBrightness(F)V

    goto :goto_0

    .line 220
    :pswitch_5
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->handleReduceScreenBrightnessGradually()V

    goto :goto_0

    .line 212
    :pswitch_6
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mLensDirtyHintSupported:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->doShowLensDirtyHintIfNeed(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :pswitch_7
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->hideErrorAndFinish()V

    goto :goto_0

    .line 217
    :pswitch_8
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->showThermalThrottleUrgent()V

    goto :goto_0

    .line 206
    :pswitch_9
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->showErrorAndFinish(I)V

    goto :goto_0

    .line 203
    :pswitch_a
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->showWaitPage()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
