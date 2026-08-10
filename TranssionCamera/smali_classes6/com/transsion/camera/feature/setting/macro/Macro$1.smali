.class Lcom/transsion/camera/feature/setting/macro/Macro$1;
.super Ljava/lang/Object;
.source "Macro.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/macro/Macro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/macro/Macro;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/macro/Macro;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/macro/Macro$1;->this$0:Lcom/transsion/camera/feature/setting/macro/Macro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro$1;->this$0:Lcom/transsion/camera/feature/setting/macro/Macro;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/macro/Macro;->access$000(Lcom/transsion/camera/feature/setting/macro/Macro;)Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro$1;->this$0:Lcom/transsion/camera/feature/setting/macro/Macro;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/macro/Macro;->access$000(Lcom/transsion/camera/feature/setting/macro/Macro;)Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->setPreviewed(Z)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro$1;->this$0:Lcom/transsion/camera/feature/setting/macro/Macro;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/macro/Macro;->access$100(Lcom/transsion/camera/feature/setting/macro/Macro;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/macro/Macro$1;->this$0:Lcom/transsion/camera/feature/setting/macro/Macro;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/macro/Macro;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro$1;->this$0:Lcom/transsion/camera/feature/setting/macro/Macro;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/macro/Macro;->access$000(Lcom/transsion/camera/feature/setting/macro/Macro;)Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro$1;->this$0:Lcom/transsion/camera/feature/setting/macro/Macro;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/macro/Macro;->access$000(Lcom/transsion/camera/feature/setting/macro/Macro;)Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/macro/Macro$1;->this$0:Lcom/transsion/camera/feature/setting/macro/Macro;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/macro/Macro$1;->this$0:Lcom/transsion/camera/feature/setting/macro/Macro;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/macro/Macro;->access$200(Lcom/transsion/camera/feature/setting/macro/Macro;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->refreshToUI(ZZ)V

    :cond_2
    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro$1;->this$0:Lcom/transsion/camera/feature/setting/macro/Macro;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/macro/Macro;->access$000(Lcom/transsion/camera/feature/setting/macro/Macro;)Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/macro/Macro$1;->this$0:Lcom/transsion/camera/feature/setting/macro/Macro;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/macro/Macro;->access$000(Lcom/transsion/camera/feature/setting/macro/Macro;)Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->setPreviewed(Z)V

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/macro/Macro$1;->this$0:Lcom/transsion/camera/feature/setting/macro/Macro;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/macro/Macro;->access$000(Lcom/transsion/camera/feature/setting/macro/Macro;)Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/feature/setting/macro/MacroParameterConfig;->refreshToUI(ZZ)V

    :cond_0
    return-void
.end method
