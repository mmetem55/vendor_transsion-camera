.class Lcom/transsion/camera/feature/common/BaseUI$1;
.super Ljava/lang/Object;
.source "BaseUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/common/BaseUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/common/BaseUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/common/BaseUI;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseUI$1;->this$0:Lcom/transsion/camera/feature/common/BaseUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI$1;->this$0:Lcom/transsion/camera/feature/common/BaseUI;

    iget-object v1, v0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 59
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "UpdateRunnable mRootView is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 62
    :cond_0
    invoke-static {v0}, Lcom/transsion/camera/feature/common/BaseUI;->access$100(Lcom/transsion/camera/feature/common/BaseUI;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI$1;->this$0:Lcom/transsion/camera/feature/common/BaseUI;

    iget-object v0, v0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI$1;->this$0:Lcom/transsion/camera/feature/common/BaseUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->updateUI()V

    :cond_1
    return-void
.end method
