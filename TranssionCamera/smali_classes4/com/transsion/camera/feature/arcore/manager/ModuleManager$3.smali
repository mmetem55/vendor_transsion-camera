.class Lcom/transsion/camera/feature/arcore/manager/ModuleManager$3;
.super Ljava/lang/Object;
.source "ModuleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->switchSoundEffect(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

.field final synthetic val$soundEffectId:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;I)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$3;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    iput p2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$3;->val$soundEffectId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$3;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$400(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$3;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$500(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$3;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$600(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;

    move-result-object v0

    iget p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$3;->val$soundEffectId:I

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;->switchSoundEffect(I)V

    :cond_1
    :goto_0
    return-void
.end method
