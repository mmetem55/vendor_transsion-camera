.class Lcom/transsion/camera/feature/setting/focus/Focus$2;
.super Ljava/lang/Object;
.source "Focus.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/focus/Focus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/focus/Focus;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/focus/Focus;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$100(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "[onPreviewStarted]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$902(Lcom/transsion/camera/feature/setting/focus/Focus;Z)Z

    .line 486
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$1302(Lcom/transsion/camera/feature/setting/focus/Focus;Z)Z

    .line 487
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$1100(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$1100(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->updateFocusCallback()V

    :cond_0
    return-void
.end method

.method public onPreviewStopped()V
    .locals 3

    .line 465
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$100(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPreviewStopped],getValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,mIsAutoFocusTriggered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$800(Lcom/transsion/camera/feature/setting/focus/Focus;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$902(Lcom/transsion/camera/feature/setting/focus/Focus;Z)Z

    .line 467
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$202(Lcom/transsion/camera/feature/setting/focus/Focus;Z)Z

    .line 468
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$1000(Lcom/transsion/camera/feature/setting/focus/Focus;)V

    .line 469
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$1100(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$1100(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->resetAutoFocusTriggered()V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$800(Lcom/transsion/camera/feature/setting/focus/Focus;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$1100(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$802(Lcom/transsion/camera/feature/setting/focus/Focus;Z)Z

    .line 474
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$1100(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->updateFocusMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$1200(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$100(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewStopped, updateFocusMode value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 477
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$2;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$1200(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_1
    return-void
.end method
