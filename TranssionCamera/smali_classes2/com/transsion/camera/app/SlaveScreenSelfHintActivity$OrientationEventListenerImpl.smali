.class Lcom/transsion/camera/app/SlaveScreenSelfHintActivity$OrientationEventListenerImpl;
.super Landroid/view/OrientationEventListener;
.source "SlaveScreenSelfHintActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationEventListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;Landroid/content/Context;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;

    .line 193
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->access$400(Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->access$500(II)I

    move-result p1

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->access$400(Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->access$402(Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;I)I

    .line 208
    invoke-static {}, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOrientationChanged, mOrientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;

    invoke-static {v1}, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->access$400(Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->access$200(Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;)Lcom/transsion/camera/app/common/manager/AbstractVIPSelfieHintUIManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 210
    iget-object p1, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->access$200(Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;)Lcom/transsion/camera/app/common/manager/AbstractVIPSelfieHintUIManager;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->access$100(Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;)Z

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;->access$400(Lcom/transsion/camera/app/SlaveScreenSelfHintActivity;)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/manager/AbstractVIPSelfieHintUIManager;->updateVIPSelfHintLayout(ZI)V

    :cond_1
    return-void
.end method
