.class Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager$1;
.super Ljava/lang/Object;
.source "CameraSwitcherUIManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onGoogleLensVisibilityChanged(Z)V
    .locals 3

    .line 123
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGoogleLensVisibilityChanged visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;)Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/ICameraSwitcherUI;->updateLayoutParams(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 103
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 106
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged] key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "key_vip_selfie_visible"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "key_google_lens_visible"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 117
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, " ignore the unneeded Key directly"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "google_lens_show"

    .line 110
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 111
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager$1;->onGoogleLensVisibilityChanged(Z)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;)Lcom/transsion/camera/app/ui/ICameraSwitcherUI;

    move-result-object p0

    const-string p1, "vip_selfie_show"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/ICameraSwitcherUI;->updateLayoutParams(Z)V

    :goto_0
    return-void
.end method
