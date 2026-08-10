.class Lcom/transsion/camera/app/SlaveScreenActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "SlaveScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/SlaveScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/SlaveScreenActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/SlaveScreenActivity;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/transsion/camera/app/SlaveScreenActivity$2;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 196
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VIPCaptureReceiver, action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mIsResumed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/SlaveScreenActivity$2;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    invoke-static {v3}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$100(Lcom/transsion/camera/app/SlaveScreenActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v1, "transsion.action.VIP_VIP_FINISH_ACTIVITY"

    .line 198
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-static {}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VIPCaptureReceiver ACTION_VIP_FINISH_ACTIVITY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/transsion/camera/app/SlaveScreenActivity$2;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/SlaveScreenActivity$2;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    invoke-static {v1}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$100(Lcom/transsion/camera/app/SlaveScreenActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 206
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move v0, v2

    goto :goto_1

    :sswitch_0
    const-string v1, "transsion.action.SCREEN_FORM_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "transsion.action.VIP_CAPTURE_SHOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "transsion.action.VIP_RUN_SLAVE_PREVIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "transsion.action.VIP_CAPTURE_PROCESS_COVER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "transsion.action.VIP_CAPTURE_SELF_TIMER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v1, "transsion.action.VIP_CAPTURE_RATIO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v0, v3

    :goto_1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const-string v0, "key_screen_form_type"

    .line 239
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 240
    iget-object v1, p0, Lcom/transsion/camera/app/SlaveScreenActivity$2;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    invoke-static {v1}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$500(Lcom/transsion/camera/app/SlaveScreenActivity;)Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->onScreenFormChanged(I)V

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity$2;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$302(Lcom/transsion/camera/app/SlaveScreenActivity;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 242
    iget-object p2, p0, Lcom/transsion/camera/app/SlaveScreenActivity$2;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    invoke-static {p2}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$500(Lcom/transsion/camera/app/SlaveScreenActivity;)Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity$2;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$400(Lcom/transsion/camera/app/SlaveScreenActivity;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/SlaveScreenActivity$2;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    invoke-static {v1}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$300(Lcom/transsion/camera/app/SlaveScreenActivity;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->setMainScreenSurfaceViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 243
    iget-object p2, p0, Lcom/transsion/camera/app/SlaveScreenActivity$2;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    invoke-static {p2}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$500(Lcom/transsion/camera/app/SlaveScreenActivity;)Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    move-result-object p2

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/app/SlaveScreenActivity$2;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$200(Lcom/transsion/camera/app/SlaveScreenActivity;)D

    move-result-wide v4

    :goto_2
    invoke-virtual {p2, v4, v5}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->setPreviewSize(D)V

    goto/16 :goto_4

    .line 224
    :pswitch_1
    iget-object p0, p0, Lcom/transsion/camera/app/SlaveScreenActivity$2;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$500(Lcom/transsion/camera/app/SlaveScreenActivity;)Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    move-result-object p0

    const/16 p1, 0x96

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->notifyRawActionToUI(I)V

    goto/16 :goto_4

    .line 228
    :pswitch_2
    iget-object p0, p0, Lcom/transsion/camera/app/SlaveScreenActivity$2;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$500(Lcom/transsion/camera/app/SlaveScreenActivity;)Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->runSlavePreview()V

    goto/16 :goto_4

    :pswitch_3
    const-string p1, "key_cover_action"

    .line 215
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 216
    invoke-static {}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_VIP_CAPTURE_PROCESS_COVER, coverAction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-ne p1, v2, :cond_9

    goto/16 :goto_4

    .line 220
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/SlaveScreenActivity$2;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$500(Lcom/transsion/camera/app/SlaveScreenActivity;)Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->notifyRawActionToUI(I)V

    goto :goto_4

    :pswitch_4
    const-string p1, "key_self_timer"

    .line 232
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "key_self_number"

    .line 233
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 234
    invoke-static {}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_VIP_CAPTURE_SELF_TIMER, run:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/app/SlaveScreenActivity$2;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$500(Lcom/transsion/camera/app/SlaveScreenActivity;)Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->processSelfTimer(ZI)V

    goto :goto_4

    .line 208
    :pswitch_5
    iget-object v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity$2;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    const-string v1, "key_preview_ratio"

    invoke-virtual {p2, v1, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$202(Lcom/transsion/camera/app/SlaveScreenActivity;D)D

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity$2;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$302(Lcom/transsion/camera/app/SlaveScreenActivity;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 210
    iget-object p2, p0, Lcom/transsion/camera/app/SlaveScreenActivity$2;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    invoke-static {p2}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$500(Lcom/transsion/camera/app/SlaveScreenActivity;)Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity$2;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$400(Lcom/transsion/camera/app/SlaveScreenActivity;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/SlaveScreenActivity$2;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    invoke-static {v1}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$300(Lcom/transsion/camera/app/SlaveScreenActivity;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->setMainScreenSurfaceViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 211
    iget-object p2, p0, Lcom/transsion/camera/app/SlaveScreenActivity$2;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    invoke-static {p2}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$500(Lcom/transsion/camera/app/SlaveScreenActivity;)Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    move-result-object p2

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/SlaveScreenActivity$2;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$200(Lcom/transsion/camera/app/SlaveScreenActivity;)D

    move-result-wide v4

    :goto_3
    invoke-virtual {p2, v4, v5}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->setPreviewSize(D)V

    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6bfcdd77 -> :sswitch_5
        -0x13e7476c -> :sswitch_4
        0x3e27e45 -> :sswitch_3
        0x646c7c3 -> :sswitch_2
        0x36533c9c -> :sswitch_1
        0x72d668e9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
