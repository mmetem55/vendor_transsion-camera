.class Lcom/transsion/camera/app/common/mode/ModeManager$2;
.super Ljava/lang/Object;
.source "ModeManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;


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

    .line 437
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$2;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public supportSat()Z
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$2;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2000(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$2;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    .line 441
    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$500(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$2;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2000(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$2;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    .line 445
    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2100(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$2;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$2200(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result v2

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$2;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->access$500(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p0

    .line 444
    invoke-interface {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
