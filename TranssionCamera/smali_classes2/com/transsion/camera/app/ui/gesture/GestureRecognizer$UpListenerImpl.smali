.class Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$UpListenerImpl;
.super Ljava/lang/Object;
.source "GestureRecognizer.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/gesture/UpDetector$DownUpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$UpListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$1;)V
    .locals 0

    .line 176
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$UpListenerImpl;-><init>(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onUpEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$UpListenerImpl;->this$0:Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;->access$400(Lcom/transsion/camera/app/ui/gesture/GestureRecognizer;)Lcom/transsion/camera/app/ui/gesture/GestureRecognizer$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/gesture/UpDetector$DownUpListener;->onUpEvent(Landroid/view/MotionEvent;)V

    return-void
.end method
