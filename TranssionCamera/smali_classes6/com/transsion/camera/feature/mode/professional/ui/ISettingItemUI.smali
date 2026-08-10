.class public interface abstract Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;
.super Ljava/lang/Object;
.source "ISettingItemUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IRootUI;
.implements Lcom/transsion/camera/app/common/ui/setting/ISettingUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;
    }
.end annotation


# virtual methods
.method public abstract createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic getKey()Ljava/lang/String;
.end method

.method public abstract synthetic getKeys()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic getKeys(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
.end method

.method public abstract synthetic getValue()Ljava/lang/String;
.end method

.method public abstract synthetic notifyCameraOperateAction(I)V
.end method

.method public abstract onValueChanged(I)V
.end method

.method public abstract synthetic setActionSound(Lcom/transsion/camera/utils/sound/IActionSound;)V
.end method

.method public abstract synthetic setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
.end method

.method public abstract synthetic setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
.end method

.method public abstract synthetic setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
.end method

.method public abstract synthetic setDeviceSettingData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract synthetic setEnable(Z)V
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public abstract setGraduationView(Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;)V
.end method

.method public abstract synthetic setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V
.end method

.method public abstract setIsEnable(Z)V
.end method

.method public abstract setItemClickCallBack(Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;)V
.end method

.method public abstract setPopupOptionsControl(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;)V
.end method

.method public abstract setSelected(Z)V
.end method

.method public abstract synthetic setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
.end method

.method public abstract synthetic setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
.end method

.method public abstract synthetic setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
.end method

.method public abstract setupEntryView()V
.end method

.method public abstract synthetic unInit()V
.end method

.method public abstract updateEntryView(Ljava/lang/String;Z)V
.end method

.method public abstract updateValue(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;)V
.end method
