.class Lcom/bef/effectsdk/game/BEFGameView$9;
.super Ljava/lang/Object;
.source "BEFGameView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bef/effectsdk/game/BEFGameView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bef/effectsdk/game/BEFGameView;

.field final synthetic val$idsParam:[I

.field final synthetic val$xsParam:[F

.field final synthetic val$ysParam:[F


# direct methods
.method constructor <init>(Lcom/bef/effectsdk/game/BEFGameView;[I[F[F)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/bef/effectsdk/game/BEFGameView$9;->this$0:Lcom/bef/effectsdk/game/BEFGameView;

    iput-object p2, p0, Lcom/bef/effectsdk/game/BEFGameView$9;->val$idsParam:[I

    iput-object p3, p0, Lcom/bef/effectsdk/game/BEFGameView$9;->val$xsParam:[F

    iput-object p4, p0, Lcom/bef/effectsdk/game/BEFGameView$9;->val$ysParam:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 508
    iget-object v0, p0, Lcom/bef/effectsdk/game/BEFGameView$9;->this$0:Lcom/bef/effectsdk/game/BEFGameView;

    iget-wide v0, v0, Lcom/bef/effectsdk/game/BEFGameView;->mHandle:J

    iget-object v2, p0, Lcom/bef/effectsdk/game/BEFGameView$9;->val$idsParam:[I

    iget-object v3, p0, Lcom/bef/effectsdk/game/BEFGameView$9;->val$xsParam:[F

    iget-object p0, p0, Lcom/bef/effectsdk/game/BEFGameView$9;->val$ysParam:[F

    invoke-static {v0, v1, v2, v3, p0}, Lcom/bef/effectsdk/game/NativeInterface;->touchesEnd(J[I[F[F)I

    return-void
.end method
