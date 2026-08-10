.class Lcom/transsion/camera/app/SlaveScreenActivity$OrientationEventListenerImpl;
.super Landroid/view/OrientationEventListener;
.source "SlaveScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/SlaveScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationEventListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/SlaveScreenActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/SlaveScreenActivity;Landroid/content/Context;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/transsion/camera/app/SlaveScreenActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    .line 287
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$600(Lcom/transsion/camera/app/SlaveScreenActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$700(II)I

    move-result p1

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$600(Lcom/transsion/camera/app/SlaveScreenActivity;)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/app/SlaveScreenActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$602(Lcom/transsion/camera/app/SlaveScreenActivity;I)I

    .line 302
    iget-object p1, p0, Lcom/transsion/camera/app/SlaveScreenActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$500(Lcom/transsion/camera/app/SlaveScreenActivity;)Lcom/transsion/camera/app/ui/SlaveScreenAppUI;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/SlaveScreenActivity$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/app/SlaveScreenActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/SlaveScreenActivity;->access$600(Lcom/transsion/camera/app/SlaveScreenActivity;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/SlaveScreenAppUI;->onOrientationChanged(I)V

    :cond_1
    return-void
.end method
