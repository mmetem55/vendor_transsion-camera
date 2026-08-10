.class Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$5;
.super Ljava/lang/Object;
.source "BurstPMKMode.java"

# interfaces
.implements Lcom/transsion/camera/feature/common/I3AController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$5;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private aeAfUnLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 169
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public lock3A(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$5;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$2100(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$2002(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    .line 176
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$5;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$2000(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$5;->aeAfUnLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$5;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$2200(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;Z)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$5;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$2000(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$5;->aeAfUnLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$5;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->access$2300(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;Z)V

    :cond_1
    :goto_0
    return-void
.end method
