.class Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$1;
.super Ljava/lang/Object;
.source "ClickZoomSettingUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomClick(Z)V
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->access$100(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Z)V

    return-void
.end method

.method public onZoomScaleEnd(Z)V
    .locals 0

    return-void
.end method

.method public onZoomScaleStart(Z)V
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->access$100(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Z)V

    return-void
.end method

.method public onZoomScaling(Z)V
    .locals 0

    return-void
.end method
