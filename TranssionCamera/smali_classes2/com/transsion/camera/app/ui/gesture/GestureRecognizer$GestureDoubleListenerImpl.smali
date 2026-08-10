.class Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureDoubleListenerImpl;
.super Ljava/lang/Object;
.source "GestureRecognizer.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureDoubleListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureDoubleListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$1;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureDoubleListenerImpl;-><init>(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureDoubleListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->access$400(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$GestureDoubleListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->access$400(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
