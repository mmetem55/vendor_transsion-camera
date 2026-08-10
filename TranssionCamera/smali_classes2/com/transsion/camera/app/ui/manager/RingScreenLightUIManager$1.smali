.class Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager$1;
.super Ljava/lang/Object;
.source "RingScreenLightUIManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IModuleTransfer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;


# direct methods
.method public static synthetic $r8$lambda$b7y9MKdAdNYii31eZBwSIH0eE1Q(Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager$1;->lambda$onTransfer$0()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onTransfer$0()V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->access$200(Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;)V

    return-void
.end method


# virtual methods
.method public onTransfer(Z)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->access$000(Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->access$002(Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;Z)Z

    .line 56
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
