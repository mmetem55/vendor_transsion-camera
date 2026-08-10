.class Lcom/transsion/camera/app/SecureCameraActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "SecureCameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/SecureCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/SecureCameraActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/SecureCameraActivity;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity$2;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 306
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 307
    invoke-static {}, Lcom/transsion/camera/app/SecureCameraActivity;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenOffReceiver receive,action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSuperResumed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/SecureCameraActivity$2;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    iget-boolean v1, v1, Lcom/transsion/camera/app/QuickActivity;->mSuperResumed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/SecureCameraActivity$2;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    .line 308
    invoke-static {v1}, Lcom/transsion/camera/app/SecureCameraActivity;->access$100(Lcom/transsion/camera/app/SecureCameraActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "android.intent.action.CUSTOM_SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0

    :sswitch_2
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x5

    .line 319
    iget-object p2, p0, Lcom/transsion/camera/app/SecureCameraActivity$2;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    iget-object p2, p2, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p2

    if-eq p1, p2, :cond_3

    .line 320
    iget-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity$2;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    invoke-virtual {p1}, Lcom/transsion/camera/app/SecureCameraActivity;->unRegisterScreenOff()V

    .line 321
    iget-object p0, p0, Lcom/transsion/camera/app/SecureCameraActivity$2;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 312
    :pswitch_1
    iget-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity$2;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    iget-boolean p2, p1, Lcom/transsion/camera/app/QuickActivity;->mSuperResumed:Z

    if-nez p2, :cond_3

    invoke-static {p1}, Lcom/transsion/camera/app/SecureCameraActivity;->access$100(Lcom/transsion/camera/app/SecureCameraActivity;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity$2;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/SecureCameraActivity;->isPowerScreenOn(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 313
    iget-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity$2;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/SecureCameraActivity;->access$102(Lcom/transsion/camera/app/SecureCameraActivity;Z)Z

    .line 314
    iget-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity$2;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    invoke-virtual {p1}, Lcom/transsion/camera/app/SecureCameraActivity;->unRegisterScreenOff()V

    .line 315
    iget-object p0, p0, Lcom/transsion/camera/app/SecureCameraActivity$2;->this$0:Lcom/transsion/camera/app/SecureCameraActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_2
        0x311a1d6c -> :sswitch_1
        0x6633ee65 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
