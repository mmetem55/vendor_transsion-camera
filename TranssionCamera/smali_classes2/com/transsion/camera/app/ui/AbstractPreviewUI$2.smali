.class Lcom/transsion/camera/app/ui/AbstractPreviewUI$2;
.super Ljava/lang/Object;
.source "AbstractPreviewUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractPreviewUI;->initAuxViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 304
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$200(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 307
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$300(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    move-result-object p1

    const/16 v0, 0x68

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 308
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->access$300(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
