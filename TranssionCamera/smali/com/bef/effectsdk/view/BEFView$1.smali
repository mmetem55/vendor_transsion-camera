.class Lcom/bef/effectsdk/view/BEFView$1;
.super Ljava/lang/Object;
.source "BEFView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bef/effectsdk/view/BEFView;->setStickerPath(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bef/effectsdk/view/BEFView;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bef/effectsdk/view/BEFView;Ljava/lang/String;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/bef/effectsdk/view/BEFView$1;->this$0:Lcom/bef/effectsdk/view/BEFView;

    iput-object p2, p0, Lcom/bef/effectsdk/view/BEFView$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/bef/effectsdk/view/BEFView$1;->this$0:Lcom/bef/effectsdk/view/BEFView;

    invoke-virtual {v0}, Lcom/bef/effectsdk/view/BEFView;->getNativeInited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/bef/effectsdk/view/BEFView$1;->this$0:Lcom/bef/effectsdk/view/BEFView;

    iget-object p0, p0, Lcom/bef/effectsdk/view/BEFView$1;->val$path:Ljava/lang/String;

    iput-object p0, v0, Lcom/bef/effectsdk/view/BEFView;->mAdBundlePath:Ljava/lang/String;

    .line 453
    iget-wide v0, v0, Lcom/bef/effectsdk/view/BEFView;->mHandle:J

    invoke-static {v0, v1, p0}, Lcom/bef/effectsdk/view/ViewControllerInterface;->setStickerPath(JLjava/lang/String;)I

    :cond_0
    return-void
.end method
