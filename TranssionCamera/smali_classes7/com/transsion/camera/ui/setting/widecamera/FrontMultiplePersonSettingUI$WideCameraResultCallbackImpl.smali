.class Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$WideCameraResultCallbackImpl;
.super Ljava/lang/Object;
.source "FrontMultiplePersonSettingUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WideCameraResultCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$WideCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$1;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$WideCameraResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .locals 2

    .line 162
    invoke-static {}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataCallback mHintControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$WideCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;->access$800(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 163
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$WideCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;->access$900(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$WideCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;->access$1000(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$WideCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;->access$1100(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI$WideCameraResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;->access$400(Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_2
    :goto_0
    return-void
.end method
