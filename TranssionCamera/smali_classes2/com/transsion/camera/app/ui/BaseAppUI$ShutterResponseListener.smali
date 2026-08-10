.class Lcom/transsion/camera/app/ui/BaseAppUI$ShutterResponseListener;
.super Ljava/lang/Object;
.source "BaseAppUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShutterResponseListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .locals 0

    .line 826
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$ShutterResponseListener;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutterCancel()V
    .locals 0

    return-void
.end method

.method public onShutterClick(I)Z
    .locals 1

    .line 830
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$ShutterResponseListener;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->isModeTabScrolling()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 833
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$ShutterResponseListener;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    return v0
.end method

.method public onShutterDown()V
    .locals 0

    return-void
.end method

.method public onShutterLongClick(I)Z
    .locals 1

    .line 839
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$ShutterResponseListener;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->isModeTabScrolling()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 842
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$ShutterResponseListener;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    return v0
.end method

.method public onShutterUp(I)V
    .locals 0

    return-void
.end method
