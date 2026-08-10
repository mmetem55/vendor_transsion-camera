.class Lcom/transsion/camera/ui/setting/focus/FocusUI$FocusResultCallbackImpl;
.super Ljava/lang/Object;
.source "FocusUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/focus/FocusUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusResultCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$FocusResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;Lcom/transsion/camera/ui/setting/focus/FocusUI$1;)V
    .locals 0

    .line 628
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI$FocusResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .locals 3

    .line 631
    invoke-static {}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FocusResultCallback data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "focus_ui_active"

    .line 632
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$FocusResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$502(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)Z

    return-void

    .line 636
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$FocusResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->access$600(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;

    move-result-object p0

    const/16 p2, 0x64

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
