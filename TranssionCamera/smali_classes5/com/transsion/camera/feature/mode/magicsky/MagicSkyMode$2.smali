.class Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$2;
.super Ljava/lang/Object;
.source "MagicSkyMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$2;->this$0:Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyCameraOperateAction(I)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$2;->this$0:Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->access$100(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;)Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    move-result-object v0

    if-nez v0, :cond_0

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$2;->this$0:Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->access$200(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "magicSkyPanelUI is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 269
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$2;->this$0:Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->access$100(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;)Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->notifyCameraOperateAction(I)V

    return-void
.end method
