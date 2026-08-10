.class Lcom/bef/effectsdk/view/BEFView$2$1;
.super Ljava/lang/Object;
.source "BEFView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bef/effectsdk/view/BEFView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bef/effectsdk/view/BEFView$2;


# direct methods
.method constructor <init>(Lcom/bef/effectsdk/view/BEFView$2;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/bef/effectsdk/view/BEFView$2$1;->this$1:Lcom/bef/effectsdk/view/BEFView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 485
    iget-object p0, p0, Lcom/bef/effectsdk/view/BEFView$2$1;->this$1:Lcom/bef/effectsdk/view/BEFView$2;

    iget-object v0, p0, Lcom/bef/effectsdk/view/BEFView$2;->this$0:Lcom/bef/effectsdk/view/BEFView;

    iget-wide v1, v0, Lcom/bef/effectsdk/view/BEFView;->mHandle:J

    iget-wide v3, p0, Lcom/bef/effectsdk/view/BEFView$2;->val$msgId:J

    iget-wide v5, p0, Lcom/bef/effectsdk/view/BEFView$2;->val$arg1:J

    iget-wide v7, p0, Lcom/bef/effectsdk/view/BEFView$2;->val$arg2:J

    iget-object v9, p0, Lcom/bef/effectsdk/view/BEFView$2;->val$arg3:Ljava/lang/String;

    invoke-static/range {v1 .. v9}, Lcom/bef/effectsdk/view/ViewControllerInterface;->postMessage(JJJJLjava/lang/String;)I

    return-void
.end method
