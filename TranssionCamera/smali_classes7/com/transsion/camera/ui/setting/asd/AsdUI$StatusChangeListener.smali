.class Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;
.super Ljava/lang/Object;
.source "AsdUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/asd/AsdUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/asd/AsdUI;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/asd/AsdUI;Lcom/transsion/camera/ui/setting/asd/AsdUI$1;)V
    .locals 0

    .line 454
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/asd/AsdUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 454
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_fake_asd_camera_status"

    .line 457
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->access$602(Lcom/transsion/camera/ui/setting/asd/AsdUI;I)I

    goto :goto_0

    :cond_0
    const-string v0, "key_macro_status"

    .line 459
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 460
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string p1, "on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 467
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->access$702(Lcom/transsion/camera/ui/setting/asd/AsdUI;Z)Z

    goto :goto_0

    .line 462
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->access$702(Lcom/transsion/camera/ui/setting/asd/AsdUI;Z)Z

    .line 463
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->access$500(Lcom/transsion/camera/ui/setting/asd/AsdUI;)Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;

    move-result-object p1

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 464
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/asd/AsdUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->access$800(Lcom/transsion/camera/ui/setting/asd/AsdUI;)V

    :cond_3
    :goto_0
    return-void
.end method
