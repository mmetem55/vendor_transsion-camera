.class final Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitListenerWrapper;
.super Ljava/lang/Object;
.source "AODExitUIManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IAODExitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/AODExitUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExitListenerWrapper"
.end annotation


# instance fields
.field private final mDelegate:Lcom/transsion/camera/app/common/IAppUIListener$IAODExitListener;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/AODExitUIManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/AODExitUIManager;Lcom/transsion/camera/app/common/IAppUIListener$IAODExitListener;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/manager/AODExitUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitListenerWrapper;->mDelegate:Lcom/transsion/camera/app/common/IAppUIListener$IAODExitListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/AODExitUIManager;Lcom/transsion/camera/app/common/IAppUIListener$IAODExitListener;Lcom/transsion/camera/app/ui/manager/AODExitUIManager$1;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitListenerWrapper;-><init>(Lcom/transsion/camera/app/ui/manager/AODExitUIManager;Lcom/transsion/camera/app/common/IAppUIListener$IAODExitListener;)V

    return-void
.end method


# virtual methods
.method public onExit()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitListenerWrapper;->this$0:Lcom/transsion/camera/app/ui/manager/AODExitUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/AODExitUIManager;->access$300(Lcom/transsion/camera/app/ui/manager/AODExitUIManager;)Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;->access$400(Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;)V

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitListenerWrapper;->mDelegate:Lcom/transsion/camera/app/common/IAppUIListener$IAODExitListener;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IAODExitListener;->onExit()V

    return-void
.end method
