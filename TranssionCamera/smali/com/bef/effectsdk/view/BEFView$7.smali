.class Lcom/bef/effectsdk/view/BEFView$7;
.super Ljava/lang/Object;
.source "BEFView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bef/effectsdk/view/BEFView;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bef/effectsdk/view/BEFView;


# direct methods
.method constructor <init>(Lcom/bef/effectsdk/view/BEFView;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/bef/effectsdk/view/BEFView$7;->this$0:Lcom/bef/effectsdk/view/BEFView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 660
    iget-object v0, p0, Lcom/bef/effectsdk/view/BEFView$7;->this$0:Lcom/bef/effectsdk/view/BEFView;

    invoke-virtual {v0}, Lcom/bef/effectsdk/view/BEFView;->getNativeInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    iget-object p0, p0, Lcom/bef/effectsdk/view/BEFView$7;->this$0:Lcom/bef/effectsdk/view/BEFView;

    invoke-static {p0}, Lcom/bef/effectsdk/view/BEFView;->access$1400(Lcom/bef/effectsdk/view/BEFView;)V

    goto :goto_0

    .line 663
    :cond_0
    iget-object p0, p0, Lcom/bef/effectsdk/view/BEFView$7;->this$0:Lcom/bef/effectsdk/view/BEFView;

    iget-wide v0, p0, Lcom/bef/effectsdk/view/BEFView;->mHandle:J

    invoke-static {v0, v1}, Lcom/bef/effectsdk/view/ViewControllerInterface;->onResume(J)V

    :goto_0
    return-void
.end method
