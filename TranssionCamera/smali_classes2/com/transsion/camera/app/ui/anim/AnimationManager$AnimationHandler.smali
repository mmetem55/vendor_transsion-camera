.class Lcom/transsion/camera/app/ui/anim/AnimationManager$AnimationHandler;
.super Landroid/os/Handler;
.source "AnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/anim/AnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationHandler"
.end annotation


# instance fields
.field private final managerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/app/ui/anim/AnimationManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V
    .locals 1

    .line 150
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 151
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$AnimationHandler;->managerWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$AnimationHandler;->managerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;

    if-nez p0, :cond_0

    return-void

    .line 160
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 166
    :cond_1
    invoke-static {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->access$200(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    goto :goto_0

    .line 162
    :cond_2
    invoke-static {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->access$300(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V

    :goto_0
    return-void
.end method
