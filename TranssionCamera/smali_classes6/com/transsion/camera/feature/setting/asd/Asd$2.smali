.class Lcom/transsion/camera/feature/setting/asd/Asd$2;
.super Ljava/lang/Object;
.source "Asd.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/asd/Asd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/asd/Asd;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/asd/Asd;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$2;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$2;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$100(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$2;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$100(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->updatePreviewState(Z)V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$2;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$1000(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$2;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$2;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$100(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$2;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$100(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->updatePreviewState(Z)V

    .line 396
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$2;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$100(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    :cond_0
    return-void
.end method
