.class Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$GoogleLensDataCallbackImpl;
.super Ljava/lang/Object;
.source "GoogleLensUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoogleLensDataCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$GoogleLensDataCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$1;)V
    .locals 0

    .line 247
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$GoogleLensDataCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .locals 2

    .line 250
    instance-of p2, p1, Ljava/lang/Boolean;

    if-nez p2, :cond_0

    .line 251
    invoke-static {}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "illegal argument"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 255
    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 257
    invoke-static {}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataCallback shouldShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 261
    :goto_0
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$GoogleLensDataCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->access$200(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;)Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$MainHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$GoogleLensDataCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->access$200(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;)Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$MainHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
