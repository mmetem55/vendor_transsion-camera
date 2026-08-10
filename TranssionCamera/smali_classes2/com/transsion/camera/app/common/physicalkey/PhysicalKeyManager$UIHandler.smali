.class Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;
.super Landroid/os/Handler;
.source "PhysicalKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)V
    .locals 1

    .line 265
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 266
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;

    if-nez p0, :cond_0

    .line 273
    invoke-static {}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage physicalKeyManager is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 276
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 278
    :cond_1
    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->access$100(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterKeyEventCallback;->onShutterClick(I)V

    :goto_0
    return-void
.end method
