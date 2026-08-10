.class Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;
.super Ljava/lang/Object;
.source "MagicSkyScannerUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyStatusChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;)V
    .locals 0

    .line 372
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "key_magic_sky_detection"

    .line 375
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 376
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$1600(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result p1

    if-lez p1, :cond_0

    .line 377
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$1610(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    return-void

    .line 380
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$1600(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result p1

    if-nez p1, :cond_1

    .line 381
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$1702(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;Z)Z

    goto :goto_0

    .line 383
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$1702(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;Z)Z

    .line 385
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$1700(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)Z

    move-result p1

    const/4 p2, 0x2

    const/4 v0, 0x3

    if-eqz p1, :cond_2

    .line 386
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$1800(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 387
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$1800(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 389
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$1800(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 390
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$1800(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 392
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    const/16 p1, 0xa

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$1602(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;I)I

    :cond_3
    return-void
.end method

.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 372
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$MyStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
