.class Lcom/transsion/camera/feature/setting/magicsky/MagicSky$1;
.super Ljava/lang/Object;
.source "MagicSky.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/magicsky/MagicSky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/magicsky/MagicSky;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/magicsky/MagicSky;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky$1;->this$0:Lcom/transsion/camera/feature/setting/magicsky/MagicSky;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky$1;->this$0:Lcom/transsion/camera/feature/setting/magicsky/MagicSky;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->access$000(Lcom/transsion/camera/feature/setting/magicsky/MagicSky;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSky$1;->this$0:Lcom/transsion/camera/feature/setting/magicsky/MagicSky;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->access$000(Lcom/transsion/camera/feature/setting/magicsky/MagicSky;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method

.method public onPreviewStopped()V
    .locals 0

    return-void
.end method
