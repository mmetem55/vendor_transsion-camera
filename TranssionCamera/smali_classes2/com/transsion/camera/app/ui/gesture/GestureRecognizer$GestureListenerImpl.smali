.class Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$1;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;-><init>(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->access$500(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->access$400(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->access$500(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->access$400(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->access$400(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->access$400(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->access$400(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->access$602(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 116
    iget-object p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->access$802(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;F)F

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->access$702(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;F)F

    .line 117
    iget-object p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->access$400(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$DragMoveListener;->isLongPressDragEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->access$900(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->access$1000(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;I)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->access$400(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->access$400(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->access$400(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->access$500(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->access$400(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    :goto_0
    return p0
.end method
