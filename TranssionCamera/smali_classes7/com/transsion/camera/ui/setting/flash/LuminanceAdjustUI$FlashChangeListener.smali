.class Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$FlashChangeListener;
.super Ljava/lang/Object;
.source "LuminanceAdjustUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlashChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$FlashChangeListener;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$1;)V
    .locals 0

    .line 544
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$FlashChangeListener;-><init>(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .locals 1

    .line 547
    invoke-static {}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->access$900()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "Luminance adjust view state has been changed."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 548
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$FlashChangeListener;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0xc

    .line 553
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const/16 p1, 0xa

    .line 556
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
