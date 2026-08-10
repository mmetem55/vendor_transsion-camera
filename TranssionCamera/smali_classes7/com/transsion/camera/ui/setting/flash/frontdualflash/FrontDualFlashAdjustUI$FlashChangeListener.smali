.class Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FlashChangeListener;
.super Ljava/lang/Object;
.source "FrontDualFlashAdjustUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlashChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FlashChangeListener;->this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$1;)V
    .locals 0

    .line 467
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FlashChangeListener;-><init>(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .locals 1

    .line 470
    invoke-static {}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "Luminance adjust view state has been changed."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 471
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FlashChangeListener;->this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->access$1900(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 476
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FlashChangeListener;->this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->access$2000(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 479
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI$FlashChangeListener;->this$0:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;->access$2100(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
