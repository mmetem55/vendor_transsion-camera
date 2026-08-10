.class Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$1;
.super Ljava/lang/Object;
.source "MagicSkyMode.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/magicsky/IShutterClickCallback;


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

    .line 167
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$1;->this$0:Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMiniShutterClick()V
    .locals 1

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$1;->this$0:Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->access$000(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->triggerShutterClick(I)V

    return-void
.end method

.method public onMiniShutterLongClick()V
    .locals 1

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$1;->this$0:Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->access$000(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterKeyEventCallback;->onShutterLongClickStart(I)V

    return-void
.end method

.method public onMiniShutterUp()V
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$1;->this$0:Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->access$000(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterKeyEventCallback;->onShutterLongClickEnd()V

    return-void
.end method
