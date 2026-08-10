.class Lcom/bef/effectsdk/view/BEFView$3;
.super Ljava/lang/Object;
.source "BEFView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bef/effectsdk/view/BEFView;->dealWithTouches(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bef/effectsdk/view/BEFView;

.field final synthetic val$idsParam:[I

.field final synthetic val$pointerCount:I

.field final synthetic val$xsParam:[F

.field final synthetic val$ysParam:[F


# direct methods
.method constructor <init>(Lcom/bef/effectsdk/view/BEFView;[I[F[FI)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/bef/effectsdk/view/BEFView$3;->this$0:Lcom/bef/effectsdk/view/BEFView;

    iput-object p2, p0, Lcom/bef/effectsdk/view/BEFView$3;->val$idsParam:[I

    iput-object p3, p0, Lcom/bef/effectsdk/view/BEFView$3;->val$xsParam:[F

    iput-object p4, p0, Lcom/bef/effectsdk/view/BEFView$3;->val$ysParam:[F

    iput p5, p0, Lcom/bef/effectsdk/view/BEFView$3;->val$pointerCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 553
    iget-object v0, p0, Lcom/bef/effectsdk/view/BEFView$3;->this$0:Lcom/bef/effectsdk/view/BEFView;

    iget-wide v1, v0, Lcom/bef/effectsdk/view/BEFView;->mHandle:J

    iget-object v3, p0, Lcom/bef/effectsdk/view/BEFView$3;->val$idsParam:[I

    iget-object v4, p0, Lcom/bef/effectsdk/view/BEFView$3;->val$xsParam:[F

    iget-object v5, p0, Lcom/bef/effectsdk/view/BEFView$3;->val$ysParam:[F

    iget v6, p0, Lcom/bef/effectsdk/view/BEFView$3;->val$pointerCount:I

    invoke-static/range {v1 .. v6}, Lcom/bef/effectsdk/view/ViewControllerInterface;->touchBeginEvent(J[I[F[FI)I

    return-void
.end method
