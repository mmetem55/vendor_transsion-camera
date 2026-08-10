.class Lcom/transsion/camera/app/common/mode/ModeManager$3;
.super Ljava/lang/Object;
.source "ModeManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IAeAfLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/ModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/ModeManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$3;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$3;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2000(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 469
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 471
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$3;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2000(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->currentLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p0

    return-object p0
.end method

.method public performAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;Z)V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$3;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2000(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 463
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$3;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2000(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->performAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;Z)V

    return-void
.end method

.method public supportedLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$3;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2000(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 453
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 455
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$3;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2000(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->supportedLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p0

    return-object p0
.end method
