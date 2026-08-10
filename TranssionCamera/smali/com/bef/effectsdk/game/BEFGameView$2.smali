.class Lcom/bef/effectsdk/game/BEFGameView$2;
.super Ljava/lang/Object;
.source "BEFGameView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bef/effectsdk/game/BEFGameView;->postMessage(JJJLjava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bef/effectsdk/game/BEFGameView;

.field final synthetic val$arg1:J

.field final synthetic val$arg2:J

.field final synthetic val$arg3:Ljava/lang/String;

.field final synthetic val$msgId:J


# direct methods
.method constructor <init>(Lcom/bef/effectsdk/game/BEFGameView;JJJLjava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/bef/effectsdk/game/BEFGameView$2;->this$0:Lcom/bef/effectsdk/game/BEFGameView;

    iput-wide p2, p0, Lcom/bef/effectsdk/game/BEFGameView$2;->val$msgId:J

    iput-wide p4, p0, Lcom/bef/effectsdk/game/BEFGameView$2;->val$arg1:J

    iput-wide p6, p0, Lcom/bef/effectsdk/game/BEFGameView$2;->val$arg2:J

    iput-object p8, p0, Lcom/bef/effectsdk/game/BEFGameView$2;->val$arg3:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/bef/effectsdk/game/BEFGameView$2;->this$0:Lcom/bef/effectsdk/game/BEFGameView;

    iget-object v0, v0, Lcom/bef/effectsdk/game/BEFGameView;->mCacheMessages:Ljava/util/Queue;

    new-instance v1, Lcom/bef/effectsdk/game/BEFGameView$2$1;

    invoke-direct {v1, p0}, Lcom/bef/effectsdk/game/BEFGameView$2$1;-><init>(Lcom/bef/effectsdk/game/BEFGameView$2;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
