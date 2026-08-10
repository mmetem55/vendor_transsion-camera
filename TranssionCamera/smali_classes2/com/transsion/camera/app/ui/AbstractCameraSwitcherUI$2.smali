.class Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$2;
.super Ljava/lang/Object;
.source "AbstractCameraSwitcherUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IModuleTransfer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransfer(Z)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->access$300(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->access$302(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;Z)Z

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->access$200(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)V

    :cond_0
    return-void
.end method
