.class Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$9;
.super Ljava/lang/Object;
.source "MagicSkyPanelUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$9;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutterClick()V
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$9;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$700(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Lcom/transsion/camera/app/ui/mode/magicsky/IShutterClickCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/IShutterClickCallback;->onMiniShutterClick()V

    return-void
.end method

.method public onShutterDown()V
    .locals 0

    return-void
.end method

.method public onShutterLongClick()V
    .locals 0

    .line 486
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$9;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$700(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Lcom/transsion/camera/app/ui/mode/magicsky/IShutterClickCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/IShutterClickCallback;->onMiniShutterLongClick()V

    return-void
.end method

.method public onShutterUp()V
    .locals 0

    .line 495
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$9;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->access$700(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Lcom/transsion/camera/app/ui/mode/magicsky/IShutterClickCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/IShutterClickCallback;->onMiniShutterUp()V

    return-void
.end method
