.class Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureListenerImpl;
.super Ljava/lang/Object;
.source "PreviewGestureManager.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$1;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureListenerImpl;-><init>(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)V

    return-void
.end method


# virtual methods
.method public isLongPressDragEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 243
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->access$300(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->onDoubleTap(FF)Z

    move-result p0

    return p0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->access$300(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->onDoubleTap(FF)Z

    move-result p0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->access$300(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->access$300(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->access$300(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 274
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->access$300(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->onLongPress(FF)Z

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->access$300(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->access$300(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->access$300(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->access$300(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->access$300(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->onSingleTapConfirmed(FF)Z

    move-result p0

    return p0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 263
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->access$300(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->onSingleTapUp(FF)Z

    move-result p0

    return p0
.end method

.method public onUpEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 300
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->access$300(Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;)Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager$GestureNotifier;->onUp(Landroid/view/MotionEvent;)Z

    return-void
.end method
