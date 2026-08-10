.class Lcom/transsion/camera/feature/setting/focus/Focus$1;
.super Ljava/lang/Object;
.source "Focus.java"

# interfaces
.implements Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/focus/Focus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/focus/Focus;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/focus/Focus;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$1;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusStatusUpdate(Ljava/lang/String;J)V
    .locals 0

    .line 319
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$1;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$700(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

    move-result-object p0

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
