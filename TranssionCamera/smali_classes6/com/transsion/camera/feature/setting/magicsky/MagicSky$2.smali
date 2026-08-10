.class Lcom/transsion/camera/feature/setting/magicsky/MagicSky$2;
.super Ljava/lang/Object;
.source "MagicSky.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/magicsky/MagicSky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/magicsky/MagicSky;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/magicsky/MagicSky;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky$2;->this$0:Lcom/transsion/camera/feature/setting/magicsky/MagicSky;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "key_magic_sky_detection"

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky$2;->this$0:Lcom/transsion/camera/feature/setting/magicsky/MagicSky;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->access$100(Lcom/transsion/camera/feature/setting/magicsky/MagicSky;)Lcom/transsion/camera/feature/setting/magicsky/MagicSkyParameterConfigure;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/magicsky/MagicSkyParameterConfigure;->setDetectResult(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/magicsky/MagicSky$2;->onStatusChanged(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
