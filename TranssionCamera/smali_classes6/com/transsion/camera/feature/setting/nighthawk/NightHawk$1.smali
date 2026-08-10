.class Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;
.super Ljava/lang/Object;
.source "NightHawk.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 3

    .line 368
    invoke-static {}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewStarted mIsModeFeatureSupport = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->access$200(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->access$500(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->access$200(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->access$602(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;I)I

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->access$500(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->enableCallback(Z)V

    .line 372
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->access$500(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method

.method public onPreviewStopped()V
    .locals 4

    .line 356
    invoke-static {}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStopped"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->access$500(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->enableCallback(Z)V

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->access$602(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;I)I

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "off"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->access$700(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, v2, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
