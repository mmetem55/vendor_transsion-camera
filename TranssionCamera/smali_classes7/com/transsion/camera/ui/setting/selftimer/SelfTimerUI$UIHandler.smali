.class Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;
.super Landroid/os/Handler;
.source "SelfTimerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$1;)V
    .locals 0

    .line 415
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 419
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->access$500(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 434
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 435
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->access$500(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    goto :goto_0

    .line 428
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->access$400(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V

    goto :goto_0

    .line 424
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {p1, v1, v1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->access$200(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;ZZ)V

    .line 425
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    const-string p1, "self_timer_idle"

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->access$302(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 421
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->access$100(Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;)V

    :cond_4
    :goto_0
    return-void
.end method
